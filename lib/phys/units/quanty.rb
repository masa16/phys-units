require "phys/units"

# Compatibility to Quanty, the former name.
# Activated by:
#   requie "phys/units/quanty"
class Quanty < Phys::Quantity
end

def Quanty(*arg); Phys::Quantity(*a)
end
