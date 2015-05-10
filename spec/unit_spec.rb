$LOAD_PATH.unshift File.dirname(__FILE__)
require "helper"

describe "Create Units" do

  describe U[1] do
    it {is_expected.to be_an_instance_of Phys::Unit}
    its(:factor) {is_expected.to eq 1}
    its(:conversion_factor) {is_expected.to eq 1}
    its(:name) {is_expected.to be_nil}
    its(:expr) {is_expected.to be_nil}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq ""}
    it {is_expected.to be_dimensionless}
    it {is_expected.to be_scalar}
    it {is_expected.to be_operable}
  end

  describe U[2] do
    it {is_expected.to be_an_instance_of Phys::Unit}
    its(:factor) {is_expected.to eq 2}
    its(:conversion_factor) {is_expected.to eq 2}
    its(:name) {is_expected.to be_nil}
    its(:expr) {is_expected.to be_nil}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "2"}
    it {is_expected.to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.to be_operable}
  end

  describe U['pi'] do
    it {is_expected.to be_an_kind_of Phys::Unit}
    its(:factor) {is_expected.to eq 1}
    its(:conversion_factor) {is_expected.to eq Math::PI}
    its(:name) {is_expected.to eq 'pi'}
    its(:expr) {is_expected.to eq '!dimensionless'}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({'pi'=>1})}
    its(:dimension_value) {is_expected.to eq Math::PI}
    its(:string_form) {is_expected.to eq "pi"}
    it {is_expected.to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.to be_operable}
  end

  describe U['m'] do
    it {is_expected.to be_an_kind_of Phys::Unit}
    its(:factor) {is_expected.to eq 1}
    its(:conversion_factor) {is_expected.to eq 1}
    its(:name) {is_expected.to eq 'm'}
    its(:expr) {is_expected.to eq '!'}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({'m'=>1})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "m"}
    it {is_expected.not_to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.to be_operable}
  end

  describe U[:m] do
    it {is_expected.to eq U["m"]}
  end

  describe U['miles'] do
    it {is_expected.to be_an_kind_of Phys::Unit}
    its(:factor) {is_expected.to eq 1609.344}
    its(:factor) {is_expected.to be_an_instance_of Rational}
    its(:conversion_factor) {is_expected.to eq 1609.344}
    its(:name) {is_expected.to eq 'mile'}
    its(:expr) {is_expected.to eq "5280 ft"}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({'m'=>1})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "1609.344 m"}
    it {is_expected.not_to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.to be_operable}
  end

  describe 1.609344*U['km'] do
    it {is_expected.to be_an_kind_of Phys::Unit}
    it {is_expected.to eq Phys::Unit[:miles]}
    its(:factor) {is_expected.to eq 1609.344}
    its(:conversion_factor) {is_expected.to eq 1609.344}
    its(:name) {is_expected.to be_nil}
    its(:expr) {is_expected.to be_nil}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({'m'=>1})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "1609.344 m"}
    it {is_expected.not_to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.to be_operable}
  end

  describe U['g'] do
    it {is_expected.to be_an_instance_of Phys::Unit}
    its(:factor) {is_expected.to eq Rational(1,1000)}
    its(:conversion_factor) {is_expected.to eq Rational(1,1000)}
    its(:name) {is_expected.to eq 'g'}
    #its(:expr) {is_expected.to eq 'gram'}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({'kg'=>1})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "0.001 kg"}
    it {is_expected.not_to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.to be_operable}
  end


  describe U['h'] do
    it {is_expected.to be_an_instance_of Phys::Unit}
    its(:factor) {is_expected.to be_within(1e-16*1e-33).of 6.626069574766962e-34}
    its(:conversion_factor) {is_expected.to be_within(1e-16*1e-33).of 6.626069574766962e-34}
    its(:name) {is_expected.to eq 'h'}
    its(:expr) {is_expected.to eq "4.135667516e-15 eV s"}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({'kg'=>1,'m'=>2,'s'=>-1})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "6.626069574766962e-34 s^-1 kg m^2"}
    it {is_expected.not_to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.to be_operable}
  end

  describe U['e'] do
    it {is_expected.to be_an_instance_of Phys::Unit}
    its(:factor) {is_expected.to be_within(1e-15*1e-18).of 1.602176565e-19}
    its(:conversion_factor) {is_expected.to be_within(1e-15*1e-18).of 1.602176565e-19}
    its(:name) {is_expected.to eq 'e'}
    its(:expr) {is_expected.to eq "1.602176565e-19 C"}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({'A'=>1,'s'=>1})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "1.602176565e-19 A s"}
    it {is_expected.not_to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.to be_operable}
  end

  describe U.parse('123.5 s') do
    it {is_expected.to be_an_instance_of Phys::Unit}
    its(:factor) {is_expected.to eq 123.5}
    its(:conversion_factor) {is_expected.to eq 123.5}
    its(:name) {is_expected.to be_nil}
    its(:expr) {is_expected.to be_nil}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({'s'=>1})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "123.5 s"}
    it {is_expected.not_to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.to be_operable}
  end

  describe U['m']/U['s'] do
    it {is_expected.to be_an_instance_of Phys::Unit}
    its(:factor) {is_expected.to eq 1}
    its(:conversion_factor) {is_expected.to eq 1}
    its(:name) {is_expected.to be_nil}
    its(:expr) {is_expected.to be_nil}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({'m'=>1, 's'=>-1})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "m s^-1"}
    it {is_expected.not_to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.to be_operable}
    it {is_expected.to be_comformable_with Q[1,'miles/hr']}
  end

  describe U.parse('(m/s)**2') do
    it {is_expected.to be_an_instance_of Phys::Unit}
    its(:factor) {is_expected.to eq 1}
    its(:conversion_factor) {is_expected.to eq 1}
    its(:name) {is_expected.to be_nil}
    its(:expr) {is_expected.to be_nil}
    its(:offset) {is_expected.to be_nil}
    its(:dimension) {is_expected.to eq({'m'=>2, 's'=>-2})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "m^2 s^-2"}
    it {is_expected.not_to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.to be_operable}
  end

  describe U.parse("3.6 km/hour") do
    its(:string_form) {is_expected.to eq "m s^-1"}
  end

  describe U['tempC'] do
    it {is_expected.to be_an_instance_of Phys::OffsetUnit}
    its(:factor) {is_expected.to eq 1}
    its(:conversion_factor) {is_expected.to eq 1}
    its(:name) {is_expected.to eq 'tempC'}
    its(:expr) {is_expected.to be_nil}
    its(:offset) {is_expected.to eq 273.15}
    its(:dimension) {is_expected.to eq({'K'=>1})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "K"}
    it {is_expected.not_to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.not_to be_operable}
  end

  describe U['tempF'] do
    it {is_expected.to be_an_instance_of Phys::OffsetUnit}
    its(:factor) {is_expected.to eq Rational(5,9)}
    its(:factor) {is_expected.to be_an_instance_of Rational}
    its(:conversion_factor) {is_expected.to eq Rational(5,9)}
    its(:name) {is_expected.to eq 'tempF'}
    its(:expr) {is_expected.to be_nil}
    its(:offset) {is_expected.to eq Rational(45967,180)}
    its(:dimension) {is_expected.to eq({'K'=>1})}
    its(:dimension_value) {is_expected.to eq 1}
    its(:string_form) {is_expected.to eq "(1/1.8) K"}
    it {is_expected.not_to be_dimensionless}
    it {is_expected.not_to be_scalar}
    it {is_expected.not_to be_operable}
  end

  describe "temperature unit" do
    it "operation error" do
      expect {U['tempC']*2}.to raise_error(Phys::UnitError)
    end
  end

end
