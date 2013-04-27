# Phys-Units

GNU Units-compatible library for Ruby. 
Former name is `Quanty', the first Ruby units library released in 2001.
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
    Q[1.23,'km'] + Q[4.56,'m']    #=> Phys::Quanty[1.23456,'km']
    Q[123,'mile'] / Q[2,'hr']     #=> Phys::Quanty[61,'mile/hr']
    Q[61,'miles/hr'].want('m/s')  #=> Phys::Quanty[27.26944,'m/s']
    Q[1.0,'are'] == Q[10,'m']**2  #=> true
    Q[70,'tempF'] + Q[10,'tempC'] #=> Phys::Quantity[88,'tempF']
    Q[20,'tempC'].want('tempF')   #=> Phys::Quantity[68,'tempF']
    Math.cos(Q[60,'degree'].to_f) #=> 0.5

## Features

This library is discriminated from the other many units libraies
by the following features.
* Compatible with GNU Units except the nonlinear units.
* Provides 2415 units, 85 prefixes, including UTF-8 unit names.
* All the units are defined in unit data file of GNU Units except temperatures.
  Unit definition is not provided as codes.
* No addition or modification to standar classes by default,
  avoiding conflict with other libraries.
