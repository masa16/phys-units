require "phys/units"

# @visibility private
class Numeric
  include Phys::UnitsNumericMixin
end

module Phys
  class Quantity
    include Phys::UnitsNumericMixin
  end
end

extend Phys::UnitsMixin
