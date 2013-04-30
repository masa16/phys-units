$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
require "phys/units"

U = Phys::Unit
Q = Phys::Quantity

RSpec::Matchers.define :be_sfloat_close_to do |y|
  match do |x|
    if x==0 && y==0
      true 
    else
      x = x.to_f
      (x-y).abs/(x.abs+y.abs) < 1.2e-7
    end
  end
end

RSpec::Matchers.define :be_a_quantity_close_to do |expected|
  match do |actual|
    if !(Phys::Quantity===actual && Phys::Quantity===expected)
      false
    else
      actual.close_to(expected,1.2e-7)
    end
  end
end
