$LOAD_PATH.unshift File.dirname(__FILE__)
require "helper"

describe "Phys::Quantity" do

  context "methods" do
    describe Q[1.25,"km"] do
      before {@q = Q[1.25,"km"]; @r = Q[500,"m"]}
      it {@q.value.should == 1.25}
      it {@q.expr.should == "km"}
      it {@q.unit.should == Phys::Unit["km"]}
      it {@q.want("cm").value.should == 125000}
      it {(@q + @r).should == Q[1.75,"km"]}
      it {(@q - @r).should == Q[0.75,"km"]}
      it {@q.abs.should == Q[1.25,"km"]}
      it {@q.abs2.should == Q[1.5625,"km^2"]}
      it {@q.ceil.should == Q[2,"km"]}
      it {@q.round.should == Q[1,"km"]}
      it {@q.floor.should == Q[1,"km"]}
      it {@q.truncate.should == Q[1,"km"]}
      it {(+@q).should == Q[1.25,"km"]}
      it {(-@q).should == Q[-1.25,"km"]}
      it {(@q <=> @r).should == 1}
      it {(@q == @r).should be_false}
      it {(@q > @r).should be_true}
      it {(@q >= @r).should be_true}
      it {(@q < @r).should be_false}
      it {(@q <= @r).should be_false}
      it {(@q **2).should == Q[1.5625,"km^2"]}
      it {(@q * @r).should == Q[0.625,"km^2"]}
      it {(@q / @r).should == Q[2.5]}
      it {(@q.quo @r).should == Q[2.5]}
      it {(@q.div @r).should == 2}
      it {(@q.div 0.5).should == Q[2,"km"]}
      it {(@q % @r).should == 0.25}
      it {(@q % 0.5).should == Q[0.25,"km"]}
      it {(@q.divmod @r).should == [2,0.25]}
      it {(@q.divmod 0.5).should == [Q[2,"km"],Q[0.25,"km"]]}
      it {(@q.remainder @r).should == 0.25}
      it {@q.to_base_unit.value.should == 1250}
    end
  end


  context "Dimensionless" do
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
    describe Q[1,""] do
      before {@q=Q[1,""]}
      it {@q.want(2).value.should == 0.5}
    end
  end

  context "Length" do
    describe Q[1,"km"] do
      before { @q = Q[1,"km"] }
      it {@q.want("m").value.should == 1000}
      it {@q.want("cm").value.should == 100000}
    end
    describe Q[1,"au"] do
      it {should == Q[149597870700,"m"]}
    end
    describe Q[1,"parsec"] do
      it {should == Q[3.0856775814671916e+16,"m"]}
    end
    describe Q[1,"lightyear"] do
      it {should == Q[9460730472580800,"m"]}
    end
    describe Q[1,"lightyear"].want(:m).value do
      it {should == 9460730472580800}
    end
    describe Q[1,"inch"] do
      it {should == Q[0.0254,"m"]}
    end
    describe Q[1,"feet"] do
      it {should == Q[0.3048,"m"]}
    end
    describe Q[1,"mile"] do
      it {should == Q[1609.344,"m"]}
    end
  end

  context "Temperature" do
    describe Q[1,"tempC"] - Q[1,"tempC"] do 
      it {should == Q[0,"tempC"]}
    end
    describe Q[50,"tempF"] + Q[10,"tempC"] do 
      it {should == Q[68,"tempF"]}
    end
    describe Q[0,"tempC"].want("tempF") do
      its(:value) {should == 32}
    end
    describe Q[32,"tempF"].want("tempC") do
      its(:value){should == 0}
    end
    describe 2 * Q[2,"tempF"] do 
      it {should == Q[4,"tempF"]}
    end
    describe Q[2.5,"tempC"] * 4 do
      its(:value){should == 10}
    end
    describe Q[10.0,"tempC"] / 4 do
      its(:value){should == 2.5}
    end
    describe "tempC*tempC" do 
      it {expect{Q[1,"tempC"]*Q[2,"tempC"]}.to raise_error}
    end
    describe "tempC*K" do 
      it {expect{Q[1,"tempC"]*Q[2,"K"]}.to raise_error}
    end
    describe "K*tempC" do 
      it {expect{Q[1,"K"]*Q[2,"tempC"]}.to raise_error}
    end
    describe "tempC**2" do 
      it {expect{Q[2,"tempC"]**2}.to raise_error}
    end
    describe "tempC/tempC" do 
      it {expect{Q[2,"tempC"]/Q[1,"tempC"]}.to raise_error}
    end
  end

  context "Velocity" do
    describe Q[36,"km/hour"] do
      its(:to_base_unit){should == Q[10,"m/s"]}
    end
    describe Q[36,"km/hour"].want('m/s') do 
      its(:value){should == 10}
    end
  end

  context "Radian" do
    describe Q[1,"radian"].want("degree") do
      its(:value){should be_within(1e-15).of Q[180,"1/pi"].to_f}
    end
    describe Math.sin(Q[30,"degree"].to_f) do
      it{should be_within(1e-15).of 0.5 }
    end
  end

end
