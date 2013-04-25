#
# phys/units/quantity.rb
#
#   Copyright (c) 2001-2013 Masahiro Tanaka <masa16.tanaka@gmail.com>
#
#   This program is free software.
#   You can distribute/modify this program under the terms of
#   the GNU General Public License version 2 or later.

module Phys

  def Quantity(*a)
    Quantity.new(*a)
  end

  class Quantity #< Numeric

    def self.[](*a)
      self.new(*a)
    end

    def initialize(*a)
      case a.size
      when 1
        if a[0].kind_of? String
          @val,@expr = 1, a[0]
        else
          @val,@expr = a[0], ''
        end
        @unit = Unit.parse(@expr)
      when 2
        @val,@expr = a
        @unit = Unit.parse(@expr)
        if !@unit.kind_of? Unit
          raise ArgumentError, "cannot find unit for '#{@expr}'"
        end
      when 3
        @val,@expr,@unit = a
        if !@unit.kind_of? Unit
          raise ArgumentError, "third arg must be Phys::Unit"
        end
      else
        raise ArgumentError, 'wrong # of arguments'
      end
    end

    attr_reader :val
    attr_reader :expr
    attr_reader :unit
    alias value val

    def convert(expr)
      unit = Unit.parse(expr)
      val  = unit.convert(self)
      self.class.new( val, expr, unit )
    end
    alias want convert

    def +(other)
      val = @val + @unit.convert(other)
      if @expr==''
        val
      else
        self.class.new( val, @expr, @unit )
      end
    end

    def -(other)
      val = @val - @unit.convert(other)
      if @expr==''
        val
      else
        self.class.new( val, @expr, @unit )
      end
    end

    def +@ ; self.class.new(  @val, @expr, @unit ) end
    def -@ ; self.class.new( -@val, @expr, @unit ) end

    def <=> (other); @val <=> @unit.convert(other) end
    def  == (other); @val  == @unit.convert(other) end
    def  >= (other); @val  >= @unit.convert(other) end
    def  <= (other); @val  <= @unit.convert(other) end
    def  <  (other); @val  <  @unit.convert(other) end
    def  >  (other); @val  >  @unit.convert(other) end

    def **(n)
      if /^[A-Za-z_]+&/o =~ @expr
        expr = @expr+'^'+n.to_s
      else
        expr = '('+@expr+')^'+n.to_s+''
      end
      self.class.new( @val**n, expr, @unit**n )
    end

    def enclose_expr
      return nil if @expr.empty?
      if /\/|\||per/o =~ @expr
        '('+@expr+')'
      else
        @expr
      end
    end

    def enclose_expr_div
      return nil if @expr.empty?
      if /\w[^\w]+\w/o =~ @expr
        '/('+@expr+')'
      else
        '/'+@expr
      end
    end

    def *(other)
      if other.kind_of?(self.class)
        a = [self.enclose_expr, other.enclose_expr]
        a.delete(nil)
        self.class.new( @val*other.val, a.join(' '), @unit*other.unit )
      else
        self.class.new( @val*other, @expr, @unit )
      end
    end

    def /(other)
      if other.kind_of?(self.class)
        a = [self.enclose_expr, other.enclose_expr_div]
        a.delete(nil)
        self.class.new( @val/other.val, a.join, @unit/other.unit )
      else
        self.class.new( @val/other, @expr, @unit )
      end
    end

    def coerce(other)
      [ self.class.new(other), self ]
    end

    def to_base_unit
      unit = @unit.base_unit
      val  = unit.convert(self)
      expr = unit.unit_string
      self.class.new( val, expr, unit )
    end
    alias to_si to_base_unit
    alias to_SI to_base_unit

    def to_f
      @unit.convert_to_float(@val)
    end
    alias to_float to_f

    def to_s
      self.class.to_s + "[" + 
        Unit::Utils.num_inspect(@val) +
        ",'" +@expr + "']"
    end

    def inspect
      "<"+self.class.to_s+":" + 
        Unit::Utils.num_inspect(@val) +
        ",'" +@expr + "',"+@unit.inspect+">"
    end
  end
end
