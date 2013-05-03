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

      # @visibility private
      def debug
        false
      end

      # Define New Unit.  Expression is not parsed in this method.
      # @param [String] name Name of this unit.
      # @param [String] expr Expression.
      def define(name,expr)
        if !(String===name)
          raise TypeError,"unit name should be string : #{name.inspect}"
        end
        if /^(.*)-$/ =~ name
          name = $1
          if PREFIX[name]
            warn "prefix definition is overwritten: #{name}" if debug
          end
          PREFIX[name] = self.new(expr,name)
        else
          if LIST[name]
            warn "unit definition is overwritten: #{name}" if debug
          end
          if expr.kind_of?(String) && /^!/ =~ expr
            dimless = (expr == "!dimensionless")
            LIST[name] = BaseUnit.new(name,dimless)
          else
            LIST[name] = self.new(expr,name)
          end
        end
      end


      # Force argument to be Phys::Unit.
      # @return [Phys::Unit]
      def cast(x)
        if x.kind_of?(Unit)
          x
        else
          Unit.new(x)
        end
      end

      # Used in Parser.
      # @visibility private
      def word(x)
        find_unit(x) or raise UnitError, "Undefined unit: #{x.inspect}"
      end

      # Searches a registered unit and then Parse as a unit string
      # if not registered.
      # @return [Phys::Unit]
      def parse(x)
        find_unit(x) || Unit.cast(Parse.new.parse(x))
      end
      alias [] parse

      # Searches a registered unit.
      # @return [Phys::Unit, NilClass]
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

      # @visibility private
      def unit_stem(x)
        ( /(.{2,}(?:s|z|ch))es$/ =~ x && LIST[$1] ) ||
          ( /(.{2,})s$/ =~ x && LIST[$1] )
      end

      # @visibility private
      def find_prefix(x)
        Unit.prefix_regex =~ x
        pre,post = $1,$2
        if pre and pre and stem = (LIST[post] || unit_stem(post))
          PREFIX[pre] * stem
        end
      end

#--

      # @visibility private
      def unit_exclude_chars
        '\\s*+\\/<=>()\\[\\]^{|}~\\\\'
      end

      # @visibility private
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

      # Import Units.dat from text.
      # @param [String] data Text string of Units.dat.
      # @param [String] locale (optional) Set "en_GB" for UK units.
      def import_units(data,locale=nil)
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
