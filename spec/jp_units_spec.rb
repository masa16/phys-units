# -*- coding: utf-8 -*-
require "phys/units/jp"
require "helper"

describe "Japanese Units" do
  describe Q[1,"一"] do
    it {is_expected.to be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"二"] do
    it {is_expected.to be_a_quantity_close_to Q[2] }
  end
  describe Q[1,"三"] do
    it {is_expected.to be_a_quantity_close_to Q[3] }
  end
  describe Q[1,"四"] do
    it {is_expected.to be_a_quantity_close_to Q[4] }
  end
  describe Q[1,"五"] do
    it {is_expected.to be_a_quantity_close_to Q[5] }
  end
  describe Q[1,"六"] do
    it {is_expected.to be_a_quantity_close_to Q[6] }
  end
  describe Q[1,"七"] do
    it {is_expected.to be_a_quantity_close_to Q[7] }
  end
  describe Q[1,"八"] do
    it {is_expected.to be_a_quantity_close_to Q[8] }
  end
  describe Q[1,"九"] do
    it {is_expected.to be_a_quantity_close_to Q[9] }
  end
  describe Q[1,"十"] do
    it {is_expected.to be_a_quantity_close_to Q[10] }
  end
  describe Q[1,"百"] do
    it {is_expected.to be_a_quantity_close_to Q[100] }
  end
  describe Q[1,"千"] do
    it {is_expected.to be_a_quantity_close_to Q[1000] }
  end
  describe Q[1,"万"] do
    it {is_expected.to be_a_quantity_close_to Q[10000] }
  end
  describe Q[1,"億"] do
    it {is_expected.to be_a_quantity_close_to Q[100000000] }
  end
  describe Q[1,"兆"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+12] }
  end
  describe Q[1,"京"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+16] }
  end
  describe Q[1,"垓"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+20] }
  end
  describe Q[1,"秭"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+24] }
  end
  describe Q[1,"秭"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+24] }
  end
  describe Q[1,"穰"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+28] }
  end
  describe Q[1,"溝"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+32] }
  end
  describe Q[1,"澗"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+36] }
  end
  describe Q[1,"正"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+40] }
  end
  describe Q[1,"載"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+44] }
  end
  describe Q[1,"極"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+48] }
  end
  describe Q[1,"恒河沙"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+52] }
  end
  describe Q[1,"阿僧祇"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+56] }
  end
  describe Q[1,"那由他"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+60] }
  end
  describe Q[1,"不可思議"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+64] }
  end
  describe Q[1,"無量大数"] do
    it {is_expected.to be_a_quantity_close_to Q[1e+68] }
  end
  describe Q[1,"割"] do
    it {is_expected.to be_a_quantity_close_to Q[0.1] }
  end
  describe Q[1,"分"] do
    it {is_expected.to be_a_quantity_close_to Q[0.01] }
  end
  describe Q[1,"厘"] do
    it {is_expected.to be_a_quantity_close_to Q[0.001] }
  end
  describe Q[1,"釐"] do
    it {is_expected.to be_a_quantity_close_to Q[0.001] }
  end
  describe Q[1,"毛"] do
    it {is_expected.to be_a_quantity_close_to Q[0.0001] }
  end
  describe Q[1,"毫"] do
    it {is_expected.to be_a_quantity_close_to Q[0.0001] }
  end
  describe Q[1,"糸"] do
    it {is_expected.to be_a_quantity_close_to Q[0.0001] }
  end
  describe Q[1,"絲"] do
    it {is_expected.to be_a_quantity_close_to Q[0.0001] }
  end
  describe Q[1,"忽"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-05] }
  end
  describe Q[1,"微"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-06] }
  end
  describe Q[1,"繊"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-07] }
  end
  describe Q[1,"沙"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-08] }
  end
  describe Q[1,"塵"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-09] }
  end
  describe Q[1,"埃"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-10] }
  end
  describe Q[1,"渺"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-11] }
  end
  describe Q[1,"漠"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-12] }
  end
  describe Q[1,"模糊"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-13] }
  end
  describe Q[1,"逡巡"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-14] }
  end
  describe Q[1,"須臾"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-15] }
  end
  describe Q[1,"瞬息"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-16] }
  end
  describe Q[1,"弾指"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-17] }
  end
  describe Q[1,"刹那"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-18] }
  end
  describe Q[1,"六徳"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-19] }
  end
  describe Q[1,"虚空"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-20] }
  end
  describe Q[1,"清浄"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-21] }
  end
  describe Q[1,"阿頼耶"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-22] }
  end
  describe Q[1,"阿摩羅"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-23] }
  end
  describe Q[1,"涅槃寂静"] do
    it {is_expected.to be_a_quantity_close_to Q[1e-24] }
  end
  describe Q[1,"尺"] do
    it {is_expected.to be_a_quantity_close_to Q[0.303030303,"m"] }
  end
  describe Q[1,"寸"] do
    it {is_expected.to be_a_quantity_close_to Q[0.0303030303,"m"] }
  end
  describe Q[1,"里"] do
    it {is_expected.to be_a_quantity_close_to Q[3927.27273,"m"] }
  end
  describe Q[1,"町"] do
    it {is_expected.to be_a_quantity_close_to Q[109.090909,"m"] }
  end
  describe Q[1,"間"] do
    it {is_expected.to be_a_quantity_close_to Q[1.81818182,"m"] }
  end
  describe Q[1,"丈"] do
    it {is_expected.to be_a_quantity_close_to Q[3.03030303,"m"] }
  end
  describe Q[1,"曲尺"] do
    it {is_expected.to be_a_quantity_close_to Q[0.303030303,"m"] }
  end
  describe Q[1,"鯨尺"] do
    it {is_expected.to be_a_quantity_close_to Q[0.378787879,"m"] }
  end
  describe Q[1,"坪"] do
    it {is_expected.to be_a_quantity_close_to Q[3.30578512,"m^2"] }
  end
  describe Q[1,"畝"] do
    it {is_expected.to be_a_quantity_close_to Q[99.1735537,"m^2"] }
  end
  describe Q[1,"反"] do
    it {is_expected.to be_a_quantity_close_to Q[991.735537,"m^2"] }
  end
  describe Q[1,"段"] do
    it {is_expected.to be_a_quantity_close_to Q[991.735537,"m^2"] }
  end
  describe Q[1,"江戸間"] do
    it {is_expected.to be_a_quantity_close_to Q[1.54453627,"m^2"] }
  end
  describe Q[1,"京間"] do
    it {is_expected.to be_a_quantity_close_to Q[1.82231405,"m^2"] }
  end
  describe Q[1,"中京間"] do
    it {is_expected.to be_a_quantity_close_to Q[1.65289256,"m^2"] }
  end
  describe Q[1,"畳"] do
    it {is_expected.to be_a_quantity_close_to Q[1.54453627,"m^2"] }
  end
  describe Q[1,"升"] do
    it {is_expected.to be_a_quantity_close_to Q[0.00180390684,"m^3"] }
  end
  describe Q[1,"斗"] do
    it {is_expected.to be_a_quantity_close_to Q[0.0180390684,"m^3"] }
  end
  describe Q[1,"石"] do
    it {is_expected.to be_a_quantity_close_to Q[0.180390684,"m^3"] }
  end
  describe Q[1,"合"] do
    it {is_expected.to be_a_quantity_close_to Q[0.000180390684,"m^3"] }
  end
  describe Q[1,"勺"] do
    it {is_expected.to be_a_quantity_close_to Q[1.80390684e-05,"m^3"] }
  end
  describe Q[1,"貫"] do
    it {is_expected.to be_a_quantity_close_to Q[3.75,"kg"] }
  end
  describe Q[1,"斤"] do
    it {is_expected.to be_a_quantity_close_to Q[0.6,"kg"] }
  end
  describe Q[1,"両"] do
    it {is_expected.to be_a_quantity_close_to Q[0.0375,"kg"] }
  end
  describe Q[1,"匁"] do
    it {is_expected.to be_a_quantity_close_to Q[0.00375,"kg"] }
  end
end
