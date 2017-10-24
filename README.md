# Phys-Units

[![Build Status](https://travis-ci.org/masa16/phys-units.svg?branch=master)](https://travis-ci.org/masa16/phys-units)

[GNU Units](http://www.gnu.org/software/units/) -compatible Ruby library for
unit conversion of physical quantities.
Major features: (1) It uses rich database of GNU Units.
(2) It provides normal class interface without modifying built-in classes.
Former name is [Quanty](https://rubygems.org/gems/quanty),
the first Ruby units library released in 2001.

* [GitHub](https://github.com/masa16/phys-units)
* [RubyGems](https://rubygems.org/gems/phys-units)
* [Class Documentation](http://rubydoc.info/gems/phys-units/frames/)

## Installation

Install from gem as:

    $ gem install phys-units

Or install from source tree:

    $ ruby setup.rb

Load Phys-Units library in your Ruby script:

    require 'phys/units'

## Overview

### Phys::Quantity
is the primary class of Phys-Units library.
This class represents Physical Quantities with a Unit of measurement.
It contains *Value* and *Unit*.

* *Value* of the quantity is given as the first parameter of
  Quantity constructor (alias is `Quantity[]`).
  It must be a class instance having arithmetic methods,
  but it is not necessary to be a Numeric.
  This is a duck typing way.

        Phys::Quantity[2.5,"miles"].value  #=> 2.5

* *Unit* is an instance of Phys::Unit class.
  It is created from the second argument of Quantity constructor.

        Phys::Quantity[2.5,"miles"].unit   #=> #<Phys::Unit 1609.344,{"m"=>1},@expr="5280 ft">

### Phys::Unit
is a class to represent Physical Units of measurement.
This class is used in the Phys::Quantity for calculations with Units.
It has *Factor* and *Dimension*:

* *Factor* of the unit is a scale factor relative to its base unit.

        Phys::Unit["km"].factor #=> 1000

* *Dimension* of the unit
  is a hash table containing base units and dimensions as key-value pairs.

        Phys::Unit["N"].dimension #=> {"kg"=>1, "m"=>1, "s"=>-2}

### Examples

    require "phys/units"
    Q = Phys::Quantity
    U = Phys::Unit

    Q[1.23,'km'] + Q[4.56,'m']    #=> Phys::Quantity[1.23456,'km']
    Q[123,'mile'] / Q[2,'hr']     #=> Phys::Quantity[61,'mile/hr']
    Q[61,'miles/hr'].want('m/s')  #=> Phys::Quantity[27.26944,'m/s']
    Q[1.0,'are'] == Q[10,'m']**2  #=> true
    Q[70,'tempF'] + Q[10,'degC']  #=> Phys::Quantity[88,'tempF']
    Q[20,'tempC'].want('tempF')   #=> Phys::Quantity[68,'tempF']
    Math.cos(Q[60,'degree'].to_f) #=> 0.5

    U["m/s"] === Q[1,'miles/hr']  #=> true

    case Q[1,"miles/hr"]
    when U["LENGTH"]
      puts "length"
    when U["TIME"]
      puts "time"
    when U["VELOCITY"]
      puts "velocity"
    else
      puts "other"
    end                    #=> "velocity"

## Features

Phys-Units library is differentiated from many other units libraries for Ruby,
by the following features:

* Compatible with GNU Units except currency and nonlinear units.
* Provides 2331 units, 85 prefixes, including UTF-8 unit names.
* Defines Units by reading GNU Units text data
  (See [load_units.rb](https://github.com/masa16/phys-units/blob/master/lib/phys/units/load_units.rb)),
  unlike other libraries which define Units in Ruby code.
* Provides orthodox design of class interface.
* No addition or modification to Ruby standard classes in standard usage,
  to avoid conflicts with other libraries.
* Calculation of values is through Ruby Numeric arithmetic methods.
  Phys-Units does not care it.
* Conversion factors are internally held in Rational form even
  defined as the decimal form such as `1.0e10'.
* PI number has a dimension.
* Japanese Units are available by require 'phys/units/jp'.

## Appendix Feature

Mix-in feature provides a simple unit calculator.
Note that this usage involves global changes on a build-in class and will cause conflicts with other libraries.

    $ irb -r phys/units/mixin

    irb> 2.5.miles/hr >> m/s
    => Phys::Quantity[1.1176,"m/s"]

    irb> 23.tempC >> tempF
    => Phys::Quantity[73.4,"tempF"]

    irb> print_units LENGTH
    m                               !
    meter                           m
    LENGTH                          meter
     :

    irb> print_units ENERGY
    joule                           N m
    J                               joule
    prout                           185.5 keV
     :

## Platforms tested

* ruby 2.4.2p198 (2017-09-14 revision 59899) [x86_64-linux]

## History

* 2017-10-24 ver 1.0.0
    * Unit data from GNU Units version 2.14 (including 2014 CODATA recommended values)
* 2013-04-27 ver 0.9.0
    * Change module name from [Quanty](https://rubygems.org/gems/quanty) to Phys-Units.
    * Unit data from GNU Units version 2.04 (including 2010 CODATA recommended values)

## Copying License

This program is free software.
You can distribute/modify this program
under the same terms as GPL3.
See "COPYING" file.
NO WARRANTY.

## Author

Masahiro TANAKA
