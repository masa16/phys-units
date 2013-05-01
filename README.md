# Phys-Units

GNU Units-compatible library for Ruby.
Former name is [Quanty](http://narray.rubyforge.org/quanty/quanty-en.html),
the first Ruby units library released in 2001.

## Phys::Quantity
is the primary class of Phys-Units library, to be manipulated by users.
It contains:

* *Value*
  must be a class instance having arithmetic methods,
  but it is not necessary to be a Numeric.
  This is a duck typing way.
* *Unit*
  is a instance of Phys::Unit class
  obtained by parsing a *expr* string.

See [Phys::Quantity Documentation](http://rubydoc.info/gems/phys-units/frames/Phys/Quantity)
for more details.

## Installation

Install from gem as:

    $ gem install phys-units

Or install from source tree:

    $ ruby setup.rb

## Usage

    require 'phys/units'
    Q = Phys::Quantity
    Q[1.23,'km'] + Q[4.56,'m']    #=> Phys::Quantity[1.23456,'km']
    Q[123,'mile'] / Q[2,'hr']     #=> Phys::Quantity[61,'mile/hr']
    Q[61,'miles/hr'].want('m/s')  #=> Phys::Quantity[27.26944,'m/s']
    Q[1.0,'are'] == Q[10,'m']**2  #=> true
    Q[70,'tempF'] + Q[10,'tempC'] #=> Phys::Quantity[88,'tempF']
    Q[20,'tempC'].want('tempF')   #=> Phys::Quantity[68,'tempF']
    Math.cos(Q[60,'degree'].to_f) #=> 0.5

    require 'phys/units/jp'
    q = Phys::Quantity
    q[1,"寸"].want("cm")    #=> Phys::Quantity[(1/0.33),"cm"]
    q[1,"坪"].want("m^2")   #=> Phys::Quantity[(1/0.3025),"m^2"]
    q[1,"升"].want("l")     #=> Phys::Quantity[(2401/1331),"l"]
    q[1,"貫"].want("kg")    #=> Phys::Quantity[3.75,"kg"]

## Features

Phys-Units library is discriminated from many other units libraies for Ruby,
by the following features:

* Compatible with GNU Units except nonlinear units.
* Provides 2331 units, 85 prefixes, including UTF-8 unit names.
* All units are defined in a unit data file from GNU Units
  and not defined as a Ruby codes, except temperature definitions.
* No addition or modification to Ruby standard classes by default,
  avoiding conflict with other libraries.
* Calculation of values is through Ruby Numeric arithmetic methods.
  None of the Phys-Units lib's buisiness.
* Conversion factors are held in Rational even defined
  in the decimal form such as `1.0e10'.
* PI number has a dimension.

## Platforms tested

* ruby 2.0.0p0 (2013-02-24 revision 39474) [x86_64-linux]

## Copying License

This program is free software.
You can distribute/modify this program
under the same terms as GPL3.
See "COPYING" file.
NO WARRANTY.

## Author

Masahiro TANAKA
