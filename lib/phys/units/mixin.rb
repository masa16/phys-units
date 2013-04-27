require "phys/units"

class Numeric
  alias method_missing_orig method_missing
  def method_missing(method, *args, &block)
    if unit=Phys::Unit.find_unit(method.to_s)
      Phys::Quantity.new(self,nil,unit)
    else
      method_missing_orig(method,*args, &block)
    end
  end
end
