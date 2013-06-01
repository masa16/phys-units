#
# phys/units/quantity.rb
#
#   Copyright (c) 2001-2013 Masahiro Tanaka <masa16.tanaka@gmail.com>
#
#   This program is free software.
#   You can distribute/modify this program under the terms of
#   the GNU General Public License version 3 or later.

module Phys

  # alias to Phys::Quantity.new
  #def Quantity(*a)
  #  Quantity.new(*a)
  #end

  # Phys::Quantity is the primary class of Phys-Units library,
  # intended to be manipulated by users.
  # This class represents Physical Quantities with a Unit of measurement.
  # It contains *Value* and *Unit*.
  # * *Value* of the quantity is given as the first parameter of
  #   Quantity constructor (alias is +Quantity[]+).
  #   It must be a class instance having arithmetic methods,
  #   but it is not necessary to be a Numeric.
  #   This is a duck typing way.
  #        Phys::Quantity[2.5,"miles"].value    #=> 2.5
  #        Phys::Quantity[NArray.float(5).indgen,"miles"].want("m").value
  #        #=> NArray.float(5):
  #            [ 0.0, 1609.34, 3218.69, 4828.03, 6437.38 ]
  # * *Unit* is an instance of Phys::Unit class.
  #   It is created from the second argument of Quantity constructor.
  #   See document of Phys::Unit.
  #        Phys::Quantity[2.5,"miles"].unit #=> #<Phys::Unit 1609.344,{"m"=>1},@expr="5280 ft">
  #
  # @example
  #   require 'phys/units'
  #   Q = Phys::Quantity
  #
  #   Q[1.23,'km'] + Q[4.56,'m']    #=> Phys::Quantity[1.23456,'km']
  #   Q[123,'mile'] / Q[2,'hr']     #=> Phys::Quantity[61,'mile/hr']
  #   Q[61,'miles/hr'].want('m/s')  #=> Phys::Quantity[27.26944,'m/s']
  #   Q[1.0,'are'] == Q[10,'m']**2  #=> true
  #   Q[70,'tempF'] + Q[10,'degC']  #=> Phys::Quantity[88,'tempF']
  #   Q[20,'tempC'].want('tempF')   #=> Phys::Quantity[68,'tempF']
  #   Math.cos(Q[60,'degree'].to_f) #=> 0.5
  #
  # @see Unit
  #
  class Quantity

    @@verbose_inspect = false

    class << self
      # Alias to Phys::Quantity.new.
      # @param [Object]  value  Value of quantity.
      # @param [String,Symbol,Phys::Unit]  unit
      #  * If +unit+ String or Symbol, it is regarded as a unit expression (to be parsed later).
      #  * If +unit+ is Phys::Unit, it is used as the unit of new quantity.
      #  * If +unit+ is not provided, the quantity is regarded as dimensionless.
      # @return [Phys::Quantity]
      # @raise [TypeError] if invalid arg types.
      # @raise [Phys::UnitError] if unit conversion is failed.
      def [](value,unit=nil)
        self.new(value,unit)
      end
    end

    # Initialize a new quantity.
    # @overload initialize(value,expr,unit=nil)
    #   @param [Object]     value  Value of quantity.
    #   @param [String,Symbol] expr  Unit expression.
    #   @param [Phys::Unit] unit   If exists, this parameter is used as the unit of new quantity.
    # @overload initialize(value,unit)
    #   @param [Object]     value  Value of quantity.
    #   @param [Phys::Unit] unit   This parameter is used as the unit of new quantity.
    # @overload initialize(value)
    #   @param [Object]     value  Value of a dimensionless quantity.
    # @raise [TypeError] if invalid arg types.
    # @raise [Phys::UnitError] if unit conversion is failed.
    #
    def initialize(value,expr=nil,unit=nil)
      @value = value
      case expr
      when String, Symbol
        @expr = expr.to_s.strip
        @expr = nil if @expr==''
        @unit = unit
      when NilClass
        @expr = nil
        @unit = unit
      when Unit
        raise "Wrong # of argument" if unit
        @expr = nil
        @unit = expr
      else
        raise ArgumentError,"Second argument is invalid: #{expr.inspect}"
      end
      case @unit
      when NilClass
        @unit = Unit.parse(@expr||1)
      when Unit
      else
        raise ArgumentError, "Third argument is invalid: #{@unit.inspect}"
      end
    end

    # Value of the quantity.
    # Instance of classes with same arithmetic methods as Numeric.
    # @return [Object]
    attr_reader :value
    alias val value

    # Unit expression. Given as the second parameter of the Quantity constructor.
    # @return [String]
    attr_reader :expr

    # Unit of the quantity. Instance of Phys::Unit class.
    # @return [Phys::Unit]
    attr_reader :unit

    # Conversion to a quantity in another unit.
    # @param  [String,Symbol,Unit,Quantity] unit unit expression.
    # @return [Phys::Quantity] quantity in the unit of +unit+.
    # @raise  [Phys::UnitError] if unit conversion is failed.
    #
    def want(unit=nil)
      case unit
      when Unit
        expr = unit.expr
      when Quantity
        expr = unit.expr
        unit = unit.unit
      when String,Symbol
        expr = unit
        unit = Unit.parse(expr)
      when Numeric
        unit = Unit.cast(unit)
      when NilClass
        unit = Unit.cast(1)
      else
        raise TypeError, "invalid argument: #{unit.inspect}"
      end
      val = unit.convert(self)
      self.class.new( val, expr, unit )
    end
    alias convert want
    alias >> want

    # Addition.
    # Before the operation, it converts +other+ to the unit of +self+.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+.
    # * If the +other+ param is *not* Phys::Quantity,
    #   both params must be dimensionless.
    # @param  [Object] other
    # @return [Phys::Quantity] a quantity in the unit of +self+.
    # @raise  [Phys::UnitError] if unit conversion is failed.
    #
    def +(other)
      val = @value + @unit.convert_scale(other)
      self.class.new( val, @expr, @unit )
    end

    # Subtraction.
    # Before the operation, it converts +other+ to the unit of +self+.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+.
    # * If the +other+ param is *not* Phys::Quantity,
    #   both params must be dimensionless.
    # @param  [Object] other
    # @return [Phys::Quantity] a quantity in the unit of +self+.
    # @raise  [Phys::UnitError] if unit conversion is failed.
    #
    def -(other)
      val = @value - @unit.convert_scale(other)
      self.class.new( val, @expr, @unit )
    end

    # Absolute. Returns a quantity in the same unit of +self+.
    # @return [Phys::Quantity]
    def abs
      self.class.new( @value.abs, @expr, @unit )
    end

    # Square. Returns a quantity in squared unit of +self+.
    # @return [Phys::Quantity]
    def abs2
      self**2
    end

    # Ceil. Returns a quantity with the smallest Integer value greater
    # than or equal to +self+ value, in the same unit of +self+.
    # @return [Phys::Quantity]
    def ceil
      self.class.new( @value.ceil, @expr, @unit )
    end

    # Round. Rounds +self+ value to a given precision in decimal digits
    # (default 0 digits).
    # Returns a quantity with the rounded value in the same unit of +self+.
    # @return [Phys::Quantity]
    def round(ndigits=nil)
      val = ndigits ? @value.round(ndigits) : @value.round
      self.class.new( val, @expr, @unit )
    end

    # Floor. Returns a quantity with the largest integer value
    # less than or equal to +self+ value, in the same unit of +self+.
    # @return [Phys::Quantity]
    def floor
      self.class.new( @value.floor, @expr, @unit )
    end

    # Truncate. Returns a quantity with the value truncated to an integer,
    # in the same unit of +self+.
    # @return [Phys::Quantity]
    def truncate
      self.class.new( @value.truncate, @expr, @unit )
    end

    # Unary Plus. Returns +self+.
    # @return [Phys::Quantity]
    def +@
      self.class.new(  @value, @expr, @unit )
    end

    # Unary Minus. Returns a quantity with negative value
    # in the same unit of +self+.
    # @return [Phys::Quantity]
    def -@
      self.class.new( -@value, @expr, @unit )
    end

    # Comparison of quantities.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @return [Integer]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def <=> (other)
      @value <=> @unit.convert(other)
    end

    # Equality. Returns +true+ if +self+ has the same value as +other+.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @return [Boolean]
    def == (other)
      if Quantity===other
        @unit.conformable?(other.unit) &&
          @value == @unit.convert(other)
      elsif @unit.dimensionless?
        @unit.convert_value_to_base_unit(@value) == other
      else
        false
      end
    end

    # Comparison. Returns +true+ if +self+ is greater-than or equal-to +other+.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @return [Boolean]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def >= (other)
      @value >= @unit.convert(other)
    end

    # Comparison. Returns +true+ if +self+ is less-than or equal-to +other+.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @return [Boolean]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def <= (other)
      @value <= @unit.convert(other)
    end

    # Comparison. Returns +true+ if +self+ is less than +other+.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @return [Boolean]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def < (other)
      @value < @unit.convert(other)
    end

    # Comparison. Returns +true+ if +self+ is greater than +other+.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @return [Boolean]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def > (other)
      @value > @unit.convert(other)
    end

    # Closeness. Returns +true+ if
    #   (self-other).abs <= (self.abs+other.abs) * epsilon
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @param  [Numeric] epsilon
    # @return [Boolean]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def close_to(other,epsilon=Float::EPSILON)
      other_value = @unit.convert(other)
      abs_sum = @value.abs+other_value.abs
      (@value-other_value).abs <= abs_sum*epsilon
    end

    # Exponentiation.
    # @param  [Numeric] n
    # @return [Phys::Quantity] a quantity in the +n+ -powered unit of +self+.
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def **(n)
      if @expr.nil?
        expr = nil
      elsif /^[A-Za-z_]+$/o =~ @expr
        expr = @expr+'^'+n.to_s
      else
        expr = '('+@expr+')^'+n.to_s+''
      end
      self.class.new( @value**n, expr, @unit**n )
    end

    # (internally used method)
    # @visibility private
    # @return [String]
    def enclose_expr     #:nodoc: used internally
      return nil if @expr.nil?
      if /\/|\||per/o =~ @expr
        '('+@expr+')'
      else
        @expr
      end
    end

    # (internally used method)
    # @visibility private
    # @return [String]
    def enclose_expr_div    #:nodoc: used internally
      return nil if @expr.nil?
      if /\w[^\w]+\w/o =~ @expr
        '/('+@expr+')'
      else
        '/'+@expr
      end
    end

    # Multiplication.
    # If the +other+ param is *not* Phys::Quantity,
    # +other+ is regarded as a dimensionless value.
    # The values and units are multiplied respectively.
    # @param  [Object] other
    # @return [Phys::Quantity] a quantity
    # @raise  [Phys::UnitError] if unit is not operable.
    #
    def *(other)
      if Quantity===other
        a = [self.enclose_expr, other.enclose_expr]
        a.delete(nil)
        self.class.new( @value*other.value, a.join(' '), @unit*other.unit )
      else
        self.class.new( @value*other, @expr, @unit )
      end
    end

    # Division.
    # If the +other+ param is *not* Phys::Quantity,
    # +other+ is regarded as a dimensionless value.
    # The values and units are divided respectively.
    # Note that the method of the value's class is used.
    # @example
    #   Phys::Quantity[3,:m]/2 #=> Phys::Quantity[1,"m"]
    # @param  [Object] other
    # @return [Phys::Quantity] a quantity
    # @raise  [Phys::UnitError] if unit is not operable.
    #
    def /(other)
      if Quantity===other
        a = [self.enclose_expr, other.enclose_expr_div]
        a.delete(nil)
        self.class.new( @value/other.value, a.join, @unit/other.unit )
      else
        self.class.new( @value/other, @expr, @unit )
      end
    end

    # Division more correctly.
    # If the +other+ param is *not* Phys::Quantity,
    # +other+ is regarded as a dimensionless value.
    # The values and units are divided respectively.
    # @param  [Object] other
    # @return [Phys::Quantity] a quantity
    # @raise  [Phys::UnitError] if unit is not operable.
    #
    def quo(other)
      if Quantity===other
        a = [self.enclose_expr, other.enclose_expr_div]
        a.delete(nil)
        self.class.new( @value.quo(other.value), a.join, @unit/other.unit )
      else
        self.class.new( @value.quo(other), @expr, @unit )
      end
    end
    alias fdiv quo

    # Division without Modulo.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+,
    #   and returns +div+ of values.
    # * If the +other+ param is *not* Phys::Quantity,
    #   +other+ is regarded as dimensionless,
    #   and returns +div+ of Phys::Quantity.
    # @param  [Object] other
    # @return [Object] div
    # @raise  [Phys::UnitError] if unit conversion is failed.
    #
    def div(other)
      if Quantity===other
        @value.div( @unit.convert(other) )
      else
        self.class.new( @value.div(other), @expr, @unit )
      end
    end

    # Remainder.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+,
    #   and returns +remainder+ of values.
    # * If the +other+ param is *not* Phys::Quantity,
    #   +other+ is regarded as dimensionless,
    #   and returns +remainder+ of Phys::Quantity.
    # @param  [Object] other
    # @return [Object] remainder
    # @raise  [Phys::UnitError] if unit conversion is failed.
    #
    def remainder(other)  #:nodoc: used internally
      if Quantity===other
        @value.remainder( @unit.convert(other) )
      else
        self.class.new( @value.remainder(other), @expr, @unit )
      end
    end

    # Modulo.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+,
    #   and returns +modulo+ of values.
    # * If the +other+ param is *not* Phys::Quantity,
    #   +other+ is regarded as dimensionless,
    #   and returns +modulo+ of Phys::Quantity.
    # @param  [Object] other
    # @return [Object] modulo
    # @raise  [Phys::UnitError] if unit conversion is failed.
    #
    def %(other)
      if Quantity===other
        @value % @unit.convert(other)
      else
        self.class.new( @value % other, @expr, @unit )
      end
    end
    alias modulo %

    # Division with Modulo.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+,
    #   and returns +divmod+ of values.
    # * If the +other+ param is *not* Phys::Quantity,
    #   +other+ is regarded as dimensionless,
    #   and returns +divmod+ of Phys::Quantity.
    # @param  [Object] other
    # @return [Array] result of +divmod+, an array of [quotient, modulo].
    # @raise  [Phys::UnitError] if unit conversion is failed.
    #
    def divmod(other)
      if Quantity===other
        @value.divmod( @unit.convert(other) )
      else
        d,m = @value.divmod(other)
        [ self.class.new( d, @expr, @unit ),
          self.class.new( m, @expr, @unit ) ]
      end
    end

    # @return [Array]
    def coerce(other)
      [ self.class.new(other), self ]
    end

    # Conversion to base unit.
    # Returns the quantity converted to a base unit.
    # @return [Phys::Quantity] a quantity in the base unit.
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def to_base_unit
      unit = @unit.base_unit
      val  = unit.convert(self)
      expr = unit.unit_string
      self.class.new( val, expr, unit )
    end
    alias to_si to_base_unit
    alias to_SI to_base_unit

    # Conversion to Numeric.
    # @return [Numeric]
    # @raise  [Phys::UnitError] if the unit is *not* dimensionless.
    def to_numeric
      @unit.to_numeric * @value
    end
    alias to_num to_numeric

    # Conversion to Float.
    # @return [Float]
    # @raise  [Phys::UnitError] if the unit is *not* dimensionless.
    def to_f
      to_numeric.to_f
    end
    alias to_float to_f

    # Conversion to Integer.
    # @return [Integer]
    # @raise  [Phys::UnitError] if the unit is *not* dimensionless.
    def to_i
      to_numeric.to_i
    end
    alias to_int to_i
    alias to_integer to_i

    # Conversion to Rational.
    # @return [Rational]
    # @raise  [Phys::UnitError] if the unit is *not* dimensionless.
    def to_r
      to_numeric.to_r
    end
    alias to_rational to_r

    # Conversion to String.
    # @return [String]
    def to_s
      if @expr
        expr = ",'" +@expr+"'"
      else
        expr = ""
      end
      self.class.to_s+"["+Unit::Utils.num_inspect(@value)+expr+"]"
    end

    # Inspect String.
    # @return [String]
    def inspect
      if @expr
        expr = "," +@expr.inspect
      else
        expr = ""
      end
      if @@verbose_inspect
        sufx = " "+@unit.inspect
      else
        sufx = ""
      end
      self.class.to_s+"["+Unit::Utils.num_inspect(@value)+expr+"]"+sufx
    end

    # Conformability of quantity. Returns true if unit conversion between +self+ and +x+ is possible.
    # @param [Object] x  other object (Unit or Quantity or Numeric or something else)
    # @return [Boolean]
    def ===(x)
      case x
      when Unit
        unit === x
      when Quantity
        unit === x.unit
      when Numeric
        unit.dimensionless?
      else
        false
      end
    end
    alias conformable? ===
    alias compatible? ===
    alias conversion_allowed? ===

  end
end
