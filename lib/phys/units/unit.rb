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

    def initialize(arg,expr=nil,offset=nil)
      case arg
      when Numeric
        arg = Rational(arg) if Integer===arg
        @factor = arg
        alloc_dim(expr)
      when Phys::Unit
        replace(arg)
      when String
        @name = arg
        if expr.kind_of? Phys::Unit
          @factor = expr.factor
          @offset = expr.offset
          alloc_dim expr.dim
        else
          @expr = expr
        end
      else
        raise TypeError,"invalid argument : #{arg.inspect}"
      end
    end

    attr_reader :name, :offset, :expr

    def dim
      use_dimension
      @dim
    end
    alias dimension dim

    def factor
      use_dimension
      @factor
    end

    def dimension_value
      1
    end

    def replace(x)
      @name = x.name.dup if x.name
      @factor = x.factor
      @offset = x.offset
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

    def use_dimension
      return if @dim && @factor
      if @expr && @dim.nil?
        puts "unit='#{@name}', parsing '#{@expr}'..." if Unit.debug
        unit = Unit.parse(@expr)
        case unit
        when Unit
          @dim = unit.dim
          @factor = unit.factor
          if @dim.nil? || @factor.nil?
            raise UnitParseError,"parse error : #{unit.inspect}"
          end
        when Numeric
          @factor = unit
          alloc_dim
        else
          raise UnitParseError,"parse error : #{self.inspect}"
        end
      else
        raise UnitParseError,"undefined unit?: #{self.inspect}"
      end
    end

    def inspect
      a = [Utils.num_inspect(@factor), @dim.inspect]
      a << "@name="+@name.inspect if @name
      a << "@expr="+@expr.inspect if @expr
      a << "@offset="+@offset.inspect if @offset
      a << "@dimensionless=true" if @dimensionless
      if @dimension_value && @dimension_value!=1
        a << "@dimension_value="+@dimension_value.inspect
      end
      s = a.join(",")
      "#<#{self.class} #{s}>"
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
    alias string_form unit_string

    # Unit conversion

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

    def scalar?
      use_dimension
      (@dim.nil? || @dim.empty?) && @factor==1
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
        raise UnitConversionError,"Not dimensionless: #{self.inspect}"
      end
    end

    def assert_same_dimension(x)
      if !same_dimension?(x)
        raise UnitConversionError,"Different dimension: #{self.inspect} and #{x.inspect}"
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

    def convert_scale(q)
      convert(q)
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

    # Unit operation

    def operable?
      true
    end

    def check_operable
      if !operable?
        raise UnitOperationError,"non-operable for #{inspect}"
      end
    end

    def check_operable2(x)
      if !(operable? && x.operable?)
        raise UnitOperationError,"non-operable: #{inspect} and #{x.inspect}"
      end
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

    def dimension_uop
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

    def +(x)
      x = Unit.cast(x)
      check_operable2(x)
      assert_same_dimension(x)
      Unit.new(@factor+x.factor,@dim.dup)
    end

    def -(x)
      x = Unit.cast(x)
      check_operable2(x)
      assert_same_dimension(x)
      Unit.new(@factor-x.factor,@dim.dup)
    end

    def -@
      check_operable
      use_dimension
      Unit.new(-@factor,@dim.dup)
    end

    def +@
      self
    end

    def *(x)
      y = Unit.cast(x)
      if scalar?
        return y
      elsif y.scalar?
        return self
      end
      check_operable2(y)
      dims = dimension_binop(y){|a,b| a+b}
      factor = self.factor * y.factor
      Unit.new(factor,dims)
    end

    def /(x)
      y = Unit.cast(x)
      if scalar?
        return y.inv
      elsif y.scalar?
        return self
      end
      check_operable2(y)
      dims = dimension_binop(y){|a,b| a-b}
      factor = self.factor / y.factor
      Unit.new(factor,dims)
    end

    def rdiv(x)
      y = Unit.cast(x)
      if scalar?
        return y.inv
      elsif y.scalar?
        return self
      end
      check_operable2(y)
      dims = dimension_binop(y){|a,b| a-b}
      factor = Rational(self.factor,x.factor)
      Unit.new(factor,dims)
    end

    def self.rdiv(x,y)
      Unit.cast(x).rdiv(y)
    end

    def inv
      check_operable
      dims = dimension_uop{|a| -a}
      Unit.new(Rational(1,self.factor), dims)
    end

    def **(x)
      check_operable
      m = Utils.as_numeric(x)
      dims = dimension_uop{|a| a*m}
      Unit.new(@factor**m,dims)
    end

    def self.func(fn, x)
      fn = 'log' if fn == 'ln'
      m = Unit.new(x).to_num
      Unit.new( Math.send(fn,m) )
    end

    def ==(x)
      use_dimension
      @factor == x.factor && @dim == x.dim && 
        offset == x.offset && dimension_value == x.dimension_value
    end

    def coerce(x)
      [Unit.find_unit(x), self]
    end

  end # Unit


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
        raise ArgumentError "BaseUnit#initialize: arg must be string: #{s}"
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

    def initialize(name,arg,offset)
      super(name,arg)
      @offset = offset
      if offset.nil?
        raise ArgumentError,"offset is not supplied"
      end
    end

    def convert_to_base(x)
      x * conversion_factor + @offset
    end

    def convert_from_base(x)
      (x - @offset) / conversion_factor
    end

    def convert_scale(q)
      if Quantity===q
        assert_same_dimension(q.unit)        
        v = q.value * q.unit.conversion_factor
        v = v / self.conversion_factor
      else
        raise TypeError,"not Quantitiy: #{q.inspect}"
      end
    end

    def operable?
      false
    end
  end
end
