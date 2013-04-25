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
        true #false
      end

      def define(name,expr,v=nil)
        if /^(.*)-$/ =~ name
          name = $1
          if PREFIX[name]
            warn "multiply-defined prefix: #{@name}"
          end
          PREFIX[name] = self.new(name,expr)
        else
          if LIST[name]
            warn "multiply-defined unit: #{@name}"
          end
          if expr.kind_of?(String) && /^!/ =~ expr
            dimless = (expr == "!dimensionless")
            LIST[name] = BaseUnit.new(name,dimless,v)
          else
            LIST[name] = self.new(name,expr)
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

      def find_unit(x)
        unit_stem(x) || PREFIX[x] || find_prefix(x)
      end

      def find_prefix(x)
        Unit.prefix_regex =~ x
        pfx,sfx = $1,$2
        if pfx and sfx and stem = unit_stem(sfx)
          PREFIX[pfx] * stem
        end
      end

      alias [] find_unit

      def unit_stem(x)
        LIST[x] || 
          ( /(.*(?:s|z|ch))es$/ =~ x && LIST[$1] ) ||
          ( /(.*)s$/ =~ x && LIST[$1] )
      end

      def word(x)
        find_unit(x) || define(x)
      end

      def parse(str)
        find_unit(str) || Parse.new.parse(str)
      end

#--

      def import_units(data=nil,locale=nil)
        str = ""
        locale = locale || ENV['LOCALE']
        data = self.units_dat if data.nil?
        skip = false

        data.each_line do |line|
          line.chomp!

          if /^!(end)?locale(?: (\S+))?/ =~ line
            ed, lc = $1, $2
            if ed.nil? && /^#{lc}/ !~ locale
              skip = true
            else
              skip = false
            end
            next
          end

          next if skip

          if /([^#]*)\s*#?/ =~ line
            line = $1
          end
          if /(.*)\\$/ =~ line
            str.concat $1+" "
            next
          else
            str.concat line
          end

          if /^([A-Za-z_0-9À-ÿ%$"'-]+)\s+([^#]+)/ =~ str #"
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
            p [k,v]
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
