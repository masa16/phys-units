# Phys-Units

GNU Units-compatible library for Ruby. 
Former name is [Quanty](http://narray.rubyforge.org/quanty/quanty-en.html),
the first Ruby units library released in 2001.
This library provides the following Classes:

* Phys::Quantity
* Phys::Unit

## Installation

Add this line to your application's Gemfile:

    gem 'phys-units'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install phys-units

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

## Features

Phys-Units library is discriminated from many other units libraies for Ruby,
by the following features:
* Compatible with GNU Units except nonlinear units.
* Provides 2415 units, 85 prefixes, including UTF-8 unit names.
* All units are defined in a unit data file from GNU Units
  and not defined as a Ruby codes, except temperature definitions.
* No addition or modification to Ruby standard classes by default,
  avoiding conflict with other libraries.
* Calculation of values is through Ruby Numeric arithmetic methods.
  None of the Phys-Units lib's buisiness.
* Conversion factors are held in Rational even defined
  in the decimal form such as `1.0e10'.
* PI number has a dimension.
