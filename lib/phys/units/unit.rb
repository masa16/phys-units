#
# phys/units/unit.rb
#
#   Copyright (c) 2001-2013 Masahiro Tanaka <masa16.tanaka@gmail.com>
#
#   This program is free software.
#   You can distribute/modify this program under the terms of
#   the GNU General Public License version 3 or later.

module Phys

  # Phys::Unit is a class to represent Physical Units of measurement.
  # This class is used in the Phys::Quantity for calculations with Units,
  # and users do not always need to know its mechanism.
  # It has *Factor* and *Dimension*:
  # * *Factor* of the unit is a scale factor relative to its base unit.
  #     Phys::Unit["km"].factor #=> 1000
  # * *Dimension* of the unit
  #   is a hash table containing base units and dimensions as key-value pairs.
  #     Phys::Unit["N"].dimension #=> {"kg"=>1, "m"=>1, "s"=>-2}
  # @example
  #   require "phys/units"
  #   Q = Phys::Quantity
  #   U = Phys::Unit
  #
  #   U["miles"] / U["hr"]         #=> #<Phys::Unit 0.44704,{"m"=>1, "s"=>-1}>
  #   U["hr"] + U["30 min"]        #=> #<Phys::Unit 5400,{"s"=>1}>
  #   U["(m/s)"]**2                #=> #<Phys::Unit 1,{"m"=>2, "s"=>-2}>
  #   U["m/s"] === Q[1,'miles/hr'] #=> true
  #
  #   case Q[1,"miles/hr"]
  #   when U["m"]
  #     "length"
  #   when U["s"]
  #     "time"
  #   when U["m/s"]
  #     "velocity"
  #   else
  #     "other"
  #   end                    #=> "velocity"
  #
  # @see Quantity
  #
  class Unit

    # Hash table of registered units.
    LIST = {}
    # Hash table of registered prefixes.
    PREFIX = {}

    # Regex for registered prefixes.
    # @return [Regexp]
    def self.prefix_regex
      @@prefix_regex
    end

    # Initialize a new unit.
    # @overload initialize(factor,dimension=nil)
    #   @param [Numeric] factor  Unit scale factor.
    #   @param [Hash] dimension  Dimension hash.
    # @overload initialize(expr,name=nil)
    #   @param [String] expr  Expression of the unit. It is parsed lazily, i.e.,
    #     parsed not when this instance is created, but when @factor and @dim is used.
    #   @param [String] name  Name of the unit.
    # @overload initialize(unit,name=nil)
    #   @param [Phys::Unit] unit  Its contents is used for new unit.
    #   @param [String] name  Name of the unit.
    # @raise  [TypeError] if invalid arg types.
    #
    def initialize(a1,a2=nil)
      case a1
      when Numeric
        a1 = Rational(a1) if Integer===a1
        @factor = a1
        alloc_dim(a2)
      when Phys::Unit
        @factor = a1.factor
        alloc_dim a1.dim
        @name = a2.strip if a2
      when String
        @expr = a1.strip
        @name = a2.strip if a2
      else
        raise TypeError,"Invalid argument: #{a1.inspect}"
      end
    end

    # Expression of the unit.
    # @return [String, NilClass]
    def expr
      @expr || @name || string_form
    end

    # @visibility private
    attr_reader :offset
    # @visibility private
    attr_reader :name

    # Dimension hash.
    # @example
    #    Phys::Unit["N"].dimension #=> {"kg"=>1, "m"=>1, "s"=>-2}
    # @return [Hash]
    def dimension
      use_dimension
      @dim
    end
    alias dim dimension

    # Scale factor excluding the dimension-value.
    # @return [Numeric]
    # @example
    #   Phys::Unit["deg"].dimension         #=> {"pi"=>1, "radian"=>1}
    #   Phys::Unit["deg"].factor            #=> (1/180)
    #   Phys::Unit["deg"].conversion_factor #=> 0.017453292519943295
    # @see #conversion_factor
    def factor
      use_dimension
      @factor
    end

    # Dimension value. Always returns 1 unless BaseUnit.
    # @return [Numeric]
    # @see BaseUnit#dimension_value
    def dimension_value
      1
    end

    # (internal use)
    # @visibility private
    def alloc_dim(hash=nil)
      case hash
      when Hash
        @dim = hash.dup
      else
        @dim = {}
      end
      @dim.default = 0
    end

    # (internal use)
    # Parse @expr string if it has not been parsed yet.
    # This function must be called before access to @dim or @factor.
    # @return [nil]
    # @raise [UnitError] if unit parse error.
    # @visibility private
    def use_dimension
      return if @dim && @factor
      if @expr && @dim.nil?
        #puts "unit='#{@name}', parsing '#{@expr}'..." if Unit.debug
        unit = Unit.parse(@expr)
        case unit
        when Unit
          @dim = unit.dim
          @factor = unit.factor
          if @dim.nil? || @factor.nil?
            raise UnitError,"parse error : #{unit.inspect}"
          end
        when Numeric
          @factor = unit
          alloc_dim
        else
          raise UnitError,"parse error : #{self.inspect}"
        end
      else
        raise UnitError,"undefined unit?: #{self.inspect}"
      end
    end

    # Inspect string.
    # @return [String]
    # @example
    #   Phys::Unit["N"].inspect #=> '#<Phys::Unit 1,{"kg"=>1, "m"=>1, "s"=>-2},@expr="newton">'
    def inspect
      use_dimension
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

    # Make a string of this unit expressed in base units.
    # @return [String]
    # @example
    #   Phys::Unit["psi"].string_form #=> "(8896443230521/129032)*1e-04 kg m^-1 s^-2"
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

    # Returns self name or unit_string
    # @return [String]
    def to_s
      @name || unit_string
    end

    # Conversion Factor to base unit, including dimension-value.
    # @return [Numeric]
    # @example
    #   Phys::Unit["deg"].dimension         #=> {"pi"=>1, "radian"=>1}
    #   Phys::Unit["deg"].factor            #=> (1/180)
    #   Phys::Unit["deg"].conversion_factor #=> 0.017453292519943295
    # @see #factor
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

    # Returns true if scalar unit.
    # *Scalar* means this unit does not have any dimension
    # including dimensionless-units, and its factor is one.
    # @return [Boolean]
    def scalar?
      use_dimension
      (@dim.nil? || @dim.empty?) && @factor==1
    end

    # (internal use)
    # @visibility private
    def dimensionless_deleted
      use_dimension
      hash = @dim.dup
      hash.delete_if{|k,v| LIST[k].dimensionless?}
    end

    # (internal use)
    def dimensionless?
      use_dimension
      @dim.each_key.all?{|k| LIST[k].dimensionless?}
    end

    # (internal use)
    # @visibility private
    def same_dimension?(unit)
      dimensionless_deleted == unit.dimensionless_deleted
    end
    alias same_dim? same_dimension?

    # (internal use)
    # @visibility private
    # @raise [UnitError] if not dimensionless.
    def assert_dimensionless
      if !dimensionless?
        raise UnitError,"Not dimensionless: #{self.inspect}"
      end
    end

    # (internal use)
    # @visibility private
    # @raise [UnitError] if different dimensions.
    def assert_same_dimension(unit)
      if !same_dimension?(unit)
        raise UnitError,"Different dimension: #{self.inspect} and #{unit.inspect}"
      end
    end

    # Comformability of units. Returns true if unit conversion between +self+ and +x+ is possible.
    # @param [Object] x  other object (Unit or Quantity or Numeric or something else)
    # @return [Boolean]
    def ===(x)
      case x
      when Unit
        dimensionless_deleted == x.dimensionless_deleted
      when Quantity
        dimensionless_deleted == x.unit.dimensionless_deleted
      when Numeric
        dimensionless?
      else
        false
      end
    end
    alias conformable? ===
    alias compatible? ===
    alias conversion_allowed? ===

    # Convert a quantity to this unit.
    # @param [Phys::Quantity] quantity to be converted.
    # @return [Phys::Quantity]
    # @raise [UnitError] if unit conversion is failed.
    def convert(quantity)
      if Quantity===quantity
        assert_same_dimension(quantity.unit)
        v = quantity.unit.convert_value_to_base_unit(quantity.value)
        convert_value_from_base_unit(v)
      else
        quantity / to_numeric
      end
    end

    # Convert a quantity to this unit only in scale.
    # @param [Phys::Quantity] quantity to be converted.
    # @return [Phys::Quantity]
    # @raise [UnitError] if unit conversion is failed.
    def convert_scale(quantity)
      if Quantity===quantity
        assert_same_dimension(quantity.unit)
        v = quantity.value * quantity.unit.conversion_factor
        v = v / self.conversion_factor
      else
        quantity / to_numeric
      end
    end

    # Convert from a value in this unit to a value in base unit.
    # @param [Numeric] value
    # @return [Numeric]
    def convert_value_to_base_unit(value)
      value * conversion_factor
    end

    # Convert from a value in base unit to a value in this unit.
    # @param [Numeric] value
    # @return [Numeric]
    def convert_value_from_base_unit(value)
      value / conversion_factor
    end

    # Returns numeric value of this unit, i.e. conversion factor.
    # Raises UnitError if not dimensionless.
    # @return [Numeric]
    # @raise [UnitError] if not dimensionless.
    def to_numeric
      assert_dimensionless
      conversion_factor
    end
    alias to_num to_numeric


    # Returns Base Unit excluding dimensionless-units.
    # @return [Phys::Unit]
    def base_unit
      Unit.new(1,dimensionless_deleted)
    end

#--

    # Return true if this unit is operable.
    # @return [Boolean]
    def operable?
      true
    end

    # Raise error if this unit is not operable.
    # @return [nil]
    # @visibility private
    def check_operable
      if !operable?
        raise UnitError,"non-operable for #{inspect}"
      end
      nil
    end

    # Raise error if this unit or argument is not operable.
    # @return [nil]
    # @visibility private
    def check_operable2(unit)
      if !(operable? && unit.operable?)
        raise UnitError,"non-operable: #{inspect} and #{unit.inspect}"
      end
      nil
    end

    # (internal use)
    # @visibility private
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
        raise "dimension not defined"
      end
    end

    # (internal use)
    # @visibility private
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
        raise "dimension not defined"
      end
    end

    # Addition of units.
    # Both units must be operable and conversion-allowed.
    # @param  [Phys::Unit, Numeric] x  other unit
    # @return [Phys::Unit]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def +(x)
      x = Unit.cast(x)
      check_operable2(x)
      assert_same_dimension(x)
      Unit.new(@factor+x.factor,@dim.dup)
    end

    # Subtraction of units.
    # Both units must be operable and conversion-allowed.
    # @param  [Phys::Unit, Numeric] x  other unit
    # @return [Phys::Unit]
    # @raise  [Phys::UnitError] if not conformable unit conversion is failed.
    def -(x)
      x = Unit.cast(x)
      check_operable2(x)
      assert_same_dimension(x)
      Unit.new(@factor-x.factor,@dim.dup)
    end

    # Unary minus.
    # This unit must be operable.
    # @return [Phys::Unit]
    # @raise  [Phys::UnitError] if not operable.
    def -@
      check_operable
      use_dimension
      Unit.new(-@factor,@dim.dup)
    end

    # Unary plus.
    # Returns self.
    # @return [Phys::Unit]
    def +@
      self
    end

    # Multiplication of units.
    # Both units must be operable.
    # @param  [Phys::Unit, Numeric] x  other unit
    # @return [Phys::Unit]
    # @raise  [Phys::UnitError] if not operable.
    def *(x)
      x = Unit.cast(x)
      if scalar?
        return x
      elsif x.scalar?
        return self.dup
      end
      check_operable2(x)
      dims = dimension_binop(x){|a,b| a+b}
      factor = self.factor * x.factor
      Unit.new(factor,dims)
    end

    # Division of units.
    # Both units must be operable.
    # @param  [Phys::Unit, Numeric] x  other unit
    # @return [Phys::Unit]
    # @raise  [Phys::UnitError] if not operable.
    def /(x)
      x = Unit.cast(x)
      if scalar?
        return x.inverse
      elsif x.scalar?
        return self.dup
      end
      check_operable2(x)
      dims = dimension_binop(x){|a,b| a-b}
      factor = self.factor / x.factor
      Unit.new(factor,dims)
    end

    # Inverse of units.
    # This unit must be operable.
    # @param  [Phys::Unit, Numeric] unit
    # @return [Phys::Unit]
    # @raise  [Phys::UnitError] if not operable.
    def inverse
      check_operable
      dims = dimension_uop{|a| -a}
      Unit.new(Rational(1,self.factor), dims)
    end

    # Exponentiation of units.
    # This units must be operable.
    # @param  [Numeric] x  numeric
    # @return [Phys::Unit]
    # @raise  [Phys::UnitError] if not operable.
    def **(x)
      check_operable
      m = Utils.as_numeric(x)
      dims = dimension_uop{|a| a*m}
      Unit.new(@factor**m,dims)
    end

    # @visibility private
    def self.func(fn, x)
      m = Unit.new(x).to_numeric
      if fn == 'log2' && RUBY_VERSION<'1.9.0'
        return Unit.new( Math.log(m)/Math.log(2) )
      end
      fn = 'log' if fn == 'ln'
      Unit.new( Math.send(fn,m) )
    end

    # Equality of units
    # @param  [Object] x  other unit or object
    # @return [Boolean]
    def ==(x)
      case x
      when Numeric
        x = Unit.cast(x)
      when Unit
      else
        return false
      end
      use_dimension
      @factor == x.factor && @dim == x.dim &&
        offset == x.offset && dimension_value == x.dimension_value
    end

    # Coerce.
    # @return [Array]
    def coerce(x)
      [Unit.find_unit(x), self]
    end

  end # Unit


  # BaseUnit is a class to represent units defined by "!"
  # in the data form of GNU units.
  # It includes SI units and dimensionless units such as radian.
  class BaseUnit < Unit

    def self.define(name,expr,dimval=nil)
      if LIST[name]
        warn "unit definition is overwritten: #{name}" if debug
      end
      LIST[name] = self.new(expr,name,dimval)
    end

    def initialize(expr,name,dimval=nil)
      case name
      when String
        @name = name.strip
        @factor = 1
        @dim = {@name=>1}
        @dim.default = 0
        @expr = nil
        if String===expr && /!dimensionless/ =~ expr
          @dimensionless = true
        end
        @dimension_value = dimval || 1
      else
        raise ArgumentError,"Second argument must be string: #{name}"
      end
    end

    # @visibility private
    def use_dimension
    end

    def dimensionless?
      @dimensionless
    end

    # @visibility private
    def dimensionless_deleted
      if @dimensionless
        {}
      else
       @dim.dup
      end
    end

    # Dimension value.
    # Returns PI number for pi dimension, otherwise returns one.
    # @return [Numeric]
    # @example
    #    Phys::Unit["pi"].dimension_value #=> 3.141592653589793
    attr_reader :dimension_value
  end


  # OffsetUnit is a class to represent units with offset value.
  # Allows Fahrenheit/Celsius temperature.
  # Unit operations are not allowed.
  # @example
  #  require 'phys/units'
  #
  #  Phys::Quantity[20,:tempC].want(:tempF)                #=> Phys::Quantity[68,'tempF']
  #  Phys::Quantity[3,:tempC] + Phys::Quantity[10,:degF]   #=> Phys::Quantity[(77/9),"tempC"]
  #  Phys::Quantity[3,:tempC] * Phys::Quantity[3,:m]       #=> UnitError
  #  Phys::Quantity[3,:tempC] ** 2                         #=> UnitError
  #
  #  # Next examples currently work, but I suggest the use of degC and degF.
  #  Phys::Quantity[3,:tempC] + Phys::Quantity[10,:tempF]  #=> Phys::Quantity[(77/9),"tempC"]
  #  Phys::Quantity[3,:tempC] * 2                          #=> Phys::Quantity[6,"tempC"]
  class OffsetUnit < Unit

    def self.define(name,unit,offset=nil)
      LIST[name] = self.new(unit,name,offset)
    end

    def initialize(arg,name=nil,offset=nil)
      if offset.nil?
        raise ArgumentError,"offset is not supplied"
      end
      super(arg,name)
      @offset = offset
    end

    # Convert from a value in this unit to a value in base unit.
    # @param [Numeric] value
    # @return [Numeric]
    def convert_value_to_base_unit(value)
      value * conversion_factor + @offset
    end

    # Convert from a value in base unit to a value in this unit.
    # @param [Numeric] value
    # @return [Numeric]
    def convert_value_from_base_unit(value)
      (value - @offset) / conversion_factor
    end

    # Returns false
    def operable?
      false
    end
  end
end
