if RUBY_VERSION<'1.9.0'
  require "rational"
end
require "phys/units/version"
require "phys/units/errors.rb"
require "phys/units/unit_class.rb"
require "phys/units/unit.rb"
require "phys/units/utils.rb"
require "phys/units/parse.rb"
require "phys/units/quantity.rb"
require "phys/units/load_units.rb"
require "phys/units/units_mixin.rb"
