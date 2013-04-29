# -*- coding: utf-8 -*-
#
# phys/units/unit_class.rb
#
#   Copyright (c) 2001-2013 Masahiro Tanaka <masa16.tanaka@gmail.com>
#
#   This program is free software.
#   You can distribute/modify this program under the terms of
#   the GNU General Public License version 3 or later.

module Phys

  class Unit

    class << self

      def debug
        false
      end

      def define(name,expr,v=nil)
        if !(String===name)
          raise TypeError,"unit name should be string : #{name.inspect}"
        end
        if /^(.*)-$/ =~ name
          name = $1
          if PREFIX[name]
            warn "prefix definition is overwritten: #{name}" if debug
          end
          PREFIX[name] = self.new(name,expr)
        else
          if LIST[name]
            warn "unit definition is overwritten: #{name}" if debug
          end
          if expr.kind_of?(String) && /^!/ =~ expr
            dimless = (expr == "!dimensionless")
            LIST[name] = BaseUnit.new(name,dimless,v)
          else
            LIST[name] = self.new(name,expr,v)
          end
        end
      end

      def cast(x)
        if x.kind_of?(Unit)
          x
        else
          Unit.new(x) 
        end
      end

      def word(x)
        find_unit(x) || define(x)
      end

      def parse(x)
        find_unit(x) || Parse.new.parse(x)
      end

      def find_unit(x)
        if Numeric===x
          Unit.new(x)
        elsif x=='' || x.nil?
          Unit.new(1)
        else
          x = x.to_s
          LIST[x] || PREFIX[x] || find_prefix(x) || unit_stem(x)
        end
      end

      alias [] find_unit

      def unit_stem(x)
        ( /(.{3,}(?:s|z|ch))es$/ =~ x && LIST[$1] ) ||
          ( /(.{3,})s$/ =~ x && LIST[$1] )
      end

      def find_prefix(x)
        Unit.prefix_regex =~ x
        pre,post = $1,$2
        if pre and pre and stem = (LIST[post] || unit_stem(post))
          PREFIX[pre] * stem
        end
      end

#--

      def unit_chars
        '\\s*+\\/0-9<=>()\\[\\]^{|}~\\\\'
      end

      def control_units_dat(var,skip,line)
        case line
        when /!\s*end(\w+)/
          skip.delete($1)
        when /!\s*set\s+(\w+)\s+(\w+)/
          if skip.empty?
            var[$1] ||= $2
          end
        when /!var\s+(\w+)\s+(\w+)/
          if var[$1] != $2
            skip << 'var'
          end
        when /!\s*(\w+)(?:\s+(\w+))?/
          code = $1
          param = $2
          #puts " code=#{code} param=#{param}"
          if (var[code]) ? (param && var[code]!=param) : !param
            skip << code
          end
        end
        #puts line
        #puts "skip=#{skip.inspect} var=#{var.inspect}"
      end

      def import_units(data=nil,locale=nil)
        str = ""
        locale ||= ENV['LC_ALL'] || ENV['LANG']
        if /^(\w+)\./ =~ locale
          locale = $1
        end
        var = {'locale'=>locale,'utf8'=>true}
        case ENV['UNITS_ENGLISH']
        when /US|GB/
          var['UNITS_ENGLISH'] = ENV['UNITS_ENGLISH']
        end
        skip = []

        data.each_line do |line|
          line.chomp!
          if /^!/ =~ line
            control_units_dat(var,skip,line)
            next
          end
          next if !skip.empty?

          if /([^#]*)\s*#?/ =~ line
            line = $1
          end

          if /(.*)\\$/ =~ line
            str.concat $1+" "
            next
          else
            str.concat line
          end

          if /^([^\s()\[\]{}!*|\/^#]+)\s+([^#]+)/ =~ str
            name,repr = $1,$2.strip
            Unit.define(name,repr)
          elsif !str.strip.empty?
            puts "unrecognized definition: '#{str}'" if debug
          end
          str = ""
        end

        x = PREFIX.keys.sort{|a,b|
          s = b.size-a.size
          (s==0) ? (a<=>b) : s
        }.join("|")
        @@prefix_regex = /^(#{x})(.+)$/

        if debug
          LIST.dup.each do |k,v|
            if v.kind_of? Unit
              begin
                v.use_dimension
              rescue
                puts "!! no definition: #{v.inspect} !!"
              end
            end
            p [k,v]
          end
        end
        puts "#{LIST.size} units, #{PREFIX.size} prefixes" if debug
      end

    end
  end
end
