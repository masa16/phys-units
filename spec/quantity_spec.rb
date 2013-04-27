$LOAD_PATH.unshift File.dirname(__FILE__)
require "helper"

describe "Create quantities" do

  describe Q[1] do
    it {should be_an_instance_of Phys::Quantity}
    its(:value) {should == 1}
    its(:unit) {should be_an_instance_of Phys::Unit}
    its(:unit) {should == U[1]}
  end

  describe Q[1,""] do
    it {should be_an_instance_of Phys::Quantity}
    its(:value) {should == 1}
    its(:unit) {should be_an_instance_of Phys::Unit}
    its(:unit) {should == U['']}
  end

  describe "temperature" do 
    it {( Q[1,"tempC"] - Q[1,"tempC"] ).should == Q[0,"tempC"]}
    it {( Q[50,"tempF"] + Q[10,"tempC"] ).should == Q[68,"tempF"]}
    it {( 2 * Q[2,"tempF"] ).should == Q[4,"tempF"]}
    it {( Q[2,"tempF"] * 2 ).should == Q[4,"tempF"]}
    it "should be tempC*tempC" do
      expect{ Q[1,"tempC"] * Q[1,"tempC"] }.to raise_error
    end
  end

  describe Q[0,"tempC"].want("tempF") do
    its(:value) {should == 32}
  end

  describe Q[32,"tempF"].want("tempC") do
    its(:value){should == 0}
  end

  describe "" do
    it { U.parse("3.6 km/hour").unit_string.should == "m s^-1" }
    it { Q[36,"km/hour"].to_base_unit.should == Q[10,"m/s"] }
    it { Q[36,"km/hour"].want('m/s').value.should == 10 }
    it { Q[1,"radian"].want("degree").value.should == Q[180,"1/pi"].want("").value }
    it { Math.sin(Q[30,"degree"].to_f).should be_within(1e-15).of 0.5 }
    it { Q[100,"cm"].want("m").value.should == 1 }
  end

end
