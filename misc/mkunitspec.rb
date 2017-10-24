$LOAD_PATH << "./lib"
require 'phys/units'

$debug=false

def close_values(a,b)
  (a-b).abs < (a.abs+b.abs)*3e-8
end

puts <<EOL
# -*- coding: utf-8 -*-
$LOAD_PATH.unshift File.dirname(__FILE__)
require "helper"

describe "Unit Conversion" do
EOL

keys = Phys::Unit::LIST.keys
keys.each do |k,u|
  $stderr.puts k  if $debug
  u = Phys::Unit::LIST[k]
  $stderr.puts u  if $debug
  f = u.conversion_factor
  s = u.base_unit.string_form
  #s = '1' if s==''
  $stderr.puts "#{k}, #{u.name}, #{u.string_form}, #{u.factor} base: #{f}, #{s}" if $debug
  n = u.name
  if /'/ =~ n
    c = "units "#{n}" '#{s}'"
    $stderr.puts c if $debug
    next
  else
    c = "units '#{n}' '#{s}'"
  end
  $stderr.puts c if $debug
  x = `#{c}`
  $stderr.puts x if $debug

  if /\* ([\d.e+-]+)\s+\/ ([\d.e+-]+)/m =~ x
    factor = $1
    s2 = (s=='') ? "" : ",#{s.inspect}"
    puts <<EOL
  describe Q[1,#{n.inspect}] do
    it {is_expected.to be_a_quantity_close_to Q[#{factor}#{s2}] }
  end
EOL
    factor = factor.to_f
    $stderr.puts "factor = #{factor} <=> f=#{f} => #{factor.to_f<=>f}" if $debug
    if !close_values(factor, f)
      $stderr.puts "#{k}, #{u.name}, #{u.string_form}, #{u.factor} base: #{f}, #{s}"
      $stderr.puts c
      $stderr.puts x
      $stderr.puts "factor = #{factor} <=> f=#{f} => #{factor<=>f}"
      $stderr.puts "diff = #{(factor-f).abs/(factor.abs+f.abs)}"
      $stderr.puts "--"
    end
  end
end

puts <<EOL
end
EOL
