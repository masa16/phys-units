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
  def Quantity(*a)
    Quantity.new(*a)
  end

  # Phys::Quantity is a class to represent physical quantities
  # with unit of measure.
  # It contains:
  # * *Value* of the quantity.
  #   +value+ must be a class instance having arithmetic methods,
  #   but it is not necessary to be a Numeric.
  #   This is a duck typing way.
  # * *Unit* of the quantity.
  #   +unit+ is a instance of Phys::Unit class
  #   obtained by parsing a +expr+ string.
  #== Usage
  #   require 'phys/units'
  #   Q=Phys::Quantity
  #   Q[1.23,'km'] + Q[4.56,'m']    #=> Phys::Quantity[1.23456,'km']
  #   Q[123,'mile'] / Q[2,'hr']     #=> Phys::Quantity[61,'mile/hr']
  #   Q[61,'miles/hr'].want('m/s')  #=> Phys::Quantity[27.26944,'m/s']
  #   Q[1.0,'are'] == Q[10,'m']**2  #=> true
  #   Q[70,'tempF'] + Q[10,'tempC'] #=> Phys::Quantity[88,'tempF']
  #   Q[20,'tempC'].want('tempF')   #=> Phys::Quantity[68,'tempF']
  #   Math.cos(Q[60,'degree'].to_f) #=> 0.5
  class Quantity

    class << self
      # Alias to Phys::Quantity.new.
      # @param  [Object] value
      #         Value of quantity.
      # @param  [String] expr  a string of unit expression.
      #         If +expr+ is not supplied, it becomes dimeinsionless.
      # @return [Phys::Quantity]
      # @raise  [Phys::UnitError] if unit conversion is failed.
      def [](value,expr=nil)
        self.new(value,expr)
      end
    end

    # Initialize a new quantity.
    # @param  [Object] value
    #         Value of quantity.
    # @param  [String] expr  a string of unit expression.
    #         If +expr+ is not supplied, it becomes dimeinsionless.
    # @param  [Phys::Unit] unit  (optional)
    # @raise  [Phys::UnitError] if unit conversion is failed.
    #
    def initialize(value,expr=nil,unit=nil)
      @value = value
      expr = expr.to_s if Symbol===expr
      @expr = (expr=='') ? nil : expr
      @unit = unit
      if @unit.nil?
        @unit = Unit.parse(@expr||1)
      elsif !@unit.kind_of? Unit
        raise ArgumentError, "third arg must be Phys::Unit"
      end
    end

    # Value of the quantity.
    # Instance of classes with same arithmetic methods as Numric.
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
    # @param  [String] expr unit expression.
    # @return [Phys::Quantity] quantity in the unit of +expr+.
    # @raise  [Phys::UnitError] if unit conversion is failed.
    #
    def want(expr)
      unit = Unit.parse(expr)
      val  = unit.convert(self)
      self.class.new( val, expr, unit )
    end
    alias convert want

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

    # Comparison. Returns +true+ if +self+ has the same value as +other+.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @return [Boolean]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def  == (other)
      @value  == @unit.convert(other)
    end

    # Comparison. Returns +true+ if +self+ is greather-than or equal-to +other+.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @return [Boolean]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def  >= (other)
      @value  >= @unit.convert(other)
    end

    # Comparison. Returns +true+ if +self+ is less-than or equal-to +other+.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @return [Boolean]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def  <= (other)
      @value  <= @unit.convert(other)
    end

    # Comparison. Returns +true+ if +self+ is less than +other+.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @return [Boolean]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def  <  (other)
      @value  <  @unit.convert(other)
    end

    # Comparison. Returns +true+ if +self+ is greater than +other+.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @return [Boolean]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def  >  (other)
      @value  >  @unit.convert(other)
    end

    # Closeness. Returns +true+ if difference between +self+ and +other+ is
    # smaller than +epsilon+ times sum of their absolute values.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @param  [Phys::Quantity] other
    # @param  [Numeric] epsilon
    # @return [Boolean]
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def close_to(other,epsilon=Float::EPSILON)
      other_value = @unit.convert(other)
      abs_sum = @value.abs+other_value.abs
      abs_sum==0 || (@value-other_value).abs/abs_sum <= epsilon
    end

    # Exponentiation.
    # @param  [Numeric] n
    # @return [Phys::Quantity] a quantity in the +n+ -powered unit of +self+.
    # @raise  [Phys::UnitError] if unit conversion is failed.
    def **(n)
      if @expr.nil?
        expr = nil
      elsif /^[A-Za-z_]+&/o =~ @expr
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
      self.class.to_s+"["+Unit::Utils.num_inspect(@value)+expr+"] "+@unit.inspect
    end
  end
end
