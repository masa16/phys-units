#
# phys/units/quantity.rb
#
#   Copyright (c) 2001-2013 Masahiro Tanaka <masa16.tanaka@gmail.com>
#
#   This program is free software.
#   You can distribute/modify this program under the terms of
#   the GNU General Public License version 3 or later.

module Phys

  def Quantity(*a)
    Quantity.new(*a)
  end

  # Phys::Quantity is a class to represent physical quantities
  # with unit of measure.
  # It contains a value in Numeric or similar class,
  # and unit in Phys::Unit class.
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
      # @param  [String] expr  unit expression.
      #         If +expr+ is not supplied, it becomes dimeinsionless.
      # @return [Phys::Quantity]
      # @raise  [Phys::UnitConversionError] if unit conversion is failed.
      def [](value,expr=nil)
        self.new(value,expr)
      end
    end

    # Initialize a new quantity.
    # @param  [Object] value
    #         Value of quantity.
    #         +value+ must be a class instance having arithmetic methods
    #         in a duck typing way.
    # @param  [String] expr  unit expression.
    #         If +expr+ is not supplied, it becomes dimeinsionless.
    # @param  [Phys::Unit] unit  (optional)
    # @raise  [Phys::UnitConversionError] if unit conversion is failed.
    #
    def initialize(value,expr=nil,unit=nil)
      @val = value
      expr = expr.to_s if Symbol===expr
      @expr = (expr=='') ? nil : expr
      @unit = unit
      if @unit.nil?
        @unit = Unit.parse(@expr||1)
      elsif !@unit.kind_of? Unit
        raise ArgumentError, "third arg must be Phys::Unit"
      end
    end

    # @return [Object] value of the quantity
    attr_reader :val
    alias value val

    # @return [String] unit expression
    attr_reader :expr

    # @return [Phys::Unit] unit
    attr_reader :unit

    # Conversion to a quantity in another unit.
    # @param  [String] expr unit expression.
    # @return [Phys::Quantity] quantity in the unit of +expr+.
    # @raise  [Phys::UnitConversionError] if unit conversion is failed.
    #
    def want(expr)
      unit = Unit.parse(expr)
      val  = unit.convert(self)
      self.class.new( val, expr, unit )
    end
    alias convert want

    # Addition of two quantities.
    # Before the operation, it converts +other+ to the unit of +self+.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+.
    # * If the +other+ param is *not* Phys::Quantity,
    #   both params must be dimensionless.
    # @param  [Object] other
    # @return [Phys::Quantity] a quantity in the unit of +self+.
    # @raise  [Phys::UnitConversionError] if unit conversion is failed.
    #
    def +(other)
      val = @val + @unit.convert_scale(other)
      self.class.new( val, @expr, @unit )
    end

    # Subtraction of two quantities.
    # Before the operation, it converts +other+ to the unit of +self+.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+.
    # * If the +other+ param is *not* Phys::Quantity,
    #   both params must be dimensionless.
    # @param  [Object] other
    # @return [Phys::Quantity] a quantity in the unit of +self+.
    # @raise  [Phys::UnitConversionError] if unit conversion is failed.
    #
    def -(other)
      val = @val - @unit.convert_scale(other)
      self.class.new( val, @expr, @unit )
    end

    # @return [Phys::Quantity] abs quantity in the unit of +self+.
    def abs
      self.class.new( @val.abs, @expr, @unit )
    end

    # @return [Phys::Quantity] abs2 quantity in the squared unit of +self+.
    def abs2
      self**2
    end

    # @return [Phys::Quantity] ceil quantity in the unit of +self+.
    def ceil
      self.class.new( @val.ceil, @expr, @unit )
    end

    # @return [Phys::Quantity] round quantity in the unit of +self+.
    def round
      self.class.new( @val.round, @expr, @unit )
    end

    # @return [Phys::Quantity] floor quantity in the unit of +self+.
    def floor
      self.class.new( @val.floor, @expr, @unit )
    end

    # @return [Phys::Quantity] truncate quantity in the unit of +self+.
    def truncate
      self.class.new( @val.truncate, @expr, @unit )
    end

    # Unary Plus.
    # @return [Phys::Quantity] +self+.
    def +@
      self.class.new(  @val, @expr, @unit )
    end

    # Unary Minus.
    # @return [Phys::Quantity] a quantity in the unit of +self+.
    def -@
      self.class.new( -@val, @expr, @unit )
    end

    # Comparison of quantities.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @return [Integer]
    def <=> (other)
      @val <=> @unit.convert(other)
    end

    # Comparison of quantities.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @return [Boolean]
    def  == (other)
      @val  == @unit.convert(other)
    end

    # Comparison of quantities.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @return [Boolean]
    def  >= (other)
      @val  >= @unit.convert(other)
    end

    # Comparison of quantities.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @return [Boolean]
    def  <= (other)
      @val  <= @unit.convert(other)
    end

    # Comparison of quantities.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @return [Boolean]
    def  <  (other)
      @val  <  @unit.convert(other)
    end

    # Comparison of quantities.
    # Before the comparison, it converts +other+ to the unit of +self+.
    # @return [Boolean]
    def  >  (other)
      @val  >  @unit.convert(other)
    end

    # Power of a quantity.
    # @param  [Numeric] n
    # @return [Phys::Quantity] a quantity in the +n+ -powered unit of +self+.
    # @raise  [Phys::UnitConversionError] if unit conversion is failed.
    #
    def **(n)
      if @expr.nil?
        expr = nil
      elsif /^[A-Za-z_]+&/o =~ @expr
        expr = @expr+'^'+n.to_s
      else
        expr = '('+@expr+')^'+n.to_s+''
      end
      self.class.new( @val**n, expr, @unit**n )
    end

    # (internally used method)
    # @private
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
    # @private
    # @return [String]
    def enclose_expr_div    #:nodoc: used internally
      return nil if @expr.nil?
      if /\w[^\w]+\w/o =~ @expr
        '/('+@expr+')'
      else
        '/'+@expr
      end
    end

    # Multiplication of two quantities.
    # If the +other+ param is *not* Phys::Quantity,
    # +other+ is regarded as a dimensionless value.
    # @param  [Object] other
    # @return [Phys::Quantity] a quantity
    # both the values and units are multiplied respectively.
    # @raise  [Phys::UnitOperationError] if unit is not operable.
    #
    def *(other)
      if Quantity===other
        a = [self.enclose_expr, other.enclose_expr]
        a.delete(nil)
        self.class.new( @val*other.val, a.join(' '), @unit*other.unit )
      else
        self.class.new( @val*other, @expr, @unit )
      end
    end

    # Division of two quantities.
    # If the +other+ param is *not* Phys::Quantity,
    # +other+ is regarded as a dimensionless value.
    # @param  [Object] other
    # @return [Phys::Quantity] a quantity
    # both the values and units are divided respectively.
    # @raise  [Phys::UnitOperationError] if unit is not operable.
    #
    def /(other)
      if Quantity===other
        a = [self.enclose_expr, other.enclose_expr_div]
        a.delete(nil)
        self.class.new( @val/other.val, a.join, @unit/other.unit )
      else
        self.class.new( @val/other, @expr, @unit )
      end
    end

    # Division of two quantities.
    # If the +other+ param is *not* Phys::Quantity,
    # +other+ is regarded as a dimensionless value.
    # @param  [Object] other
    # @return [Phys::Quantity] a quantity
    # both the values and units are divided respectively.
    # @raise  [Phys::UnitOperationError] if unit is not operable.
    #
    def quo(other)
      if Quantity===other
        a = [self.enclose_expr, other.enclose_expr_div]
        a.delete(nil)
        self.class.new( @val.quo(other.val), a.join, @unit/other.unit )
      else
        self.class.new( @val.quo(other), @expr, @unit )
      end
    end
    alias fdiv quo

    # Division of two quantities without Remainder.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+,
    #   and returns +div+ of values.
    # * If the +other+ param is *not* Phys::Quantity,
    #   +other+ is regarded as dimensionless,
    #   and returns +div+ of Phys::Quantity.
    # @param  [Object] other
    # @return [Object] div
    # @raise  [Phys::UnitConversionError] if unit conversion is failed.
    #
    def div(other)
      if Quantity===other
        @val.div( @unit.convert(other) )
      else
        self.class.new( @val.div(other), @expr, @unit )
      end
    end

    # Remainder of two quantities.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+,
    #   and returns +remainder+ of values.
    # * If the +other+ param is *not* Phys::Quantity,
    #   +other+ is regarded as dimensionless,
    #   and returns +remainder+ of Phys::Quantity.
    # @param  [Object] other
    # @return [Object] remainder
    # @raise  [Phys::UnitConversionError] if unit conversion is failed.
    #
    def remainder(other)  #:nodoc: used internally
      if Quantity===other
        @val.remainder( @unit.convert(other) )
      else
        self.class.new( @val.remainder(other), @expr, @unit )
      end
    end

    # Modulo of two quantities.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+,
    #   and returns +modulo+ of values.
    # * If the +other+ param is *not* Phys::Quantity,
    #   +other+ is regarded as dimensionless,
    #   and returns +modulo+ of Phys::Quantity.
    # @param  [Object] other
    # @return [Object] modulo
    # @raise  [Phys::UnitConversionError] if unit conversion is failed.
    #
    def %(other)
      if Quantity===other
        @val % @unit.convert(other)
      else
        self.class.new( @val % other, @expr, @unit )
      end
    end
    alias modulo %

    # Division and Modulo of two quantities.
    # * If the +other+ param is Phys::Quantity,
    #   +other+ is converted to the unit of +self+,
    #   and returns +divmod+ of values.
    # * If the +other+ param is *not* Phys::Quantity,
    #   +other+ is regarded as dimensionless,
    #   and returns +divmod+ of Phys::Quantity.
    # @param  [Object] other
    # @return [Array] result of +divmod+, an array of [quotient, modulo].
    # @raise  [Phys::UnitConversionError] if unit conversion is failed.
    #
    def divmod(other)
      if Quantity===other
        @val.divmod( @unit.convert(other) )
      else
        d,m = @val.divmod(other)
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
    # @raise  [Phys::UnitConversionError] if unit conversion is failed.
    #
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
    # @raise  [Phys::UnitConversionError] if the unit is non-dminensionless.
    #
    def to_numeric
      @unit.convert_to_numeric(@val)
    end
    alias to_num to_numeric

    # Conversion to Float.
    # @return [Float]
    # @raise  [Phys::UnitConversionError] if the unit is non-dminensionless.
    #
    def to_f
      to_numeric.to_f
    end
    alias to_float to_f

    # Conversion to Integer.
    # @return [Integer]
    # @raise  [Phys::UnitConversionError] if the unit is non-dminensionless.
    #
    def to_i
      to_numeric.to_i
    end
    alias to_int to_i
    alias to_integer to_i

    # Conversion to Rational.
    # @return [Rational]
    # @raise  [Phys::UnitConversionError] if the unit is non-dminensionless.
    #
    def to_r
      to_numeric.to_r
    end
    alias to_rational to_r

    # Conversion to String.
    # @return [String]
    #
    def to_s
      if @expr
        expr = ",'" +@expr+"'"
      else
        expr = ""
      end
      self.class.to_s+"["+Unit::Utils.num_inspect(@val)+expr+"]"
    end

    # Inspect String.
    # @return [String]
    #
    def inspect
      if @expr
        expr = "," +@expr.inspect
      else
        expr = ""
      end
      "#<"+self.class.to_s+" "+Unit::Utils.num_inspect(@val)+expr+", "+@unit.inspect+">"
    end
  end
end
