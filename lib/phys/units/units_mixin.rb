module Phys

  # @visibility private
  module UnitMeasures
    def self.included(mod)
      Phys::Unit::LIST.each do |k,u|
        if /^[A-Z]\w*$/ =~ k
          const_set(k,u)
        end
      end
    end
  end

  # Defines method with unit name.
  # *Caution*: Variable names may conflict with unit names.
  # @example
  #   Phys::UnitsMixin.module_eval do
  #     puts 123.4*km
  #     puts (23*mile/hr).want(m/s)
  #     puts h.to_si
  #     case mile/hr
  #     when m
  #       puts "length"
  #     when m/s
  #       puts "velocity"
  #     else
  #       puts "other"
  #     end
  #   end
  #
  #   include Phys::UnitsMixin
  #
  #   (1*miles/hr).want m/s    #=> Phys::Quantity[0.44704,"m/s"]
  #
  module UnitsMixin
    include UnitMeasures
    module_function
    alias method_missing_units_alias method_missing
    def method_missing(method, *args, &block)
      if unit=Phys::Unit.find_unit(method)
        raise "argument must be empty" unless args.empty?
        Phys::Quantity.new(1,method,unit)
      else
        method_missing_units_alias(method, *args, &block)
      end
    end

    def print_units(unit=nil)
      Phys::Unit::LIST.each do |k,u|
        if unit.nil? || unit===u
          len = 32 - k.size
          len = 1 if len < 1
          puts k+" "*len+"#{u.expr}"
        end
      end
      nil
    end
  end

  # ActiveSupport-like mix-in.
  # *Caution*: This kind of global change will cause unexpected problems.
  # @example
  #   class Numeric
  #     include Phys::UnitsNumericMixin
  #   end
  #
  #   (1.miles/1.hr).want 'm/s'  #=> Phys::Quantity[0.44704,"m/s"]
  module UnitsNumericMixin
    alias method_missing_units_alias method_missing
    def method_missing(method, *args, &block)
      if unit=Phys::Unit.find_unit(method)
        raise "argument must be empty" unless args.empty?
        Phys::Quantity.new(self,method,unit)
      else
        method_missing_units_alias(method, *args, &block)
      end
    end
  end

end
