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
      # Same as Quantity.new.
      def [](*a)
        self.new(*a)
      end
    end

    # Initialize a new quantity.
    # _value_: Numeric value of quantity.
    # _expr_: Unit string. Result of Unit.parse(_expr_) is used as a unit.
    # _unit_: (optional) Unit of quantity instead of parsing _expr_.
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

    attr_reader :val
    attr_reader :expr
    attr_reader :unit

    # Returns the value of the quantity.
    alias value val

    # Conversion to a quantity in another _expr_ unit.
    def want(expr)
      unit = Unit.parse(expr)
      val  = unit.convert(self)
      self.class.new( val, expr, unit )
    end
    alias convert want

    # Addition of two quantities.
    # Operation is made after the unit of _other_ is
    # converted to the unit of _self_.
    # Exception is raised if unit conversion is failed.
    # Returns an instance of Quantity class in the _self_ unit.
    def +(other)
      val = @val + @unit.convert_scale(other)
      self.class.new( val, @expr, @unit )
    end

    # Subtraction of two quantities.
    # Operation is made after the unit of _other_ is
    # converted to the unit of _self_.
    # Exception is raised if unit conversion is failed.
    # Returns an instance of Quantity class in _self_ unit.
    def -(other)
      val = @val - @unit.convert_scale(other)
      self.class.new( val, @expr, @unit )
    end

    def abs
      self.class.new( @val.abs, @expr, @unit )
    end

    def abs2
      self**2
    end

    def ceil
      self.class.new( @val.ceil, @expr, @unit )
    end

    def round
      self.class.new( @val.round, @expr, @unit )
    end

    def floor
      self.class.new( @val.floor, @expr, @unit )
    end

    def truncate
      self.class.new( @val.truncate, @expr, @unit )
    end

    # Unary Plus. Returns self.
    def +@ ; self.class.new(  @val, @expr, @unit ) end

    # Unary Minus. Returns the negated quantity.
    def -@ ; self.class.new( -@val, @expr, @unit ) end

    # Comparison of quantities. Comparison is made after
    # converting _other_ to a quantity in the unit of _self_.
    def <=> (other); @val <=> @unit.convert(other) end

    # Comparison of quantities. Comparison is made after
    # converting _other_ to a quantity in the unit of _self_.
    def  == (other); @val  == @unit.convert(other) end

    # Comparison of quantities. Comparison is made after
    # converting _other_ to a quantity in the unit of _self_.
    def  >= (other); @val  >= @unit.convert(other) end

    # Comparison of quantities. Comparison is made after
    # converting _other_ to a quantity in the unit of _self_.
    def  <= (other); @val  <= @unit.convert(other) end

    # Comparison of quantities. Comparison is made after
    # converting _other_ to a quantity in the unit of _self_.
    def  <  (other); @val  <  @unit.convert(other) end

    # Comparison of quantities. Comparison is made after
    # converting _other_ to a quantity in the unit of _self_.
    def  >  (other); @val  >  @unit.convert(other) end

    # Power of a quantity.
    # Returns an instance of Quantity class in a powerd unit.
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

    def enclose_expr     #:nodoc: used internally
      return nil if @expr.nil?
      if /\/|\||per/o =~ @expr
        '('+@expr+')'
      else
        @expr
      end
    end
    
    def enclose_expr_div    #:nodoc: used internally
      return nil if @expr.nil?
      if /\w[^\w]+\w/o =~ @expr
        '/('+@expr+')'
      else
        '/'+@expr
      end
    end

    # Multiplication of two quantities.
    # Returns an instance of Quantity class in a multiplied unit.
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
    # Returns an instance of Quantity class in a divided unit.
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
    # Returns an instance of Quantity class in a divided unit.
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

    # Division with Remainder of two quantities.
    # Before the operation, it converts _other_ into the _self_ unit.
    def div(other)
      @val.div( @unit.convert(other) )
    end

    # Remainder of two quantities.
    # Before the operation, it converts _other_ into the _self_ unit.
    def remainder(other)  #:nodoc: used internally
      @val.remainder( @unit.convert(other) )
    end

    # Modulo of two quantities.
    # Before the operation, it converts _other_ into the _self_ unit.
    def %(other)
      @val % @unit.convert(other)
    end
    alias modulo %

    # Division and Modulo of two quantities.
    # Before the operation, it converts _other_ into the _self_ unit.
    def divmod(other)
      @val.divmod( @unit.convert(other) )
    end

    def coerce(other)
      [ self.class.new(other), self ]
    end

    # Conversion to base unit.
    # Returns the quantity converted to a base unit.
    def to_base_unit
      unit = @unit.base_unit
      val  = unit.convert(self)
      expr = unit.unit_string
      self.class.new( val, expr, unit )
    end
    alias to_si to_base_unit
    alias to_SI to_base_unit

    # Conversion to Numeric.
    # Returns Numeric if the unit is dimensionless.
    # Raises an Error if the unit is non-dminensionless.
    def to_numeric
      @unit.convert_to_numeric(@val)
    end
    alias to_num to_numeric

    def to_f
      to_numeric.to_f
    end
    alias to_float to_f

    def to_i
      to_numeric.to_i
    end
    alias to_int to_i
    alias to_integer to_i

    def to_r
      to_numeric.to_r
    end
    alias to_rational to_r

    def to_s
      if @expr
        expr = ",'" +@expr+"'"
      else
        expr = ""
      end
      self.class.to_s+"["+Unit::Utils.num_inspect(@val)+expr+"]"
    end

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
