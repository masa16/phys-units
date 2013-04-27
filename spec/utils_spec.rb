$LOAD_PATH.unshift File.dirname(__FILE__)
require "helper"

Utils = Phys::Unit::Utils

describe "UnitUtils test" do

  describe Utils.num_inspect(Rational(1609344,1000)) do
    it {should == "1609.344"}
  end

  describe Utils.num_inspect(Rational(1000,1609344)) do
    it {should == "(1/1609.344)"}
  end

end
