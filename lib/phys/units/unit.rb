# -*- coding: utf-8 -*-

module Phys
  LIST = {}
  PREFIX = {}

  class Unit

    def self.debug
      true #false
    end

    def initialize(arg,expr=nil,val=nil)
      case arg
      when Numeric
        @factor = arg
        alloc_dim
      when Phys::Unit
        replace(arg)
      when String
        @name = arg
        if /^(.*)-$/ =~ @name
          @name = $1
          if PREFIX[@name]
            warn "multiply-defined prefix: #{@name}"
          else
            PREFIX[@name] = self
          end
          @expr = expr
        else
          if LIST[@name]
            warn "multiply-defined unit: #{@name}"
          else
            LIST[@name] = self
          end
          if expr.kind_of? Phys::Unit
            replace(expr)
          # base unit
          elsif /^!/ =~ expr
            @base = true
            @factor = 1
            alloc_dim({@name=>1})
            if expr == "!dimensionless"
              @dimensionless = true
              if val
                @dimension_value = val
              else
                @dimension_value = 1
              end
            end
          else
            @expr = expr
          end
        end
      else
        raise TypeError "invalid argument"
      end
    end

    def use_dimension
      return if @base
      return if @dim && @factor
      if @expr && @dim.nil?
        puts "unit='#{@name}', parsing '#{@expr}'..." if Unit.debug
        unit = Parse.new.parse(@expr)
        #if unit.parse_failed?
        #  raise "parse error"
        #end
        case unit
        when Unit
          @dim = unit.dim
          @factor = unit.factor
          if @dim.nil? || @factor.nil?
            raise "parse error : #{unit.inspect}"
          end
        when Numeric
          @factor = unit
          alloc_dim
        else
          raise "parse error : #{self.inspect}"
        end
      else
        raise "undefined unit?: #{self.inspect}"
      end
    end

    def inspect
      a = [Utils.num_inspect(@factor), @dim.inspect]
      a.push "@name="+@name.inspect if @name
      a.push "@expr="+@expr.inspect if @expr
      a.push "@ofs="+@offset.inspect if @offset
      a.push "@base=true" if @base
      a.push "@dimensionless=true" if @dimensionless
      if @dimension_value && @dimension_value!=1
        a.push "@dimension_value="+@dimension_value.inspect
      end
      s = a.join(",")
      "#<#{self.class} #{s}>"
    end

    def replace(x)
      @name = x.name.dup if x.name
      @factor = x.factor
      alloc_dim x.dim
      if x.base
        @base = true
        @dimensionless = x.dimensionless
        @dimension_value = x.dimension_value
      end
    end

    def alloc_dim(hash=nil)
      case hash
      when Hash
        @dim = hash.dup
      else
        @dim = {}
      end
      @dim.default = 0
    end

    def dim
      use_dimension
      @dim
    end

    def factor
      use_dimension
      @factor
    end

    #attr_reader   :dim
    attr_accessor :name
    #attr_accessor :factor
    attr_reader   :base
    attr_reader   :dimensionless
    attr_reader   :dimension_value

    alias dimension dim

    def dup
      Unit.new(self)
    end

    def get_factor
      use_dimension
      r = @factor
      @dim.each do |k,d|
        if d != 0
          u = LIST[k]
          if u.dimensionless?
            r *= u.dimension_value**d
          end
        end
      end
      #p [:get_factor, @factor, @dim, r]
      r
    end

    def dimensionless_deleted
      if @base
        if @dimensionless
          {}
        else
          @dim.dup
        end
      else
        use_dimension
        hash = @dim.dup
        hash.delete_if{|k,v| LIST[k].dimensionless?}
      end
    end

    def dimensionless?
      if @base
        @dimensionless
      else
        use_dimension
        @dim.each_key.all?{|k| LIST[k].dimensionless?}
      end
    end

    def same_dimension?(x)
      dimensionless_deleted == x.dimensionless_deleted
    end
    alias same_dim? same_dimension?

    def assert_dimensionless
      if !dimensionless?
        @dim.each{|k,v| p [k,LIST[k],LIST[k].dimensionless?]}
        raise "#{self.inspect} : not dimensionless"
      end
    end

    def assert_same_dimension(x)
      if !same_dimension?(x)
        raise "Different dimension: #{self.inspect} and #{x.inspect}"
      end
    end

    def convert(x,unit)
      assert_same_dimension(unit)
      y = unit.convert_to_base(x)
      convert_from_base(y)
    end

    def convert_to_base(x)
      x * get_factor
    end

    def convert_from_base(x)
      x / get_factor
    end

    def convert_to_numeric(x)
      assert_dimensionless
      x * get_factor
    end

    def to_num
      assert_dimensionless
      get_factor
    end

    def convert_to_float(x)
      convert_to_numeric(x).to_f
    end

#--

    def +(x)
      dup.add!(x)
    end

    def add!(x)
      if !x.kind_of?(Unit)
        x = Unit.new(x) 
      else
        assert_same_dimension(x)
      end
      @factor += x.factor
      self
    end

    def -(x)
      dup.sbt!(x)
    end

    def sbt!(x)
      if !x.kind_of?(Unit)
        x = Unit.new(x) 
      else
        assert_same_dimension(x)
      end
      @factor -= x.factor
      self
    end

    def -@
      dup.neg!
    end

    def neg!
      @factor = -@factor
      self
    end

    def *(x)
      dup.mul!(x)
    end

    def mul!(x)
      use_dimension
      x = Unit.new(x) if !x.kind_of?(Unit)
      x.dim.each{|k,v| @dim[k] += v }
      @dim.delete_if{|k,v| v == 0 }
      @factor *= x.factor
      self
    end

    def /(x)
      dup.div!(x)
    end

    def div!(x)
      use_dimension
      x = Unit.new(x) if !x.kind_of?(Unit)
      x.dim.each{|k,v| @dim[k] -= v }
      if Integer===@factor && Integer===x.factor && x.factor.abs!=1
        @factor = Rational(@factor,x.factor)
      else
        @factor /= x.factor
      end
      self
    end

    def self.rdiv(x,y)
      self.new(x).rdiv!(y)
    end

    def rdiv!(x)
      use_dimension
      x = Unit.new(x) if !x.kind_of?(Unit)
      x.dim.each{|k,v| @dim[k] += v }
      @factor = Rational(@factor,x.factor)
      self
    end

    def self.inv(x)
      self.new(x).inv!
    end

    def inv!
      use_dimension
      @dim.each{|k,v| @dim[k] = -v }
      @factor = 1/@factor
      self
    end

    def **(x)
      dup.pow!(x)
    end

    def pow!(x)
      use_dimension
      x = Utils.as_numeric(x)
      @dim.each{|k,v| @dim[k] *= x }
      @factor **= x
      self
    end

    def self.func(fn, x)
      fn = 'log' if fn == 'ln'
      z = Unit.new(x)
      Unit.new( Math.send(fn,z.to_num) )
    end

    def coerce(x)
      [Unit.new(x), self]
    end

    def self.import_units(data=nil,locale=nil)
      str = ""
      locale = locale || ENV['LOCALE']
      data = self.units_dat if data.nil?
      skip = false

      if true
        LIST["pi"] = Unit.new("pi","!dimensionless",Math::PI)
      end

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
          Unit.new(name,repr)
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

      OffsetUnit.import_temperature

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

    def self.prefix_regex
      @@prefix_regex
    end

    class << self

      def find_unit(x)
        if k = unit_stem(x)
          return LIST[k]
        elsif u = PREFIX[x]
          return u
        elsif Unit.prefix_regex =~ x
          pfx,sfx = $1,$2
          if pfx and k = unit_stem(sfx)
            return PREFIX[pfx] * LIST[k]
          end
        end
      end

      alias [] find_unit

      def unit_stem(x)
        if LIST[x]
          x
        elsif /(.*(?:s|z|ch))es$/ =~ x && LIST[k=$1]
          k
        elsif /(.*)s$/ =~ x && LIST[k=$1]
          k
        end
      end

      def word(x)
        find_unit(x) || Unit.new(x)
      end
    end

    def self.parse(str)
      Unit.find_unit(str) || Parse.new.parse(str)
    end
  end


  class OffsetUnit < Unit

    def self.import_temperature
      # K = C + 273.15
      # C = (F-32)*5/9
      # K = (F-32)*5/9 + 273.15 = F*5/9-32*5/9 + 273.15
      zero_degc = LIST["stdtemp"].get_factor
      OffsetUnit.new( "tempC", LIST["K"],zero_degc )
      OffsetUnit.new( "tempF", LIST["K"]*Rational(5,9),
                      zero_degc-32*Rational(5,9) )
      p LIST["tempC"] if debug
      p LIST["tempF"] if debug
    end

    def initialize(name,arg,offset)
      @offset = offset
      super(name,arg)
    end

    def convert_to_base(x)
      #puts "from#{@name}toB #{x} * #{@factor} + #{@offset}"
      x * get_factor + @offset
    end

    def convert_from_base(x)
      #puts "fromBto#{@name} (#{x} - #{@offset}) / #{@factor}"
      (x - @offset) / get_factor
    end

    def not_allowed(*a)
      raise "unit operation is not allowed"
    end

    def allowed_with_numeric(x)
      raise "to be implemented"
    end

    %w[+ - **].each do |x|
      alias_method x, :not_allowed
    end

    %w[* /].each do |x|
      alias_method x, :allowed_with_numeric
    end
  end
end
