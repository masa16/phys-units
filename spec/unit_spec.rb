$LOAD_PATH.unshift File.dirname(__FILE__)
require "helper"

describe "Create Units" do

  describe U[1] do
    it {should be_an_instance_of Phys::Unit}
    its(:factor) {should == 1}
    its(:conversion_factor) {should == 1}
    its(:name) {should be_nil}
    its(:expr) {should be_nil}
    its(:offset) {should be_nil}
    its(:dimension) {should == {}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == ""}
    it {should be_dimensionless}
    it {should be_scalar}
    it {should be_operable}
  end

  describe U[2] do
    it {should be_an_instance_of Phys::Unit}
    its(:factor) {should == 2}
    its(:conversion_factor) {should == 2}
    its(:name) {should be_nil}
    its(:expr) {should be_nil}
    its(:offset) {should be_nil}
    its(:dimension) {should == {}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "2"}
    it {should be_dimensionless}
    it {should_not be_scalar}
    it {should be_operable}
  end

  describe U['pi'] do
    it {should be_an_kind_of Phys::Unit}
    its(:factor) {should == 1}
    its(:conversion_factor) {should == Math::PI}
    its(:name) {should == 'pi'}
    its(:expr) {should be_nil}
    its(:offset) {should be_nil}
    its(:dimension) {should == {'pi'=>1}}
    its(:dimension_value) {should == Math::PI}
    its(:string_form) {should == "pi"}
    it {should be_dimensionless}
    it {should_not be_scalar}
    it {should be_operable}
  end

  describe U['m'] do
    it {should be_an_kind_of Phys::Unit}
    its(:factor) {should == 1}
    its(:conversion_factor) {should == 1}
    its(:name) {should == 'm'}
    its(:expr) {should be_nil}
    its(:offset) {should be_nil}
    its(:dimension) {should == {'m'=>1}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "m"}
    it {should_not be_dimensionless}
    it {should_not be_scalar}
    it {should be_operable}
  end

  describe U['miles'] do
    it {should be_an_kind_of Phys::Unit}
    its(:factor) {should == 1609.344}
    its(:factor) {should be_an_instance_of Rational}
    its(:conversion_factor) {should == 1609.344}
    its(:name) {should == 'mile'}
    its(:expr) {should == "5280 ft"}
    its(:offset) {should be_nil}
    its(:dimension) {should == {'m'=>1}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "1609.344 m"}
    it {should_not be_dimensionless}
    it {should_not be_scalar}
    it {should be_operable}
  end

  describe 1.609344*U['km'] do
    it {should be_an_kind_of Phys::Unit}
    it {should == Phys::Unit[:miles]}
    its(:factor) {should == 1609.344}
    its(:conversion_factor) {should == 1609.344}
    its(:name) {should be_nil}
    its(:expr) {should be_nil}
    its(:offset) {should be_nil}
    its(:dimension) {should == {'m'=>1}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "1609.344 m"}
    it {should_not be_dimensionless}
    it {should_not be_scalar}
    it {should be_operable}
  end

  describe U['g'] do
    it {should be_an_instance_of Phys::Unit}
    its(:factor) {should == Rational(1,1000)}
    its(:conversion_factor) {should == Rational(1,1000)}
    its(:name) {should == 'g'}
    #its(:expr) {should == 'gram'}
    its(:offset) {should be_nil}
    its(:dimension) {should == {'kg'=>1}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "0.001 kg"}
    it {should_not be_dimensionless}
    it {should_not be_scalar}
    it {should be_operable}
  end


  describe U['h'] do
    it {should be_an_instance_of Phys::Unit}
    its(:factor) {should be_within(1e-16*1e-33).of 6.626069574766962e-34}
    its(:conversion_factor) {should be_within(1e-16*1e-33).of 6.626069574766962e-34}
    its(:name) {should == 'h'}
    its(:expr) {should == "4.135667516e-15 eV s"}
    its(:offset) {should be_nil}
    its(:dimension) {should == {'kg'=>1,'m'=>2,'s'=>-1}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "6.626069574766962e-34 s^-1 kg m^2"}
    it {should_not be_dimensionless}
    it {should_not be_scalar}
    it {should be_operable}
  end

  describe U['e'] do
    it {should be_an_instance_of Phys::Unit}
    its(:factor) {should be_within(1e-15*1e-18).of 1.602176565e-19}
    its(:conversion_factor) {should be_within(1e-15*1e-18).of 1.602176565e-19}
    its(:name) {should == 'e'}
    its(:expr) {should == "1.602176565e-19 C"}
    its(:offset) {should be_nil}
    its(:dimension) {should == {'A'=>1,'s'=>1}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "1.602176565e-19 A s"}
    it {should_not be_dimensionless}
    it {should_not be_scalar}
    it {should be_operable}
  end

  describe U.parse('123.5 s') do
    it {should be_an_instance_of Phys::Unit}
    its(:factor) {should == 123.5}
    its(:conversion_factor) {should == 123.5}
    its(:name) {should be_nil}
    its(:expr) {should be_nil}
    its(:offset) {should be_nil}
    its(:dimension) {should == {'s'=>1}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "123.5 s"}
    it {should_not be_dimensionless}
    it {should_not be_scalar}
    it {should be_operable}
  end

  describe U['m']/U['s'] do
    it {should be_an_instance_of Phys::Unit}
    its(:factor) {should == 1}
    its(:conversion_factor) {should == 1}
    its(:name) {should be_nil}
    its(:expr) {should be_nil}
    its(:offset) {should be_nil}
    its(:dimension) {should == {'m'=>1, 's'=>-1}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "m s^-1"}
    it {should_not be_dimensionless}
    it {should_not be_scalar}
    it {should be_operable}
  end

  describe U.parse('(m/s)**2') do
    it {should be_an_instance_of Phys::Unit}
    its(:factor) {should == 1}
    its(:conversion_factor) {should == 1}
    its(:name) {should be_nil}
    its(:expr) {should be_nil}
    its(:offset) {should be_nil}
    its(:dimension) {should == {'m'=>2, 's'=>-2}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "m^2 s^-2"}
    it {should_not be_dimensionless}
    it {should_not be_scalar}
    it {should be_operable}
  end

  describe U['tempC'] do
    it {should be_an_instance_of Phys::OffsetUnit}
    its(:factor) {should == 1}
    its(:conversion_factor) {should == 1}
    its(:name) {should == 'tempC'}
    its(:expr) {should be_nil}
    its(:offset) {should == 273.15}
    its(:dimension) {should == {'K'=>1}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "K"}
    it {should_not be_dimensionless}
    it {should_not be_scalar}
    it {should_not be_operable}
  end

  describe U['tempF'] do
    it {should be_an_instance_of Phys::OffsetUnit}
    its(:factor) {should == Rational(5,9)}
    its(:factor) {should be_an_instance_of Rational}
    its(:conversion_factor) {should == Rational(5,9)}
    its(:name) {should == 'tempF'}
    its(:expr) {should be_nil}
    its(:offset) {should == Rational(45967,180)}
    its(:dimension) {should == {'K'=>1}}
    its(:dimension_value) {should == 1}
    its(:string_form) {should == "(1/1.8) K"}
    it {should_not be_dimensionless}
    it {should_not be_scalar}
    it {should_not be_operable}
  end

  describe "temperature unit" do
    it "operation error" do
      expect {U['tempC']*2}.to raise_error(Phys::Unit::UnitOperationError)
    end
  end

end
