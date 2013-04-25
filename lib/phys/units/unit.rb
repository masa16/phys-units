# -*- coding: utf-8 -*-

module Phys
  LIST = {}
  PREFIX = {}

  class Unit

    def self.debug
      true #false
    end

    class << self
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
    end

    def initialize(arg,expr=nil)
      case arg
      when Numeric
        @factor = arg
        alloc_dim(expr)
      when Phys::Unit
        replace(arg)
      when String
        @name = arg
        if expr.kind_of? Phys::Unit
          replace(expr)
        else
          @expr = expr
        end
      else
        raise TypeError,"invalid argument : #{arg.inspect}"
      end
    end

    def use_dimension
      return if @dim && @factor
      if @expr && @dim.nil?
        puts "unit='#{@name}', parsing '#{@expr}'..." if Unit.debug
        unit = Parse.new.parse(@expr)
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

    attr_accessor :name

    def dimension_value
      1
    end

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
            p u
            r *= u.dimension_value**d
          end
        end
      end
      r
    end

    def unit_string
      use_dimension
      a = []
      a << Utils.num_inspect(@factor) if @factor!=1
      a += @dim.map do |k,d|
        if d==1
          k
        else
          "#{k}^#{d}"
        end
      end
      a.join(" ")
    end

    def dimensionless_deleted
      use_dimension
      hash = @dim.dup
      hash.delete_if{|k,v| LIST[k].dimensionless?}
    end

    def dimensionless?
      use_dimension
      @dim.each_key.all?{|k| LIST[k].dimensionless?}
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

    def convert(q)
      if Quantity===q
        assert_same_dimension(q.unit)
        v = q.unit.convert_to_base(q.value)
        convert_from_base(v)
      else
        q / to_num
      end
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

    def base_unit
      Unit.new(1,dim)
    end

#--

    def self.cast(x)
      if x.kind_of?(Unit)
        x
      else
        Unit.new(x) 
      end
    end

    def +(x)
      x = Unit.cast(x)
      assert_same_dimension(x)
      Unit.new(@factor+x.factor,@dim.dup)
    end

    def -(x)
      x = Unit.cast(x)
      assert_same_dimension(x)
      Unit.new(@factor-x.factor,@dim.dup)
    end

    def -@
      use_dimension
      Unit.new(-@factor,@dim.dup)
    end

    def dimension_binop(other)
      x = self.dim
      y = other.dim
      if Hash===x
        if Hash===y
          keys = x.keys | y.keys
          dims = {}
          dims.default = 0
          keys.each do |k| 
            v = yield( x[k]||0, y[k]||0 )
            dims[k] = v if v!=0
          end
          dims
        else
          x.dup
        end
      else
        raise "dimensin not defined"
      end
    end

    def dimension_uniop
      x = self.dim
      if Hash===x
        dims = {}
        dims.default = 0
        x.each do |k,d|
          v = yield( d )
          dims[k] = v if v!=0
        end
        dims
      else
        raise "dimensin not defined"
      end
    end

    def *(x)
      x = Unit.cast(x)
      dims = dimension_binop(x){|a,b| a+b}
      factor = self.factor * x.factor
      Unit.new(factor,dims)
    end

    def /(x)
      x = Unit.cast(x)
      dims = dimension_binop(x){|a,b| a-b}
      factor = self.factor / x.factor
      Unit.new(factor,dims)
    end

    def rdiv(x)
      x = Unit.cast(x)
      dims = dimension_binop(x){|a,b| a-b}
      factor = Rational(self.factor,x.factor)
      Unit.new(factor,dims)
    end

    def self.rdiv(x,y)
      self.cast(x).rdiv(y)
    end

    def inv
      dims = dimension_uop{|a| -a}
      Unit.new(1/self.factor, dims)
    end

    def **(x)
      m = Utils.as_numeric(x)
      dims = dimension_uop{|a| a*m}
      Unit.new(@factor**m,dims)
    end

    def self.func(fn, x)
      fn = 'log' if fn == 'ln'
      m = Unit.new(x).to_num
      Unit.new( Math.send(fn,m) )
    end

    def coerce(x)
      [Unit.new(x), self]
    end

    def self.import_units(data=nil,locale=nil)
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

      if true
        Unit.define("pi","!dimensionless",Math::PI)
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

    end
  end


  class BaseUnit < Unit
    def initialize(s,dimless=false,v=nil)
      case s
      when String
        @name = s
        @factor = 1
        @dim = {s=>1}
        @dim.default = 0
        @dimensionless = dimless
        @dimension_value = v || 1
      else
        raise "argument must be String: #{s}"
      end
    end

    def replace(x)
      super(x)
      @dimensionless = x.dimensionless
      @dimension_value = x.dimension_value
    end

    def use_dimension
    end

    def dimensionless?
      @dimensionless
    end

    def dimensionless_deleted
      if @dimensionless
        {}
      else
        @dim.dup
      end
    end

    attr_reader :dimension_value
  end


  class OffsetUnit < Unit

    def self.define(name,unit,offset=nil)
      LIST[name] = self.new(name,unit,offset)
    end

    def self.import_temperature
      # K = C + 273.15
      # C = (F-32)*5/9
      # K = (F-32)*5/9 + 273.15 = F*5/9-32*5/9 + 273.15
      zero_degc = LIST["stdtemp"].get_factor
      define( "tempC", LIST["K"],zero_degc )
      define( "tempF", LIST["K"]*Rational(5,9), zero_degc-32*Rational(5,9) )
      p LIST["tempC"] if debug
      p LIST["tempF"] if debug
    end

    def initialize(name,arg,offset)
      @offset = offset
      super(name,arg)
    end

    def convert_to_base(x)
      x * get_factor + @offset
    end

    def convert_from_base(x)
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
