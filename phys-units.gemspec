# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phys/units/version'

Gem::Specification.new do |spec|
  spec.name          = "phys-units"
  spec.version       = Phys::Unit::VERSION
  spec.authors       = ["Masahiro TANAKA"]
  spec.email         = ["masa16.tanaka@gmail.com"]
  spec.summary       = %q{Library for Unit conversion of Physical Quantities using GNU Units data. Formerly 'Quanty'.}
  spec.description   = %q{Library for Unit conversion of Physical Quantities. Features: (1) It uses rich database of GNU Units. (2) It does not modify built-in classes. Former name is 'Quanty'.}
  spec.homepage      = "https://github.com/masa16/phys-units"
  spec.license       = "GPL"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
