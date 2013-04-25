#
# phys/units/unit.rb
#
#   Copyright (c) 2001-2013 Masahiro Tanaka <masa16.tanaka@gmail.com>
#
#   This program is free software.
#   You can distribute/modify this program under the terms of
#   the GNU General Public License version 3 or later.

module Phys

  class Unit

    LIST = {}
    PREFIX = {}

    def self.prefix_regex
      @@prefix_regex
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

    def conversion_factor
      use_dimension
      f = @factor
      @dim.each do |k,d|
        if d != 0
          u = LIST[k]
          if u.dimensionless?
            f *= u.dimension_value**d
          end
        end
      end
      f
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
      x * conversion_factor
    end

    def convert_from_base(x)
      x / conversion_factor
    end

    def convert_to_numeric(x)
      assert_dimensionless
      x * conversion_factor
    end

    def to_num
      assert_dimensionless
      conversion_factor
    end

    def convert_to_float(x)
      convert_to_numeric(x).to_f
    end

    def base_unit
      Unit.new(1,dim)
    end

#--

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
      zero_degc = LIST["stdtemp"].conversion_factor
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
      x * conversion_factor + @offset
    end

    def convert_from_base(x)
      (x - @offset) / conversion_factor
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
