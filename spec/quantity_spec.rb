require "helper"

describe "Phys::Quantity" do

  context "equality" do
    describe Q[12] do
      it {is_expected.to eq 12}
      it {is_expected.to eq Q[12]}
      it {is_expected.to eq Q[12,"radian"]}
      it {is_expected.to eq Q[1,"dozen"]}
      it {is_expected.not_to eq Q[12,"pi"]}
      it {is_expected.not_to eq Q[12,"km"]}
    end
    describe Q[12,"radian"] do
      it {is_expected.to eq 12}
      it {is_expected.to eq Q[12]}
      it {is_expected.to eq Q[12,"radian"]}
      it {is_expected.to eq Q[1,"dozen"]}
      it {is_expected.not_to eq Q[12,"pi"]}
      it {is_expected.not_to eq Q[12,"km"]}
    end
    describe Q[12,"km"] do
      it {is_expected.not_to eq 12}
      it {is_expected.not_to eq Q[12]}
      it {is_expected.not_to eq Q[12,"radian"]}
      it {is_expected.not_to eq Q[1,"dozen"]}
      it {is_expected.not_to eq Q[12,"pi"]}
      it {is_expected.to eq Q[12,"km"]}
      it {is_expected.to eq Q[1,"dozen km"]}
    end
    describe 12 do
      it {is_expected.to eq Q[12]}
      it {is_expected.to eq Q[12,"radian"]}
      it {is_expected.to eq Q[1,"dozen"]}
      it {is_expected.not_to eq Q[12,"pi"]}
      it {is_expected.not_to eq Q[12,"km"]}
    end
  end

  context "methods" do
    describe Q[1.25,"km"] do
      before {@q = Q[1.25,"km"]; @r = Q[500,"m"]}
      it {expect(@q.value).to eq 1.25}
      it {expect(@q.expr).to eq "km"}
      it {expect(@q.unit).to eq Phys::Unit["km"]}
      it {expect(@q.want("cm").value).to eq 125000}
      it {expect((@q >> "cm").value).to eq 125000}
      it {expect((@q >> U["cm"]).value).to eq 125000}
      it {expect((@q >> Q[1,"cm"]).value).to eq 125000}
      it {expect((@q + @r)).to eq Q[1.75,"km"]}
      it {expect((@q - @r)).to eq Q[0.75,"km"]}
      it {expect(@q.abs).to eq Q[1.25,"km"]}
      it {expect(@q.abs2).to eq Q[1.5625,"km^2"]}
      it {expect(@q.ceil).to eq Q[2,"km"]}
      it {expect(@q.round).to eq Q[1,"km"]}
      it {expect(@q.floor).to eq Q[1,"km"]}
      it {expect(@q.truncate).to eq Q[1,"km"]}
      it {expect((+@q)).to eq Q[1.25,"km"]}
      it {expect((-@q)).to eq Q[-1.25,"km"]}
      it {expect((@q <=> @r)).to eq 1}
      it {expect((@q == @r)).to be_falsey}
      it {expect((@q > @r)).to be_truthy}
      it {expect((@q >= @r)).to be_truthy}
      it {expect((@q < @r)).to be_falsey}
      it {expect((@q <= @r)).to be_falsey}
      it {expect((@q **2)).to eq Q[1.5625,"km^2"]}
      it {expect((@q * @r)).to eq Q[0.625,"km^2"]}
      it {expect((@q / @r)).to eq Q[2.5]}
      it {expect((@q.quo @r)).to eq Q[2.5]}
      it {expect((@q.div @r)).to eq 2}
      it {expect((@q.div 0.5)).to eq Q[2,"km"]}
      it {expect((@q % @r)).to eq 0.25}
      it {expect((@q % 0.5)).to eq Q[0.25,"km"]}
      it {expect((@q.divmod @r)).to eq [2,0.25]}
      it {expect((@q.divmod 0.5)).to eq [Q[2,"km"],Q[0.25,"km"]]}
      it {expect((@q.remainder @r)).to eq 0.25}
      it {expect(@q.to_base_unit.value).to eq 1250}
    end
  end


  context "Dimensionless" do
    describe Q[1] do
      it {is_expected.to be_an_instance_of Phys::Quantity}
      its(:value) {is_expected.to eq 1}
      its(:unit) {is_expected.to be_an_instance_of Phys::Unit}
      its(:unit) {is_expected.to eq U[1]}
    end
    describe Q[1,""] do
      it {is_expected.to be_an_instance_of Phys::Quantity}
      its(:value) {is_expected.to eq 1}
      its(:unit) {is_expected.to be_an_instance_of Phys::Unit}
      its(:unit) {is_expected.to eq U['']}
    end
    describe Q[1,""] do
      before {@q=Q[1,""]}
      it {expect(@q.want(2).value).to eq 0.5}
    end
  end

  context "Length" do
    describe Q[1,"km"] do
      before { @q = Q[1,"km"] }
      it {expect(@q.want("m").value).to eq 1000}
      it {expect(@q.want("cm").value).to eq 100000}
    end
    describe Q[1,"au"] do
      it {is_expected.to eq Q[149597870700,"m"]}
    end
    describe Q[1,"parsec"] do
      it {is_expected.to eq Q[3.0856775814671916e+16,"m"]}
    end
    describe Q[1,"lightyear"] do
      it {is_expected.to eq Q[9460730472580800,"m"]}
    end
    describe Q[1,"lightyear"].want(:m).value do
      it {is_expected.to eq 9460730472580800}
    end
    describe Q[1,"inch"] do
      it {is_expected.to eq Q[0.0254,"m"]}
    end
    describe Q[1,"feet"] do
      it {is_expected.to eq Q[0.3048,"m"]}
    end
    describe Q[1,"mile"] do
      it {is_expected.to eq Q[1609.344,"m"]}
    end
  end

  context "Temperature" do
    describe Q[1,"tempC"] - Q[1,"degC"] do
      it {is_expected.to eq Q[0,"tempC"]}
    end
    describe Q[50,"tempF"] + Q[10,"degC"] do
      it {is_expected.to eq Q[68,"tempF"]}
    end
    describe Q[0,"tempC"].want("tempF") do
      its(:value) {is_expected.to eq 32}
    end
    describe Q[32,"tempF"].want("tempC") do
      its(:value){is_expected.to eq 0}
    end
    describe 2 * Q[2,"tempF"] do
      it {is_expected.to eq Q[4,"tempF"]}
    end
    describe Q[2.5,"tempC"] * 4 do
      its(:value){is_expected.to eq 10}
    end
    describe Q[10.0,"tempC"] / 4 do
      its(:value){is_expected.to eq 2.5}
    end
    describe "tempC*tempC" do
      it {expect{Q[1,"tempC"]*Q[2,"tempC"]}.to raise_error(Phys::UnitError)}
    end
    describe "tempC*K" do
      it {expect{Q[1,"tempC"]*Q[2,"K"]}.to raise_error(Phys::UnitError)}
    end
    describe "K*tempC" do
      it {expect{Q[1,"K"]*Q[2,"tempC"]}.to raise_error(Phys::UnitError)}
    end
    describe "tempC**2" do
      it {expect{Q[2,"tempC"]**2}.to raise_error(Phys::UnitError)}
    end
    describe "tempC/tempC" do
      it {expect{Q[2,"tempC"]/Q[1,"tempC"]}.to raise_error(Phys::UnitError)}
    end
  end

  context "Velocity" do
    describe Q[36,"km/hour"] do
      its(:to_base_unit){is_expected.to eq Q[10,"m/s"]}
    end
    describe Q[36,"km/hour"].want('m/s') do
      its(:value){is_expected.to eq 10}
    end
  end

  context "Radian" do
    describe Q[1,"radian"].want("degree") do
      its(:value){is_expected.to be_within(1e-15).of Q[180,"1/pi"].to_f}
    end
    describe Math.sin(Q[30,"degree"].to_f) do
      it{is_expected.to be_within(1e-15).of 0.5 }
    end
  end

  context "Complex units" do
    describe Q[1,"(8/pi^2)(lbm/ft^3)ft(ft^3/s)^2(1/in^5)"] do
      it{is_expected.to be_a_quantity_close_to Q[43.533969,"psi"]}
    end
  end

end
