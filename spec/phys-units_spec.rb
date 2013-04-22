$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
require "phys/units"

Q = Phys::Quantity

describe "Create quantities" do
  [
    proc{ Q[30,"degree"] },
    proc{ Q[30,"degree"].want("radian") },
    proc{ Q[1,"radian"].want("degree") },
    proc{ Math.sin(Q[30,"degree"].to_f) },
    proc{ Q[1,"tempC"] },
    proc{ Q[1,"tempC"].want("tempF") },
    proc{ Q[0,"tempC"].want("tempF") },
    proc{ Q[32,"tempF"].want("tempC") },
    proc{ Q[1,"m"] },
    proc{ Q[1,"s"] },
    proc{ Q[100,"cm"].want("m") },
    proc{ Q[3.6,"km/hour"].want('m/s') },
    proc{ Q[10,"km/hour"] * Q[0.1,'s'] },
    proc{ (Q[36,"km/hour"] * Q[0.1,'s']).want("m") },
  ].each do |target|
    #p target.call
    describe target.call do
      it {should be_an_instance_of Phys::Quantity}
      its(:value) {should == 1}
    end
  end

end
