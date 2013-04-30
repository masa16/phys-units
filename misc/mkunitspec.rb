$LOAD_PATH << "./lib"
require 'phys/units'

$debug=false

def close_values(a,b)
  (a-b).abs < (a.abs+b.abs)*3e-8
end

puts <<EOL
$LOAD_PATH.unshift File.dirname(__FILE__)
require "helper"

describe "Unit Conversion" do
EOL

keys = Phys::Unit::LIST.keys
keys.each do |k,u|
  puts k  if $debug
  u = Phys::Unit::LIST[k]
  f = u.conversion_factor
  s = u.base_unit.string_form
  #s = '1' if s==''
  puts "#{k}, #{u.name}, #{u.string_form}, #{u.factor} base: #{f}, #{s}" if $debug
  n = u.name
  if /'/ =~ n
    c = "units "#{n}" '#{s}'"
    puts c if $debug
    next
  else
    c = "units '#{n}' '#{s}'"
  end
  puts c if $debug
  x = `#{c}`
  puts x if $debug

  if /\* ([\d.e+-]+)\s+\/ ([\d.e+-]+)/m =~ x
    factor = $1
    secondarg = if s == ''
                  ""
                else
                  ",#{s.inspect}"
                end
    puts <<EOL
  describe Q[1,#{n.inspect}] do
    it {should be_a_quantity_close_to Q[#{factor}#{secondarg}] }
  end
EOL
    factor = factor.to_f
    puts "factor = #{factor} <=> f=#{f} => #{factor.to_f<=>f}" if $debug
    if !close_values(factor, f)
      puts "#{k}, #{u.name}, #{u.string_form}, #{u.factor} base: #{f}, #{s}"
      puts c
      puts x
      puts "factor = #{factor} <=> f=#{f} => #{factor<=>f}"
      puts "diff = #{(factor-f).abs/(factor.abs+f.abs)}"
      puts "--"
    end
  end
end

puts <<EOL
end
EOL
