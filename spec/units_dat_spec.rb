$LOAD_PATH.unshift File.dirname(__FILE__)
require "helper"

describe "Unit Conversion" do
  describe Q[1,"kg"] do
    it {should be_a_quantity_close_to Q[1,"kg"] }
  end
  describe Q[1,"kilogram"] do
    it {should be_a_quantity_close_to Q[1,"kg"] }
  end
  describe Q[1,"s"] do
    it {should be_a_quantity_close_to Q[1,"s"] }
  end
  describe Q[1,"second"] do
    it {should be_a_quantity_close_to Q[1,"s"] }
  end
  describe Q[1,"m"] do
    it {should be_a_quantity_close_to Q[1,"m"] }
  end
  describe Q[1,"meter"] do
    it {should be_a_quantity_close_to Q[1,"m"] }
  end
  describe Q[1,"A"] do
    it {should be_a_quantity_close_to Q[1,"A"] }
  end
  describe Q[1,"ampere"] do
    it {should be_a_quantity_close_to Q[1,"A"] }
  end
  describe Q[1,"amp"] do
    it {should be_a_quantity_close_to Q[1,"A"] }
  end
  describe Q[1,"cd"] do
    it {should be_a_quantity_close_to Q[1,"cd"] }
  end
  describe Q[1,"candela"] do
    it {should be_a_quantity_close_to Q[1,"cd"] }
  end
  describe Q[1,"mol"] do
    it {should be_a_quantity_close_to Q[1,"mol"] }
  end
  describe Q[1,"mole"] do
    it {should be_a_quantity_close_to Q[1,"mol"] }
  end
  describe Q[1,"K"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"kelvin"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"radian"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"sr"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"steradian"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"US$"] do
    it {should be_a_quantity_close_to Q[1,"US$"] }
  end
  describe Q[1,"bit"] do
    it {should be_a_quantity_close_to Q[1,"bit"] }
  end
  describe Q[1,"one"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"two"] do
    it {should be_a_quantity_close_to Q[2] }
  end
  describe Q[1,"double"] do
    it {should be_a_quantity_close_to Q[2] }
  end
  describe Q[1,"couple"] do
    it {should be_a_quantity_close_to Q[2] }
  end
  describe Q[1,"three"] do
    it {should be_a_quantity_close_to Q[3] }
  end
  describe Q[1,"triple"] do
    it {should be_a_quantity_close_to Q[3] }
  end
  describe Q[1,"four"] do
    it {should be_a_quantity_close_to Q[4] }
  end
  describe Q[1,"quadruple"] do
    it {should be_a_quantity_close_to Q[4] }
  end
  describe Q[1,"five"] do
    it {should be_a_quantity_close_to Q[5] }
  end
  describe Q[1,"quintuple"] do
    it {should be_a_quantity_close_to Q[5] }
  end
  describe Q[1,"six"] do
    it {should be_a_quantity_close_to Q[6] }
  end
  describe Q[1,"seven"] do
    it {should be_a_quantity_close_to Q[7] }
  end
  describe Q[1,"eight"] do
    it {should be_a_quantity_close_to Q[8] }
  end
  describe Q[1,"nine"] do
    it {should be_a_quantity_close_to Q[9] }
  end
  describe Q[1,"ten"] do
    it {should be_a_quantity_close_to Q[10] }
  end
  describe Q[1,"eleven"] do
    it {should be_a_quantity_close_to Q[11] }
  end
  describe Q[1,"twelve"] do
    it {should be_a_quantity_close_to Q[12] }
  end
  describe Q[1,"thirteen"] do
    it {should be_a_quantity_close_to Q[13] }
  end
  describe Q[1,"fourteen"] do
    it {should be_a_quantity_close_to Q[14] }
  end
  describe Q[1,"fifteen"] do
    it {should be_a_quantity_close_to Q[15] }
  end
  describe Q[1,"sixteen"] do
    it {should be_a_quantity_close_to Q[16] }
  end
  describe Q[1,"seventeen"] do
    it {should be_a_quantity_close_to Q[17] }
  end
  describe Q[1,"eighteen"] do
    it {should be_a_quantity_close_to Q[18] }
  end
  describe Q[1,"nineteen"] do
    it {should be_a_quantity_close_to Q[19] }
  end
  describe Q[1,"twenty"] do
    it {should be_a_quantity_close_to Q[20] }
  end
  describe Q[1,"thirty"] do
    it {should be_a_quantity_close_to Q[30] }
  end
  describe Q[1,"forty"] do
    it {should be_a_quantity_close_to Q[40] }
  end
  describe Q[1,"fifty"] do
    it {should be_a_quantity_close_to Q[50] }
  end
  describe Q[1,"sixty"] do
    it {should be_a_quantity_close_to Q[60] }
  end
  describe Q[1,"seventy"] do
    it {should be_a_quantity_close_to Q[70] }
  end
  describe Q[1,"eighty"] do
    it {should be_a_quantity_close_to Q[80] }
  end
  describe Q[1,"ninety"] do
    it {should be_a_quantity_close_to Q[90] }
  end
  describe Q[1,"hundred"] do
    it {should be_a_quantity_close_to Q[100] }
  end
  describe Q[1,"thousand"] do
    it {should be_a_quantity_close_to Q[1000] }
  end
  describe Q[1,"million"] do
    it {should be_a_quantity_close_to Q[1000000] }
  end
  describe Q[1,"shortbillion"] do
    it {should be_a_quantity_close_to Q[1e+09] }
  end
  describe Q[1,"shorttrillion"] do
    it {should be_a_quantity_close_to Q[1e+12] }
  end
  describe Q[1,"shortquadrillion"] do
    it {should be_a_quantity_close_to Q[1e+15] }
  end
  describe Q[1,"shortquintillion"] do
    it {should be_a_quantity_close_to Q[1e+18] }
  end
  describe Q[1,"shortsextillion"] do
    it {should be_a_quantity_close_to Q[1e+21] }
  end
  describe Q[1,"shortseptillion"] do
    it {should be_a_quantity_close_to Q[1e+24] }
  end
  describe Q[1,"shortoctillion"] do
    it {should be_a_quantity_close_to Q[1e+27] }
  end
  describe Q[1,"shortnonillion"] do
    it {should be_a_quantity_close_to Q[1e+30] }
  end
  describe Q[1,"shortnoventillion"] do
    it {should be_a_quantity_close_to Q[1e+30] }
  end
  describe Q[1,"shortdecillion"] do
    it {should be_a_quantity_close_to Q[1e+33] }
  end
  describe Q[1,"shortundecillion"] do
    it {should be_a_quantity_close_to Q[1e+36] }
  end
  describe Q[1,"shortduodecillion"] do
    it {should be_a_quantity_close_to Q[1e+39] }
  end
  describe Q[1,"shorttredecillion"] do
    it {should be_a_quantity_close_to Q[1e+42] }
  end
  describe Q[1,"shortquattuordecillion"] do
    it {should be_a_quantity_close_to Q[1e+45] }
  end
  describe Q[1,"shortquindecillion"] do
    it {should be_a_quantity_close_to Q[1e+48] }
  end
  describe Q[1,"shortsexdecillion"] do
    it {should be_a_quantity_close_to Q[1e+51] }
  end
  describe Q[1,"shortseptendecillion"] do
    it {should be_a_quantity_close_to Q[1e+54] }
  end
  describe Q[1,"shortoctodecillion"] do
    it {should be_a_quantity_close_to Q[1e+57] }
  end
  describe Q[1,"shortnovemdecillion"] do
    it {should be_a_quantity_close_to Q[1e+60] }
  end
  describe Q[1,"shortvigintillion"] do
    it {should be_a_quantity_close_to Q[1e+63] }
  end
  describe Q[1,"centillion"] do
    it {should be_a_quantity_close_to Q[1e+303] }
  end
  describe Q[1,"googol"] do
    it {should be_a_quantity_close_to Q[1e+100] }
  end
  describe Q[1,"longbillion"] do
    it {should be_a_quantity_close_to Q[1e+12] }
  end
  describe Q[1,"longtrillion"] do
    it {should be_a_quantity_close_to Q[1e+18] }
  end
  describe Q[1,"longquadrillion"] do
    it {should be_a_quantity_close_to Q[1e+24] }
  end
  describe Q[1,"longquintillion"] do
    it {should be_a_quantity_close_to Q[1e+30] }
  end
  describe Q[1,"longsextillion"] do
    it {should be_a_quantity_close_to Q[1e+36] }
  end
  describe Q[1,"longseptillion"] do
    it {should be_a_quantity_close_to Q[1e+42] }
  end
  describe Q[1,"longoctillion"] do
    it {should be_a_quantity_close_to Q[1e+48] }
  end
  describe Q[1,"longnonillion"] do
    it {should be_a_quantity_close_to Q[1e+54] }
  end
  describe Q[1,"longnoventillion"] do
    it {should be_a_quantity_close_to Q[1e+54] }
  end
  describe Q[1,"longdecillion"] do
    it {should be_a_quantity_close_to Q[1e+60] }
  end
  describe Q[1,"longundecillion"] do
    it {should be_a_quantity_close_to Q[1e+66] }
  end
  describe Q[1,"longduodecillion"] do
    it {should be_a_quantity_close_to Q[1e+72] }
  end
  describe Q[1,"longtredecillion"] do
    it {should be_a_quantity_close_to Q[1e+78] }
  end
  describe Q[1,"longquattuordecillion"] do
    it {should be_a_quantity_close_to Q[1e+84] }
  end
  describe Q[1,"longquindecillion"] do
    it {should be_a_quantity_close_to Q[1e+90] }
  end
  describe Q[1,"longsexdecillion"] do
    it {should be_a_quantity_close_to Q[1e+96] }
  end
  describe Q[1,"longseptdecillion"] do
    it {should be_a_quantity_close_to Q[1e+102] }
  end
  describe Q[1,"longoctodecillion"] do
    it {should be_a_quantity_close_to Q[1e+108] }
  end
  describe Q[1,"longnovemdecillion"] do
    it {should be_a_quantity_close_to Q[1e+114] }
  end
  describe Q[1,"longvigintillion"] do
    it {should be_a_quantity_close_to Q[1e+120] }
  end
  describe Q[1,"milliard"] do
    it {should be_a_quantity_close_to Q[1e+09] }
  end
  describe Q[1,"billiard"] do
    it {should be_a_quantity_close_to Q[1e+15] }
  end
  describe Q[1,"trilliard"] do
    it {should be_a_quantity_close_to Q[1e+21] }
  end
  describe Q[1,"quadrilliard"] do
    it {should be_a_quantity_close_to Q[1e+27] }
  end
  describe Q[1,"quintilliard"] do
    it {should be_a_quantity_close_to Q[1e+33] }
  end
  describe Q[1,"sextilliard"] do
    it {should be_a_quantity_close_to Q[1e+39] }
  end
  describe Q[1,"septilliard"] do
    it {should be_a_quantity_close_to Q[1e+45] }
  end
  describe Q[1,"octilliard"] do
    it {should be_a_quantity_close_to Q[1e+51] }
  end
  describe Q[1,"nonilliard"] do
    it {should be_a_quantity_close_to Q[1e+57] }
  end
  describe Q[1,"noventilliard"] do
    it {should be_a_quantity_close_to Q[1e+57] }
  end
  describe Q[1,"decilliard"] do
    it {should be_a_quantity_close_to Q[1e+63] }
  end
  describe Q[1,"longmilliard"] do
    it {should be_a_quantity_close_to Q[1e+09] }
  end
  describe Q[1,"longbilliard"] do
    it {should be_a_quantity_close_to Q[1e+15] }
  end
  describe Q[1,"longtrilliard"] do
    it {should be_a_quantity_close_to Q[1e+21] }
  end
  describe Q[1,"longquadrilliard"] do
    it {should be_a_quantity_close_to Q[1e+27] }
  end
  describe Q[1,"longquintilliard"] do
    it {should be_a_quantity_close_to Q[1e+33] }
  end
  describe Q[1,"longsextilliard"] do
    it {should be_a_quantity_close_to Q[1e+39] }
  end
  describe Q[1,"longseptilliard"] do
    it {should be_a_quantity_close_to Q[1e+45] }
  end
  describe Q[1,"longoctilliard"] do
    it {should be_a_quantity_close_to Q[1e+51] }
  end
  describe Q[1,"longnonilliard"] do
    it {should be_a_quantity_close_to Q[1e+57] }
  end
  describe Q[1,"longnoventilliard"] do
    it {should be_a_quantity_close_to Q[1e+57] }
  end
  describe Q[1,"longdecilliard"] do
    it {should be_a_quantity_close_to Q[1e+63] }
  end
  describe Q[1,"billion"] do
    it {should be_a_quantity_close_to Q[1e+09] }
  end
  describe Q[1,"trillion"] do
    it {should be_a_quantity_close_to Q[1e+12] }
  end
  describe Q[1,"quadrillion"] do
    it {should be_a_quantity_close_to Q[1e+15] }
  end
  describe Q[1,"quintillion"] do
    it {should be_a_quantity_close_to Q[1e+18] }
  end
  describe Q[1,"sextillion"] do
    it {should be_a_quantity_close_to Q[1e+21] }
  end
  describe Q[1,"septillion"] do
    it {should be_a_quantity_close_to Q[1e+24] }
  end
  describe Q[1,"octillion"] do
    it {should be_a_quantity_close_to Q[1e+27] }
  end
  describe Q[1,"nonillion"] do
    it {should be_a_quantity_close_to Q[1e+30] }
  end
  describe Q[1,"noventillion"] do
    it {should be_a_quantity_close_to Q[1e+30] }
  end
  describe Q[1,"decillion"] do
    it {should be_a_quantity_close_to Q[1e+33] }
  end
  describe Q[1,"undecillion"] do
    it {should be_a_quantity_close_to Q[1e+36] }
  end
  describe Q[1,"duodecillion"] do
    it {should be_a_quantity_close_to Q[1e+39] }
  end
  describe Q[1,"tredecillion"] do
    it {should be_a_quantity_close_to Q[1e+42] }
  end
  describe Q[1,"quattuordecillion"] do
    it {should be_a_quantity_close_to Q[1e+45] }
  end
  describe Q[1,"quindecillion"] do
    it {should be_a_quantity_close_to Q[1e+48] }
  end
  describe Q[1,"sexdecillion"] do
    it {should be_a_quantity_close_to Q[1e+51] }
  end
  describe Q[1,"septendecillion"] do
    it {should be_a_quantity_close_to Q[1e+54] }
  end
  describe Q[1,"octodecillion"] do
    it {should be_a_quantity_close_to Q[1e+57] }
  end
  describe Q[1,"novemdecillion"] do
    it {should be_a_quantity_close_to Q[1e+60] }
  end
  describe Q[1,"vigintillion"] do
    it {should be_a_quantity_close_to Q[1e+63] }
  end
  describe Q[1,"newton"] do
    it {should be_a_quantity_close_to Q[1,"kg m s^-2"] }
  end
  describe Q[1,"N"] do
    it {should be_a_quantity_close_to Q[1,"kg m s^-2"] }
  end
  describe Q[1,"pascal"] do
    it {should be_a_quantity_close_to Q[1,"kg m^-1 s^-2"] }
  end
  describe Q[1,"Pa"] do
    it {should be_a_quantity_close_to Q[1,"kg m^-1 s^-2"] }
  end
  describe Q[1,"joule"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2"] }
  end
  describe Q[1,"J"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2"] }
  end
  describe Q[1,"watt"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3"] }
  end
  describe Q[1,"W"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3"] }
  end
  describe Q[1,"coulomb"] do
    it {should be_a_quantity_close_to Q[1,"A s"] }
  end
  describe Q[1,"C"] do
    it {should be_a_quantity_close_to Q[1,"A s"] }
  end
  describe Q[1,"volt"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3 A^-1"] }
  end
  describe Q[1,"V"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3 A^-1"] }
  end
  describe Q[1,"ohm"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"siemens"] do
    it {should be_a_quantity_close_to Q[1,"A^2 kg^-1 m^-2 s^3"] }
  end
  describe Q[1,"S"] do
    it {should be_a_quantity_close_to Q[1,"A^2 kg^-1 m^-2 s^3"] }
  end
  describe Q[1,"farad"] do
    it {should be_a_quantity_close_to Q[1,"A^2 s^4 kg^-1 m^-2"] }
  end
  describe Q[1,"F"] do
    it {should be_a_quantity_close_to Q[1,"A^2 s^4 kg^-1 m^-2"] }
  end
  describe Q[1,"weber"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2 A^-1"] }
  end
  describe Q[1,"Wb"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2 A^-1"] }
  end
  describe Q[1,"henry"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2 A^-2"] }
  end
  describe Q[1,"H"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2 A^-2"] }
  end
  describe Q[1,"tesla"] do
    it {should be_a_quantity_close_to Q[1,"kg s^-2 A^-1"] }
  end
  describe Q[1,"T"] do
    it {should be_a_quantity_close_to Q[1,"kg s^-2 A^-1"] }
  end
  describe Q[1,"hertz"] do
    it {should be_a_quantity_close_to Q[1,"s^-1"] }
  end
  describe Q[1,"Hz"] do
    it {should be_a_quantity_close_to Q[1,"s^-1"] }
  end
  describe Q[1,"LENGTH"] do
    it {should be_a_quantity_close_to Q[1,"m"] }
  end
  describe Q[1,"AREA"] do
    it {should be_a_quantity_close_to Q[1,"m^2"] }
  end
  describe Q[1,"VOLUME"] do
    it {should be_a_quantity_close_to Q[1,"m^3"] }
  end
  describe Q[1,"MASS"] do
    it {should be_a_quantity_close_to Q[1,"kg"] }
  end
  describe Q[1,"CURRENT"] do
    it {should be_a_quantity_close_to Q[1,"A"] }
  end
  describe Q[1,"AMOUNT"] do
    it {should be_a_quantity_close_to Q[1,"mol"] }
  end
  describe Q[1,"ANGLE"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"SOLID_ANGLE"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"MONEY"] do
    it {should be_a_quantity_close_to Q[1,"US$"] }
  end
  describe Q[1,"FORCE"] do
    it {should be_a_quantity_close_to Q[1,"kg m s^-2"] }
  end
  describe Q[1,"PRESSURE"] do
    it {should be_a_quantity_close_to Q[1,"kg m^-1 s^-2"] }
  end
  describe Q[1,"STRESS"] do
    it {should be_a_quantity_close_to Q[1,"kg m^-1 s^-2"] }
  end
  describe Q[1,"CHARGE"] do
    it {should be_a_quantity_close_to Q[1,"A s"] }
  end
  describe Q[1,"CAPACITANCE"] do
    it {should be_a_quantity_close_to Q[1,"A^2 s^4 kg^-1 m^-2"] }
  end
  describe Q[1,"RESISTANCE"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"CONDUCTANCE"] do
    it {should be_a_quantity_close_to Q[1,"A^2 kg^-1 m^-2 s^3"] }
  end
  describe Q[1,"INDUCTANCE"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2 A^-2"] }
  end
  describe Q[1,"FREQUENCY"] do
    it {should be_a_quantity_close_to Q[1,"s^-1"] }
  end
  describe Q[1,"VELOCITY"] do
    it {should be_a_quantity_close_to Q[1,"m s^-1"] }
  end
  describe Q[1,"ACCELERATION"] do
    it {should be_a_quantity_close_to Q[1,"m s^-2"] }
  end
  describe Q[1,"DENSITY"] do
    it {should be_a_quantity_close_to Q[1,"kg m^-3"] }
  end
  describe Q[1,"LINEAR_DENSITY"] do
    it {should be_a_quantity_close_to Q[1,"kg m^-1"] }
  end
  describe Q[1,"VISCOSITY"] do
    it {should be_a_quantity_close_to Q[1,"kg m^-1 s^-1"] }
  end
  describe Q[1,"KINEMATIC_VISCOSITY"] do
    it {should be_a_quantity_close_to Q[1,"m^2 s^-1"] }
  end
  describe Q[1,"gram"] do
    it {should be_a_quantity_close_to Q[0.001,"kg"] }
  end
  describe Q[1,"gm"] do
    it {should be_a_quantity_close_to Q[0.001,"kg"] }
  end
  describe Q[1,"g"] do
    it {should be_a_quantity_close_to Q[0.001,"kg"] }
  end
  describe Q[1,"tonne"] do
    it {should be_a_quantity_close_to Q[1000,"kg"] }
  end
  describe Q[1,"t"] do
    it {should be_a_quantity_close_to Q[1000,"kg"] }
  end
  describe Q[1,"metricton"] do
    it {should be_a_quantity_close_to Q[1000,"kg"] }
  end
  describe Q[1,"sthene"] do
    it {should be_a_quantity_close_to Q[1000,"kg m s^-2"] }
  end
  describe Q[1,"funal"] do
    it {should be_a_quantity_close_to Q[1000,"kg m s^-2"] }
  end
  describe Q[1,"pieze"] do
    it {should be_a_quantity_close_to Q[1000,"kg m^-1 s^-2"] }
  end
  describe Q[1,"quintal"] do
    it {should be_a_quantity_close_to Q[100,"kg"] }
  end
  describe Q[1,"bar"] do
    it {should be_a_quantity_close_to Q[100000,"kg m^-1 s^-2"] }
  end
  describe Q[1,"b"] do
    it {should be_a_quantity_close_to Q[100000,"kg m^-1 s^-2"] }
  end
  describe Q[1,"vac"] do
    it {should be_a_quantity_close_to Q[100,"kg m^-1 s^-2"] }
  end
  describe Q[1,"micron"] do
    it {should be_a_quantity_close_to Q[1e-06,"m"] }
  end
  describe Q[1,"bicron"] do
    it {should be_a_quantity_close_to Q[1e-12,"m"] }
  end
  describe Q[1,"cc"] do
    it {should be_a_quantity_close_to Q[1e-06,"m^3"] }
  end
  describe Q[1,"are"] do
    it {should be_a_quantity_close_to Q[100,"m^2"] }
  end
  describe Q[1,"a"] do
    it {should be_a_quantity_close_to Q[100,"m^2"] }
  end
  describe Q[1,"liter"] do
    it {should be_a_quantity_close_to Q[0.001,"m^3"] }
  end
  describe Q[1,"oldliter"] do
    it {should be_a_quantity_close_to Q[0.001000028,"m^3"] }
  end
  describe Q[1,"L"] do
    it {should be_a_quantity_close_to Q[0.001,"m^3"] }
  end
  describe Q[1,"l"] do
    it {should be_a_quantity_close_to Q[0.001,"m^3"] }
  end
  describe Q[1,"mho"] do
    it {should be_a_quantity_close_to Q[1,"A^2 kg^-1 m^-2 s^3"] }
  end
  describe Q[1,"galvat"] do
    it {should be_a_quantity_close_to Q[1,"A"] }
  end
  describe Q[1,"angstrom"] do
    it {should be_a_quantity_close_to Q[1e-10,"m"] }
  end
  describe Q[1,"xunit"] do
    it {should be_a_quantity_close_to Q[1.002077e-13,"m"] }
  end
  describe Q[1,"siegbahn"] do
    it {should be_a_quantity_close_to Q[1.002077e-13,"m"] }
  end
  describe Q[1,"xunit_cu"] do
    it {should be_a_quantity_close_to Q[1.002077e-13,"m"] }
  end
  describe Q[1,"xunit_mo"] do
    it {should be_a_quantity_close_to Q[1.0020995e-13,"m"] }
  end
  describe Q[1,"angstromstar"] do
    it {should be_a_quantity_close_to Q[1.0000149e-10,"m"] }
  end
  describe Q[1,"fermi"] do
    it {should be_a_quantity_close_to Q[1e-15,"m"] }
  end
  describe Q[1,"barn"] do
    it {should be_a_quantity_close_to Q[1e-28,"m^2"] }
  end
  describe Q[1,"shed"] do
    it {should be_a_quantity_close_to Q[1e-52,"m^2"] }
  end
  describe Q[1,"brewster"] do
    it {should be_a_quantity_close_to Q[1e-12,"m kg^-1 s^2"] }
  end
  describe Q[1,"diopter"] do
    it {should be_a_quantity_close_to Q[1,"m^-1"] }
  end
  describe Q[1,"fresnel"] do
    it {should be_a_quantity_close_to Q[1e+12,"s^-1"] }
  end
  describe Q[1,"shake"] do
    it {should be_a_quantity_close_to Q[1e-08,"s"] }
  end
  describe Q[1,"svedberg"] do
    it {should be_a_quantity_close_to Q[1e-13,"s"] }
  end
  describe Q[1,"gamma"] do
    it {should be_a_quantity_close_to Q[1e-09,"kg"] }
  end
  describe Q[1,"lambda"] do
    it {should be_a_quantity_close_to Q[1e-09,"m^3"] }
  end
  describe Q[1,"spat"] do
    it {should be_a_quantity_close_to Q[1e+12,"m"] }
  end
  describe Q[1,"preece"] do
    it {should be_a_quantity_close_to Q[1e+13,"kg m^3 s^-3 A^-2"] }
  end
  describe Q[1,"planck"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-1"] }
  end
  describe Q[1,"sturgeon"] do
    it {should be_a_quantity_close_to Q[1,"kg^-1 m^-2 s^2 A^2"] }
  end
  describe Q[1,"daraf"] do
    it {should be_a_quantity_close_to Q[1,"A^-2 s^-4 kg m^2"] }
  end
  describe Q[1,"leo"] do
    it {should be_a_quantity_close_to Q[10,"m s^-2"] }
  end
  describe Q[1,"poiseuille"] do
    it {should be_a_quantity_close_to Q[1,"kg m^-1 s^-1"] }
  end
  describe Q[1,"mayer"] do
    it {should be_a_quantity_close_to Q[1000,"m^2 s^-2 K^-1"] }
  end
  describe Q[1,"mired"] do
    it {should be_a_quantity_close_to Q[1000000,"K^-1"] }
  end
  describe Q[1,"crocodile"] do
    it {should be_a_quantity_close_to Q[1000000,"kg m^2 s^-3 A^-1"] }
  end
  describe Q[1,"metricounce"] do
    it {should be_a_quantity_close_to Q[0.025,"kg"] }
  end
  describe Q[1,"mounce"] do
    it {should be_a_quantity_close_to Q[0.025,"kg"] }
  end
  describe Q[1,"finsenunit"] do
    it {should be_a_quantity_close_to Q[100000,"kg s^-3"] }
  end
  describe Q[1,"fluxunit"] do
    it {should be_a_quantity_close_to Q[1e-26,"kg s^-2"] }
  end
  describe Q[1,"jansky"] do
    it {should be_a_quantity_close_to Q[1e-26,"kg s^-2"] }
  end
  describe Q[1,"Jy"] do
    it {should be_a_quantity_close_to Q[1e-26,"kg s^-2"] }
  end
  describe Q[1,"flick"] do
    it {should be_a_quantity_close_to Q[1e+10,"kg m^-1 s^-3"] }
  end
  describe Q[1,"pfu"] do
    it {should be_a_quantity_close_to Q[10000,"m^-2 s^-1"] }
  end
  describe Q[1,"pyron"] do
    it {should be_a_quantity_close_to Q[697.8,"kg s^-3"] }
  end
  describe Q[1,"katal"] do
    it {should be_a_quantity_close_to Q[1,"mol s^-1"] }
  end
  describe Q[1,"kat"] do
    it {should be_a_quantity_close_to Q[1,"mol s^-1"] }
  end
  describe Q[1,"solarluminosity"] do
    it {should be_a_quantity_close_to Q[3.846e+26,"kg m^2 s^-3"] }
  end
  describe Q[1,"sec"] do
    it {should be_a_quantity_close_to Q[1,"s"] }
  end
  describe Q[1,"minute"] do
    it {should be_a_quantity_close_to Q[60,"s"] }
  end
  describe Q[1,"min"] do
    it {should be_a_quantity_close_to Q[60,"s"] }
  end
  describe Q[1,"hour"] do
    it {should be_a_quantity_close_to Q[3600,"s"] }
  end
  describe Q[1,"hr"] do
    it {should be_a_quantity_close_to Q[3600,"s"] }
  end
  describe Q[1,"day"] do
    it {should be_a_quantity_close_to Q[86400,"s"] }
  end
  describe Q[1,"d"] do
    it {should be_a_quantity_close_to Q[86400,"s"] }
  end
  describe Q[1,"da"] do
    it {should be_a_quantity_close_to Q[86400,"s"] }
  end
  describe Q[1,"week"] do
    it {should be_a_quantity_close_to Q[604800,"s"] }
  end
  describe Q[1,"wk"] do
    it {should be_a_quantity_close_to Q[604800,"s"] }
  end
  describe Q[1,"sennight"] do
    it {should be_a_quantity_close_to Q[604800,"s"] }
  end
  describe Q[1,"fortnight"] do
    it {should be_a_quantity_close_to Q[1209600,"s"] }
  end
  describe Q[1,"blink"] do
    it {should be_a_quantity_close_to Q[0.864,"s"] }
  end
  describe Q[1,"ce"] do
    it {should be_a_quantity_close_to Q[864,"s"] }
  end
  describe Q[1,"cron"] do
    it {should be_a_quantity_close_to Q[3.1556926e+13,"s"] }
  end
  describe Q[1,"watch"] do
    it {should be_a_quantity_close_to Q[14400,"s"] }
  end
  describe Q[1,"bell"] do
    it {should be_a_quantity_close_to Q[1800,"s"] }
  end
  describe Q[1,"circle"] do
    it {should be_a_quantity_close_to Q[6.2831853] }
  end
  describe Q[1,"degree"] do
    it {should be_a_quantity_close_to Q[0.017453293] }
  end
  describe Q[1,"deg"] do
    it {should be_a_quantity_close_to Q[0.017453293] }
  end
  describe Q[1,"arcdeg"] do
    it {should be_a_quantity_close_to Q[0.017453293] }
  end
  describe Q[1,"arcmin"] do
    it {should be_a_quantity_close_to Q[0.00029088821] }
  end
  describe Q[1,"arcminute"] do
    it {should be_a_quantity_close_to Q[0.00029088821] }
  end
  describe Q[1,"arcsec"] do
    it {should be_a_quantity_close_to Q[4.8481368e-06] }
  end
  describe Q[1,"arcsecond"] do
    it {should be_a_quantity_close_to Q[4.8481368e-06] }
  end
  describe Q[1,"\""] do
    it {should be_a_quantity_close_to Q[4.8481368e-06] }
  end
  describe Q[1,"rightangle"] do
    it {should be_a_quantity_close_to Q[1.5707963] }
  end
  describe Q[1,"quadrant"] do
    it {should be_a_quantity_close_to Q[1.5707963] }
  end
  describe Q[1,"quintant"] do
    it {should be_a_quantity_close_to Q[1.2566371] }
  end
  describe Q[1,"sextant"] do
    it {should be_a_quantity_close_to Q[1.0471976] }
  end
  describe Q[1,"sign"] do
    it {should be_a_quantity_close_to Q[0.52359878] }
  end
  describe Q[1,"turn"] do
    it {should be_a_quantity_close_to Q[6.2831853] }
  end
  describe Q[1,"revolution"] do
    it {should be_a_quantity_close_to Q[6.2831853] }
  end
  describe Q[1,"rev"] do
    it {should be_a_quantity_close_to Q[6.2831853] }
  end
  describe Q[1,"pulsatance"] do
    it {should be_a_quantity_close_to Q[1,"s^-1"] }
  end
  describe Q[1,"gon"] do
    it {should be_a_quantity_close_to Q[0.015707963] }
  end
  describe Q[1,"grade"] do
    it {should be_a_quantity_close_to Q[0.015707963] }
  end
  describe Q[1,"centesimalminute"] do
    it {should be_a_quantity_close_to Q[0.00015707963] }
  end
  describe Q[1,"centesimalsecond"] do
    it {should be_a_quantity_close_to Q[1.5707963e-06] }
  end
  describe Q[1,"milangle"] do
    it {should be_a_quantity_close_to Q[0.0009817477] }
  end
  describe Q[1,"pointangle"] do
    it {should be_a_quantity_close_to Q[0.19634954] }
  end
  describe Q[1,"centrad"] do
    it {should be_a_quantity_close_to Q[0.01] }
  end
  describe Q[1,"mas"] do
    it {should be_a_quantity_close_to Q[4.8481368e-09] }
  end
  describe Q[1,"seclongitude"] do
    it {should be_a_quantity_close_to Q[7.2722052e-05] }
  end
  describe Q[1,"sphere"] do
    it {should be_a_quantity_close_to Q[12.566371] }
  end
  describe Q[1,"squaredegree"] do
    it {should be_a_quantity_close_to Q[0.00030461742] }
  end
  describe Q[1,"squareminute"] do
    it {should be_a_quantity_close_to Q[8.461595e-08] }
  end
  describe Q[1,"squaresecond"] do
    it {should be_a_quantity_close_to Q[2.3504431e-11] }
  end
  describe Q[1,"squarearcmin"] do
    it {should be_a_quantity_close_to Q[8.461595e-08] }
  end
  describe Q[1,"squarearcsec"] do
    it {should be_a_quantity_close_to Q[2.3504431e-11] }
  end
  describe Q[1,"sphericalrightangle"] do
    it {should be_a_quantity_close_to Q[1.5707963] }
  end
  describe Q[1,"octant"] do
    it {should be_a_quantity_close_to Q[1.5707963] }
  end
  describe Q[1,"percent"] do
    it {should be_a_quantity_close_to Q[0.01] }
  end
  describe Q[1,"%"] do
    it {should be_a_quantity_close_to Q[0.01] }
  end
  describe Q[1,"mill"] do
    it {should be_a_quantity_close_to Q[0.001] }
  end
  describe Q[1,"proof"] do
    it {should be_a_quantity_close_to Q[0.005] }
  end
  describe Q[1,"ppm"] do
    it {should be_a_quantity_close_to Q[1e-06] }
  end
  describe Q[1,"partspermillion"] do
    it {should be_a_quantity_close_to Q[1e-06] }
  end
  describe Q[1,"ppb"] do
    it {should be_a_quantity_close_to Q[1e-09] }
  end
  describe Q[1,"partsperbillion"] do
    it {should be_a_quantity_close_to Q[1e-09] }
  end
  describe Q[1,"ppt"] do
    it {should be_a_quantity_close_to Q[1e-12] }
  end
  describe Q[1,"partspertrillion"] do
    it {should be_a_quantity_close_to Q[1e-12] }
  end
  describe Q[1,"karat"] do
    it {should be_a_quantity_close_to Q[0.041666667] }
  end
  describe Q[1,"caratgold"] do
    it {should be_a_quantity_close_to Q[0.041666667] }
  end
  describe Q[1,"gammil"] do
    it {should be_a_quantity_close_to Q[0.001,"kg m^-3"] }
  end
  describe Q[1,"basispoint"] do
    it {should be_a_quantity_close_to Q[0.0001] }
  end
  describe Q[1,"fine"] do
    it {should be_a_quantity_close_to Q[0.001] }
  end
  describe Q[1,"TEMPERATURE"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"TEMPERATURE_DIFFERENCE"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"degcelsius"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"degC"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"degfahrenheit"] do
    it {should be_a_quantity_close_to Q[0.55555556,"K"] }
  end
  describe Q[1,"degF"] do
    it {should be_a_quantity_close_to Q[0.55555556,"K"] }
  end
  describe Q[1,"degreesrankine"] do
    it {should be_a_quantity_close_to Q[0.55555556,"K"] }
  end
  describe Q[1,"degrankine"] do
    it {should be_a_quantity_close_to Q[0.55555556,"K"] }
  end
  describe Q[1,"degreerankine"] do
    it {should be_a_quantity_close_to Q[0.55555556,"K"] }
  end
  describe Q[1,"degR"] do
    it {should be_a_quantity_close_to Q[0.55555556,"K"] }
  end
  describe Q[1,"tempR"] do
    it {should be_a_quantity_close_to Q[0.55555556,"K"] }
  end
  describe Q[1,"temprankine"] do
    it {should be_a_quantity_close_to Q[0.55555556,"K"] }
  end
  describe Q[1,"degreaumur"] do
    it {should be_a_quantity_close_to Q[1.25,"K"] }
  end
  describe Q[1,"degK"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"tempK"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"pi"] do
    it {should be_a_quantity_close_to Q[3.1415927] }
  end
  describe Q[1,"c"] do
    it {should be_a_quantity_close_to Q[2.9979246e+08,"m s^-1"] }
  end
  describe Q[1,"light"] do
    it {should be_a_quantity_close_to Q[2.9979246e+08,"m s^-1"] }
  end
  describe Q[1,"mu0"] do
    it {should be_a_quantity_close_to Q[1.2566371e-06,"kg m s^-2 A^-2"] }
  end
  describe Q[1,"epsilon0"] do
    it {should be_a_quantity_close_to Q[8.8541878e-12,"kg^-1 m^-3 s^4 A^2"] }
  end
  describe Q[1,"energy"] do
    it {should be_a_quantity_close_to Q[8.9875518e+16,"m^2 s^-2"] }
  end
  describe Q[1,"e"] do
    it {should be_a_quantity_close_to Q[1.6021766e-19,"A s"] }
  end
  describe Q[1,"h"] do
    it {should be_a_quantity_close_to Q[6.6260696e-34,"s^-1 kg m^2"] }
  end
  describe Q[1,"hbar"] do
    it {should be_a_quantity_close_to Q[1.0545717e-34,"s^-1 kg m^2"] }
  end
  describe Q[1,"spin"] do
    it {should be_a_quantity_close_to Q[1.0545717e-34,"s^-1 kg m^2"] }
  end
  describe Q[1,"G"] do
    it {should be_a_quantity_close_to Q[6.67384e-11,"kg^-1 m^3 s^-2"] }
  end
  describe Q[1,"coulombconst"] do
    it {should be_a_quantity_close_to Q[8.9875518e+09,"kg m^3 s^-4 A^-2"] }
  end
  describe Q[1,"atomicmassunit"] do
    it {should be_a_quantity_close_to Q[1.6605389e-27,"kg"] }
  end
  describe Q[1,"u"] do
    it {should be_a_quantity_close_to Q[1.6605389e-27,"kg"] }
  end
  describe Q[1,"amu"] do
    it {should be_a_quantity_close_to Q[1.6605389e-27,"kg"] }
  end
  describe Q[1,"amu_chem"] do
    it {should be_a_quantity_close_to Q[1.66026e-27,"kg"] }
  end
  describe Q[1,"amu_phys"] do
    it {should be_a_quantity_close_to Q[1.65981e-27,"kg"] }
  end
  describe Q[1,"dalton"] do
    it {should be_a_quantity_close_to Q[1.6605389e-27,"kg"] }
  end
  describe Q[1,"avogadro"] do
    it {should be_a_quantity_close_to Q[6.0221413e+23,"mol^-1"] }
  end
  describe Q[1,"N_A"] do
    it {should be_a_quantity_close_to Q[6.0221413e+23,"mol^-1"] }
  end
  describe Q[1,"gasconstant"] do
    it {should be_a_quantity_close_to Q[8.3144621,"kg m^2 s^-2 mol^-1 K^-1"] }
  end
  describe Q[1,"R"] do
    it {should be_a_quantity_close_to Q[8.3144621,"kg m^2 s^-2 mol^-1 K^-1"] }
  end
  describe Q[1,"boltzmann"] do
    it {should be_a_quantity_close_to Q[1.3806488e-23,"kg m^2 s^-2 K^-1"] }
  end
  describe Q[1,"k"] do
    it {should be_a_quantity_close_to Q[1.3806488e-23,"kg m^2 s^-2 K^-1"] }
  end
  describe Q[1,"kboltzmann"] do
    it {should be_a_quantity_close_to Q[1.3806488e-23,"kg m^2 s^-2 K^-1"] }
  end
  describe Q[1,"molarvolume"] do
    it {should be_a_quantity_close_to Q[0.022413968,"m^3"] }
  end
  describe Q[1,"loschmidt"] do
    it {should be_a_quantity_close_to Q[2.6867805e+25,"m^-3"] }
  end
  describe Q[1,"stefanboltzmann"] do
    it {should be_a_quantity_close_to Q[5.6703725e-08,"kg s^-3 K^-4"] }
  end
  describe Q[1,"sigma"] do
    it {should be_a_quantity_close_to Q[5.6703725e-08,"kg s^-3 K^-4"] }
  end
  describe Q[1,"wiendisplacement"] do
    it {should be_a_quantity_close_to Q[0.0028977721,"m K"] }
  end
  describe Q[1,"K_J"] do
    it {should be_a_quantity_close_to Q[4.8359787e+14,"s^2 kg^-1 m^-2 A"] }
  end
  describe Q[1,"R_K"] do
    it {should be_a_quantity_close_to Q[25812.807,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"gravity"] do
    it {should be_a_quantity_close_to Q[9.80665,"m s^-2"] }
  end
  describe Q[1,"force"] do
    it {should be_a_quantity_close_to Q[9.80665,"m s^-2"] }
  end
  describe Q[1,"atm"] do
    it {should be_a_quantity_close_to Q[101325,"kg m^-1 s^-2"] }
  end
  describe Q[1,"atmosphere"] do
    it {should be_a_quantity_close_to Q[101325,"kg m^-1 s^-2"] }
  end
  describe Q[1,"Hg"] do
    it {should be_a_quantity_close_to Q[133322.39,"kg m^-2 s^-2"] }
  end
  describe Q[1,"water"] do
    it {should be_a_quantity_close_to Q[9806.65,"kg m^-2 s^-2"] }
  end
  describe Q[1,"waterdensity"] do
    it {should be_a_quantity_close_to Q[1000,"kg m^-3"] }
  end
  describe Q[1,"H2O"] do
    it {should be_a_quantity_close_to Q[9806.65,"kg m^-2 s^-2"] }
  end
  describe Q[1,"wc"] do
    it {should be_a_quantity_close_to Q[9806.65,"kg m^-2 s^-2"] }
  end
  describe Q[1,"mach"] do
    it {should be_a_quantity_close_to Q[331.46,"m s^-1"] }
  end
  describe Q[1,"standardtemp"] do
    it {should be_a_quantity_close_to Q[273.15,"K"] }
  end
  describe Q[1,"stdtemp"] do
    it {should be_a_quantity_close_to Q[273.15,"K"] }
  end
  describe Q[1,"Hg10C"] do
    it {should be_a_quantity_close_to Q[133084.09,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"Hg20C"] do
    it {should be_a_quantity_close_to Q[132842.84,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"Hg23C"] do
    it {should be_a_quantity_close_to Q[132768.31,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"Hg30C"] do
    it {should be_a_quantity_close_to Q[132602.58,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"Hg40C"] do
    it {should be_a_quantity_close_to Q[132363.3,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"Hg60F"] do
    it {should be_a_quantity_close_to Q[132952.68,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"H2O0C"] do
    it {should be_a_quantity_close_to Q[9805.3751,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"H2O5C"] do
    it {should be_a_quantity_close_to Q[9806.5519,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"H2O10C"] do
    it {should be_a_quantity_close_to Q[9804.0022,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"H2O15C"] do
    it {should be_a_quantity_close_to Q[9798.1182,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"H2O18C"] do
    it {should be_a_quantity_close_to Q[9793.1168,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"H2O20C"] do
    it {should be_a_quantity_close_to Q[9789.2922,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"H2O25C"] do
    it {should be_a_quantity_close_to Q[9777.9165,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"H2O50C"] do
    it {should be_a_quantity_close_to Q[9689.6567,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"H2O100C"] do
    it {should be_a_quantity_close_to Q[9398.4972,"m^-2 s^-2 kg"] }
  end
  describe Q[1,"Rinfinity"] do
    it {should be_a_quantity_close_to Q[10973732,"m^-1"] }
  end
  describe Q[1,"R_H"] do
    it {should be_a_quantity_close_to Q[10967760,"m^-1"] }
  end
  describe Q[1,"alpha"] do
    it {should be_a_quantity_close_to Q[0.0072973526] }
  end
  describe Q[1,"bohrradius"] do
    it {should be_a_quantity_close_to Q[5.2917721e-11,"m"] }
  end
  describe Q[1,"prout"] do
    it {should be_a_quantity_close_to Q[2.9720375e-14,"s^-2 kg m^2"] }
  end
  describe Q[1,"planckmass"] do
    it {should be_a_quantity_close_to Q[2.17644e-08,"kg"] }
  end
  describe Q[1,"m_P"] do
    it {should be_a_quantity_close_to Q[2.17644e-08,"kg"] }
  end
  describe Q[1,"plancktime"] do
    it {should be_a_quantity_close_to Q[5.391232e-44,"s"] }
  end
  describe Q[1,"t_P"] do
    it {should be_a_quantity_close_to Q[5.391232e-44,"s"] }
  end
  describe Q[1,"plancklength"] do
    it {should be_a_quantity_close_to Q[1.6162507e-35,"m"] }
  end
  describe Q[1,"l_P"] do
    it {should be_a_quantity_close_to Q[1.6162507e-35,"m"] }
  end
  describe Q[1,"electronradius"] do
    it {should be_a_quantity_close_to Q[2.8179403e-15,"m"] }
  end
  describe Q[1,"deuteronchargeradius"] do
    it {should be_a_quantity_close_to Q[2.1424e-15,"m"] }
  end
  describe Q[1,"protonchargeradius"] do
    it {should be_a_quantity_close_to Q[8.775e-16] }
  end
  describe Q[1,"electronmass"] do
    it {should be_a_quantity_close_to Q[9.1093829e-31,"kg"] }
  end
  describe Q[1,"m_e"] do
    it {should be_a_quantity_close_to Q[9.1093829e-31,"kg"] }
  end
  describe Q[1,"protonmass"] do
    it {should be_a_quantity_close_to Q[1.6726218e-27,"kg"] }
  end
  describe Q[1,"m_p"] do
    it {should be_a_quantity_close_to Q[1.6726218e-27,"kg"] }
  end
  describe Q[1,"neutronmass"] do
    it {should be_a_quantity_close_to Q[1.6749274e-27,"kg"] }
  end
  describe Q[1,"m_n"] do
    it {should be_a_quantity_close_to Q[1.6749274e-27,"kg"] }
  end
  describe Q[1,"muonmass"] do
    it {should be_a_quantity_close_to Q[1.8835315e-28,"kg"] }
  end
  describe Q[1,"m_mu"] do
    it {should be_a_quantity_close_to Q[1.8835315e-28,"kg"] }
  end
  describe Q[1,"deuteronmass"] do
    it {should be_a_quantity_close_to Q[3.3435835e-27,"kg"] }
  end
  describe Q[1,"m_d"] do
    it {should be_a_quantity_close_to Q[3.3435835e-27,"kg"] }
  end
  describe Q[1,"alphaparticlemass"] do
    it {should be_a_quantity_close_to Q[6.6446568e-27,"kg"] }
  end
  describe Q[1,"m_alpha"] do
    it {should be_a_quantity_close_to Q[6.6446568e-27,"kg"] }
  end
  describe Q[1,"taumass"] do
    it {should be_a_quantity_close_to Q[3.1674614e-27,"kg"] }
  end
  describe Q[1,"m_tau"] do
    it {should be_a_quantity_close_to Q[3.1674614e-27,"kg"] }
  end
  describe Q[1,"tritonmass"] do
    it {should be_a_quantity_close_to Q[5.0073563e-27,"kg"] }
  end
  describe Q[1,"m_t"] do
    it {should be_a_quantity_close_to Q[5.0073563e-27,"kg"] }
  end
  describe Q[1,"helionmass"] do
    it {should be_a_quantity_close_to Q[5.0064123e-27,"kg"] }
  end
  describe Q[1,"m_h"] do
    it {should be_a_quantity_close_to Q[5.0064123e-27,"kg"] }
  end
  describe Q[1,"electronwavelength"] do
    it {should be_a_quantity_close_to Q[2.4263102e-12,"m"] }
  end
  describe Q[1,"lambda_C"] do
    it {should be_a_quantity_close_to Q[2.4263102e-12,"m"] }
  end
  describe Q[1,"protonwavelength"] do
    it {should be_a_quantity_close_to Q[1.3214099e-15,"m"] }
  end
  describe Q[1,"lambda_C,p"] do
    it {should be_a_quantity_close_to Q[1.3214099e-15,"m"] }
  end
  describe Q[1,"neutronwavelength"] do
    it {should be_a_quantity_close_to Q[1.3195909e-15,"m"] }
  end
  describe Q[1,"lambda_C,n"] do
    it {should be_a_quantity_close_to Q[1.3195909e-15,"m"] }
  end
  describe Q[1,"bohrmagneton"] do
    it {should be_a_quantity_close_to Q[9.2740097e-24,"A m^2"] }
  end
  describe Q[1,"mu_B"] do
    it {should be_a_quantity_close_to Q[9.2740097e-24,"A m^2"] }
  end
  describe Q[1,"nuclearmagneton"] do
    it {should be_a_quantity_close_to Q[5.0507835e-27,"A m^2"] }
  end
  describe Q[1,"mu_N"] do
    it {should be_a_quantity_close_to Q[5.0507835e-27,"A m^2"] }
  end
  describe Q[1,"mu_mu"] do
    it {should be_a_quantity_close_to Q[-4.4904481e-26,"m^2 A"] }
  end
  describe Q[1,"mu_p"] do
    it {should be_a_quantity_close_to Q[1.4106067e-26,"m^2 A"] }
  end
  describe Q[1,"mu_e"] do
    it {should be_a_quantity_close_to Q[-9.2847643e-24,"m^2 A"] }
  end
  describe Q[1,"mu_n"] do
    it {should be_a_quantity_close_to Q[-9.6623647e-27] }
  end
  describe Q[1,"mu_d"] do
    it {should be_a_quantity_close_to Q[4.3307349e-27,"m^2 A"] }
  end
  describe Q[1,"mu_t"] do
    it {should be_a_quantity_close_to Q[1.5046094e-26,"m^2 A"] }
  end
  describe Q[1,"mu_h"] do
    it {should be_a_quantity_close_to Q[-1.0746175e-26,"m^2 A"] }
  end
  describe Q[1,"kgf"] do
    it {should be_a_quantity_close_to Q[9.80665,"kg m s^-2"] }
  end
  describe Q[1,"technicalatmosphere"] do
    it {should be_a_quantity_close_to Q[98066.5,"kg m^-1 s^-2"] }
  end
  describe Q[1,"at"] do
    it {should be_a_quantity_close_to Q[98066.5,"kg m^-1 s^-2"] }
  end
  describe Q[1,"hyl"] do
    it {should be_a_quantity_close_to Q[9.80665,"kg"] }
  end
  describe Q[1,"mmHg"] do
    it {should be_a_quantity_close_to Q[133.32239,"m^-1 kg s^-2"] }
  end
  describe Q[1,"torr"] do
    it {should be_a_quantity_close_to Q[133.32239,"m^-1 kg s^-2"] }
  end
  describe Q[1,"tor"] do
    it {should be_a_quantity_close_to Q[1,"kg m^-1 s^-2"] }
  end
  describe Q[1,"inHg"] do
    it {should be_a_quantity_close_to Q[3386.3886,"m^-1 kg s^-2"] }
  end
  describe Q[1,"inH2O"] do
    it {should be_a_quantity_close_to Q[249.08891,"m^-1 kg s^-2"] }
  end
  describe Q[1,"mmH2O"] do
    it {should be_a_quantity_close_to Q[9.80665,"m^-1 kg s^-2"] }
  end
  describe Q[1,"eV"] do
    it {should be_a_quantity_close_to Q[1.6021766e-19,"s^-2 kg m^2"] }
  end
  describe Q[1,"electronvolt"] do
    it {should be_a_quantity_close_to Q[1.6021766e-19,"s^-2 kg m^2"] }
  end
  describe Q[1,"lightyear"] do
    it {should be_a_quantity_close_to Q[9.4607305e+15,"m"] }
  end
  describe Q[1,"ly"] do
    it {should be_a_quantity_close_to Q[9.4607305e+15,"m"] }
  end
  describe Q[1,"lightsecond"] do
    it {should be_a_quantity_close_to Q[2.9979246e+08,"m"] }
  end
  describe Q[1,"lightminute"] do
    it {should be_a_quantity_close_to Q[1.7987547e+10,"m"] }
  end
  describe Q[1,"parsec"] do
    it {should be_a_quantity_close_to Q[3.0856776e+16,"m"] }
  end
  describe Q[1,"pc"] do
    it {should be_a_quantity_close_to Q[3.0856776e+16,"m"] }
  end
  describe Q[1,"rydberg"] do
    it {should be_a_quantity_close_to Q[2.1798722e-18,"s^-2 kg m^2"] }
  end
  describe Q[1,"crith"] do
    it {should be_a_quantity_close_to Q[8.9885e-05,"kg"] }
  end
  describe Q[1,"amagatvolume"] do
    it {should be_a_quantity_close_to Q[0.022413968,"m^3"] }
  end
  describe Q[1,"amagat"] do
    it {should be_a_quantity_close_to Q[44.615036,"mol m^-3"] }
  end
  describe Q[1,"lorentz"] do
    it {should be_a_quantity_close_to Q[46.68645,"A m^-1 s^2 kg^-1"] }
  end
  describe Q[1,"cminv"] do
    it {should be_a_quantity_close_to Q[1.9864457e-23,"s^-2 kg m^2"] }
  end
  describe Q[1,"invcm"] do
    it {should be_a_quantity_close_to Q[1.9864457e-23,"s^-2 kg m^2"] }
  end
  describe Q[1,"wavenumber"] do
    it {should be_a_quantity_close_to Q[1.9864457e-23,"s^-2 kg m^2"] }
  end
  describe Q[1,"kcal_mol"] do
    it {should be_a_quantity_close_to Q[6.9476948e-21,"kg m^2 s^-2"] }
  end
  describe Q[1,"dyne"] do
    it {should be_a_quantity_close_to Q[1e-05,"m kg s^-2"] }
  end
  describe Q[1,"dyn"] do
    it {should be_a_quantity_close_to Q[1e-05,"m kg s^-2"] }
  end
  describe Q[1,"erg"] do
    it {should be_a_quantity_close_to Q[1e-07,"m^2 kg s^-2"] }
  end
  describe Q[1,"poise"] do
    it {should be_a_quantity_close_to Q[0.1,"kg m^-1 s^-1"] }
  end
  describe Q[1,"P"] do
    it {should be_a_quantity_close_to Q[0.1,"kg m^-1 s^-1"] }
  end
  describe Q[1,"rhe"] do
    it {should be_a_quantity_close_to Q[10,"kg^-1 m s"] }
  end
  describe Q[1,"stokes"] do
    it {should be_a_quantity_close_to Q[0.0001,"m^2 s^-1"] }
  end
  describe Q[1,"St"] do
    it {should be_a_quantity_close_to Q[0.0001,"m^2 s^-1"] }
  end
  describe Q[1,"stoke"] do
    it {should be_a_quantity_close_to Q[0.0001,"m^2 s^-1"] }
  end
  describe Q[1,"lentor"] do
    it {should be_a_quantity_close_to Q[0.0001,"m^2 s^-1"] }
  end
  describe Q[1,"Gal"] do
    it {should be_a_quantity_close_to Q[0.01,"m s^-2"] }
  end
  describe Q[1,"galileo"] do
    it {should be_a_quantity_close_to Q[0.01,"m s^-2"] }
  end
  describe Q[1,"barye"] do
    it {should be_a_quantity_close_to Q[0.1,"m^-1 kg s^-2"] }
  end
  describe Q[1,"barad"] do
    it {should be_a_quantity_close_to Q[0.1,"m^-1 kg s^-2"] }
  end
  describe Q[1,"kayser"] do
    it {should be_a_quantity_close_to Q[100,"m^-1"] }
  end
  describe Q[1,"balmer"] do
    it {should be_a_quantity_close_to Q[100,"m^-1"] }
  end
  describe Q[1,"kine"] do
    it {should be_a_quantity_close_to Q[0.01,"m s^-1"] }
  end
  describe Q[1,"bole"] do
    it {should be_a_quantity_close_to Q[1e-05,"kg m s^-1"] }
  end
  describe Q[1,"pond"] do
    it {should be_a_quantity_close_to Q[0.00980665,"kg m s^-2"] }
  end
  describe Q[1,"glug"] do
    it {should be_a_quantity_close_to Q[0.980665,"kg"] }
  end
  describe Q[1,"darcy"] do
    it {should be_a_quantity_close_to Q[9.8692327e-13,"m^2"] }
  end
  describe Q[1,"mobileohm"] do
    it {should be_a_quantity_close_to Q[1000,"kg^-1 s"] }
  end
  describe Q[1,"mechanicalohm"] do
    it {should be_a_quantity_close_to Q[0.001,"kg s^-1"] }
  end
  describe Q[1,"acousticalohm"] do
    it {should be_a_quantity_close_to Q[100000,"m^-4 kg s^-1"] }
  end
  describe Q[1,"ray"] do
    it {should be_a_quantity_close_to Q[100000,"m^-4 kg s^-1"] }
  end
  describe Q[1,"rayl"] do
    it {should be_a_quantity_close_to Q[10,"m^-2 kg s^-1"] }
  end
  describe Q[1,"eotvos"] do
    it {should be_a_quantity_close_to Q[1e-09,"s^-2"] }
  end
  describe Q[1,"abampere"] do
    it {should be_a_quantity_close_to Q[10,"A"] }
  end
  describe Q[1,"abamp"] do
    it {should be_a_quantity_close_to Q[10,"A"] }
  end
  describe Q[1,"aA"] do
    it {should be_a_quantity_close_to Q[10,"A"] }
  end
  describe Q[1,"biot"] do
    it {should be_a_quantity_close_to Q[10,"A"] }
  end
  describe Q[1,"Bi"] do
    it {should be_a_quantity_close_to Q[10,"A"] }
  end
  describe Q[1,"abcoulomb"] do
    it {should be_a_quantity_close_to Q[10,"A s"] }
  end
  describe Q[1,"abcoul"] do
    it {should be_a_quantity_close_to Q[10,"A s"] }
  end
  describe Q[1,"abfarad"] do
    it {should be_a_quantity_close_to Q[1e+09,"A^2 s^4 m^-2 kg^-1"] }
  end
  describe Q[1,"abhenry"] do
    it {should be_a_quantity_close_to Q[1e-09,"m^2 kg s^-2 A^-2"] }
  end
  describe Q[1,"abvolt"] do
    it {should be_a_quantity_close_to Q[1e-08,"m^2 kg s^-3 A^-1"] }
  end
  describe Q[1,"abohm"] do
    it {should be_a_quantity_close_to Q[1e-09,"m^2 kg s^-3 A^-2"] }
  end
  describe Q[1,"abmho"] do
    it {should be_a_quantity_close_to Q[1e+09,"m^-2 kg^-1 s^3 A^2"] }
  end
  describe Q[1,"gauss"] do
    it {should be_a_quantity_close_to Q[0.0001,"kg s^-2 A^-1"] }
  end
  describe Q[1,"Gs"] do
    it {should be_a_quantity_close_to Q[0.0001,"kg s^-2 A^-1"] }
  end
  describe Q[1,"maxwell"] do
    it {should be_a_quantity_close_to Q[1e-08,"m^2 kg s^-2 A^-1"] }
  end
  describe Q[1,"Mx"] do
    it {should be_a_quantity_close_to Q[1e-08,"m^2 kg s^-2 A^-1"] }
  end
  describe Q[1,"oersted"] do
    it {should be_a_quantity_close_to Q[79.577472,"A m^-1"] }
  end
  describe Q[1,"Oe"] do
    it {should be_a_quantity_close_to Q[79.577472,"A m^-1"] }
  end
  describe Q[1,"gilbert"] do
    it {should be_a_quantity_close_to Q[0.79577472,"A"] }
  end
  describe Q[1,"Gb"] do
    it {should be_a_quantity_close_to Q[0.79577472,"A"] }
  end
  describe Q[1,"Gi"] do
    it {should be_a_quantity_close_to Q[0.79577472,"A"] }
  end
  describe Q[1,"unitpole"] do
    it {should be_a_quantity_close_to Q[1.2566371e-07,"m^2 kg s^-2 A^-1"] }
  end
  describe Q[1,"emu"] do
    it {should be_a_quantity_close_to Q[0.001,"m^2 A"] }
  end
  describe Q[1,"statampere"] do
    it {should be_a_quantity_close_to Q[3.335641e-10,"A"] }
  end
  describe Q[1,"statamp"] do
    it {should be_a_quantity_close_to Q[3.335641e-10,"A"] }
  end
  describe Q[1,"statvolt"] do
    it {should be_a_quantity_close_to Q[299.79246,"m^2 kg s^-3 A^-1"] }
  end
  describe Q[1,"statcoulomb"] do
    it {should be_a_quantity_close_to Q[3.335641e-10,"A s"] }
  end
  describe Q[1,"esu"] do
    it {should be_a_quantity_close_to Q[3.335641e-10,"A s"] }
  end
  describe Q[1,"statcoul"] do
    it {should be_a_quantity_close_to Q[3.335641e-10,"A s"] }
  end
  describe Q[1,"statfarad"] do
    it {should be_a_quantity_close_to Q[1.1126501e-12,"A^2 s^4 m^-2 kg^-1"] }
  end
  describe Q[1,"cmcapacitance"] do
    it {should be_a_quantity_close_to Q[1.1126501e-12,"A^2 s^4 m^-2 kg^-1"] }
  end
  describe Q[1,"stathenry"] do
    it {should be_a_quantity_close_to Q[8.9875518e+11,"m^2 kg s^-2 A^-2"] }
  end
  describe Q[1,"statohm"] do
    it {should be_a_quantity_close_to Q[8.9875518e+11,"m^2 kg s^-3 A^-2"] }
  end
  describe Q[1,"statmho"] do
    it {should be_a_quantity_close_to Q[1.1126501e-12,"m^-2 kg^-1 s^3 A^2"] }
  end
  describe Q[1,"statmaxwell"] do
    it {should be_a_quantity_close_to Q[299.79246,"m^2 kg s^-2 A^-1"] }
  end
  describe Q[1,"franklin"] do
    it {should be_a_quantity_close_to Q[3.335641e-10,"A s"] }
  end
  describe Q[1,"debye"] do
    it {should be_a_quantity_close_to Q[3.335641e-30,"A s m"] }
  end
  describe Q[1,"helmholtz"] do
    it {should be_a_quantity_close_to Q[3.335641e-10,"A s m^-1"] }
  end
  describe Q[1,"jar"] do
    it {should be_a_quantity_close_to Q[1.1126501e-09,"A^2 s^4 m^-2 kg^-1"] }
  end
  describe Q[1,"intampere"] do
    it {should be_a_quantity_close_to Q[0.999835,"A"] }
  end
  describe Q[1,"intamp"] do
    it {should be_a_quantity_close_to Q[0.999835,"A"] }
  end
  describe Q[1,"intfarad"] do
    it {should be_a_quantity_close_to Q[0.999505,"A^2 s^4 kg^-1 m^-2"] }
  end
  describe Q[1,"intvolt"] do
    it {should be_a_quantity_close_to Q[1.00033,"kg m^2 s^-3 A^-1"] }
  end
  describe Q[1,"intohm"] do
    it {should be_a_quantity_close_to Q[1.000495,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"daniell"] do
    it {should be_a_quantity_close_to Q[1.042,"kg m^2 s^-3 A^-1"] }
  end
  describe Q[1,"faraday"] do
    it {should be_a_quantity_close_to Q[96485.336,"A s"] }
  end
  describe Q[1,"faraday_phys"] do
    it {should be_a_quantity_close_to Q[96521.9,"A s"] }
  end
  describe Q[1,"faraday_chem"] do
    it {should be_a_quantity_close_to Q[96495.7,"A s"] }
  end
  describe Q[1,"kappline"] do
    it {should be_a_quantity_close_to Q[6e-05,"m^2 kg s^-2 A^-1"] }
  end
  describe Q[1,"siemensunit"] do
    it {should be_a_quantity_close_to Q[0.9534,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"LUMINOUS_INTENSITY"] do
    it {should be_a_quantity_close_to Q[1,"cd"] }
  end
  describe Q[1,"LUMINOUS_FLUX"] do
    it {should be_a_quantity_close_to Q[1,"cd"] }
  end
  describe Q[1,"LUMINOUS_ENERGY"] do
    it {should be_a_quantity_close_to Q[1,"cd s"] }
  end
  describe Q[1,"ILLUMINANCE"] do
    it {should be_a_quantity_close_to Q[1,"cd m^-2"] }
  end
  describe Q[1,"EXITANCE"] do
    it {should be_a_quantity_close_to Q[1,"cd m^-2"] }
  end
  describe Q[1,"candle"] do
    it {should be_a_quantity_close_to Q[1.02,"cd"] }
  end
  describe Q[1,"hefnerunit"] do
    it {should be_a_quantity_close_to Q[0.918,"cd"] }
  end
  describe Q[1,"hefnercandle"] do
    it {should be_a_quantity_close_to Q[0.918,"cd"] }
  end
  describe Q[1,"violle"] do
    it {should be_a_quantity_close_to Q[20.17,"cd"] }
  end
  describe Q[1,"lumen"] do
    it {should be_a_quantity_close_to Q[1,"cd"] }
  end
  describe Q[1,"lm"] do
    it {should be_a_quantity_close_to Q[1,"cd"] }
  end
  describe Q[1,"talbot"] do
    it {should be_a_quantity_close_to Q[1,"cd s"] }
  end
  describe Q[1,"lumberg"] do
    it {should be_a_quantity_close_to Q[1,"cd s"] }
  end
  describe Q[1,"lumerg"] do
    it {should be_a_quantity_close_to Q[1,"cd s"] }
  end
  describe Q[1,"lux"] do
    it {should be_a_quantity_close_to Q[1,"cd m^-2"] }
  end
  describe Q[1,"lx"] do
    it {should be_a_quantity_close_to Q[1,"cd m^-2"] }
  end
  describe Q[1,"phot"] do
    it {should be_a_quantity_close_to Q[10000,"cd m^-2"] }
  end
  describe Q[1,"ph"] do
    it {should be_a_quantity_close_to Q[10000,"cd m^-2"] }
  end
  describe Q[1,"footcandle"] do
    it {should be_a_quantity_close_to Q[10.76391,"cd m^-2"] }
  end
  describe Q[1,"metercandle"] do
    it {should be_a_quantity_close_to Q[1,"cd m^-2"] }
  end
  describe Q[1,"mcs"] do
    it {should be_a_quantity_close_to Q[1,"cd m^-2 s"] }
  end
  describe Q[1,"nox"] do
    it {should be_a_quantity_close_to Q[0.001,"cd m^-2"] }
  end
  describe Q[1,"skot"] do
    it {should be_a_quantity_close_to Q[0.00031830989,"cd m^-2"] }
  end
  describe Q[1,"LUMINANCE"] do
    it {should be_a_quantity_close_to Q[1,"cd m^-2"] }
  end
  describe Q[1,"nit"] do
    it {should be_a_quantity_close_to Q[1,"cd m^-2"] }
  end
  describe Q[1,"stilb"] do
    it {should be_a_quantity_close_to Q[10000,"cd m^-2"] }
  end
  describe Q[1,"sb"] do
    it {should be_a_quantity_close_to Q[10000,"cd m^-2"] }
  end
  describe Q[1,"apostilb"] do
    it {should be_a_quantity_close_to Q[0.31830989,"cd m^-2"] }
  end
  describe Q[1,"asb"] do
    it {should be_a_quantity_close_to Q[0.31830989,"cd m^-2"] }
  end
  describe Q[1,"blondel"] do
    it {should be_a_quantity_close_to Q[0.31830989,"cd m^-2"] }
  end
  describe Q[1,"equivalentlux"] do
    it {should be_a_quantity_close_to Q[0.31830989,"cd m^-2"] }
  end
  describe Q[1,"equivalentphot"] do
    it {should be_a_quantity_close_to Q[3183.0989,"cd m^-2"] }
  end
  describe Q[1,"lambert"] do
    it {should be_a_quantity_close_to Q[3183.0989,"cd m^-2"] }
  end
  describe Q[1,"footlambert"] do
    it {should be_a_quantity_close_to Q[3.4262591,"cd m^-2"] }
  end
  describe Q[1,"sunlum"] do
    it {should be_a_quantity_close_to Q[1.6e+09,"cd m^-2"] }
  end
  describe Q[1,"sunillum"] do
    it {should be_a_quantity_close_to Q[100000,"cd m^-2"] }
  end
  describe Q[1,"sunillum_o"] do
    it {should be_a_quantity_close_to Q[10000,"cd m^-2"] }
  end
  describe Q[1,"sunlum_h"] do
    it {should be_a_quantity_close_to Q[6000000,"cd m^-2"] }
  end
  describe Q[1,"skylum"] do
    it {should be_a_quantity_close_to Q[8000,"cd m^-2"] }
  end
  describe Q[1,"skylum_o"] do
    it {should be_a_quantity_close_to Q[2000,"cd m^-2"] }
  end
  describe Q[1,"moonlum"] do
    it {should be_a_quantity_close_to Q[2500,"cd m^-2"] }
  end
  describe Q[1,"s100"] do
    it {should be_a_quantity_close_to Q[100,"cd^-1 m^2 s^-1"] }
  end
  describe Q[1,"iso100"] do
    it {should be_a_quantity_close_to Q[100,"cd^-1 m^2 s^-1"] }
  end
  describe Q[1,"k1250"] do
    it {should be_a_quantity_close_to Q[12.5,"s^-1"] }
  end
  describe Q[1,"k1400"] do
    it {should be_a_quantity_close_to Q[14,"s^-1"] }
  end
  describe Q[1,"c250"] do
    it {should be_a_quantity_close_to Q[250,"s^-1"] }
  end
  describe Q[1,"TIME"] do
    it {should be_a_quantity_close_to Q[1,"s"] }
  end
  describe Q[1,"anomalisticyear"] do
    it {should be_a_quantity_close_to Q[31558429,"s"] }
  end
  describe Q[1,"siderealyear"] do
    it {should be_a_quantity_close_to Q[31558150,"s"] }
  end
  describe Q[1,"tropicalyear"] do
    it {should be_a_quantity_close_to Q[31556926,"s"] }
  end
  describe Q[1,"eclipseyear"] do
    it {should be_a_quantity_close_to Q[29947968,"s"] }
  end
  describe Q[1,"saros"] do
    it {should be_a_quantity_close_to Q[5.6897174e+08,"s"] }
  end
  describe Q[1,"siderealday"] do
    it {should be_a_quantity_close_to Q[86164.091,"s"] }
  end
  describe Q[1,"siderealhour"] do
    it {should be_a_quantity_close_to Q[3590.1704,"s"] }
  end
  describe Q[1,"siderealminute"] do
    it {should be_a_quantity_close_to Q[59.836174,"s"] }
  end
  describe Q[1,"siderealsecond"] do
    it {should be_a_quantity_close_to Q[0.99726957,"s"] }
  end
  describe Q[1,"anomalisticmonth"] do
    it {should be_a_quantity_close_to Q[2380713.1,"s"] }
  end
  describe Q[1,"nodicalmonth"] do
    it {should be_a_quantity_close_to Q[2351135.8,"s"] }
  end
  describe Q[1,"draconicmonth"] do
    it {should be_a_quantity_close_to Q[2351135.8,"s"] }
  end
  describe Q[1,"draconiticmonth"] do
    it {should be_a_quantity_close_to Q[2351135.8,"s"] }
  end
  describe Q[1,"siderealmonth"] do
    it {should be_a_quantity_close_to Q[2360591.5,"s"] }
  end
  describe Q[1,"lunarmonth"] do
    it {should be_a_quantity_close_to Q[2551442.8,"s"] }
  end
  describe Q[1,"synodicmonth"] do
    it {should be_a_quantity_close_to Q[2551442.8,"s"] }
  end
  describe Q[1,"lunation"] do
    it {should be_a_quantity_close_to Q[2551442.8,"s"] }
  end
  describe Q[1,"lune"] do
    it {should be_a_quantity_close_to Q[85048.093,"s"] }
  end
  describe Q[1,"lunour"] do
    it {should be_a_quantity_close_to Q[3543.6706,"s"] }
  end
  describe Q[1,"year"] do
    it {should be_a_quantity_close_to Q[31556926,"s"] }
  end
  describe Q[1,"yr"] do
    it {should be_a_quantity_close_to Q[31556926,"s"] }
  end
  describe Q[1,"month"] do
    it {should be_a_quantity_close_to Q[2629743.8,"s"] }
  end
  describe Q[1,"mo"] do
    it {should be_a_quantity_close_to Q[2629743.8,"s"] }
  end
  describe Q[1,"lustrum"] do
    it {should be_a_quantity_close_to Q[1.5778463e+08,"s"] }
  end
  describe Q[1,"decade"] do
    it {should be_a_quantity_close_to Q[3.1556926e+08,"s"] }
  end
  describe Q[1,"century"] do
    it {should be_a_quantity_close_to Q[3.1556926e+09,"s"] }
  end
  describe Q[1,"millennium"] do
    it {should be_a_quantity_close_to Q[3.1556926e+10,"s"] }
  end
  describe Q[1,"millennia"] do
    it {should be_a_quantity_close_to Q[3.1556926e+10,"s"] }
  end
  describe Q[1,"solaryear"] do
    it {should be_a_quantity_close_to Q[31556926,"s"] }
  end
  describe Q[1,"lunaryear"] do
    it {should be_a_quantity_close_to Q[30617314,"s"] }
  end
  describe Q[1,"calendaryear"] do
    it {should be_a_quantity_close_to Q[31536000,"s"] }
  end
  describe Q[1,"commonyear"] do
    it {should be_a_quantity_close_to Q[31536000,"s"] }
  end
  describe Q[1,"leapyear"] do
    it {should be_a_quantity_close_to Q[31622400,"s"] }
  end
  describe Q[1,"julianyear"] do
    it {should be_a_quantity_close_to Q[31557600,"s"] }
  end
  describe Q[1,"gregorianyear"] do
    it {should be_a_quantity_close_to Q[31556952,"s"] }
  end
  describe Q[1,"islamicyear"] do
    it {should be_a_quantity_close_to Q[30585600,"s"] }
  end
  describe Q[1,"islamicleapyear"] do
    it {should be_a_quantity_close_to Q[30672000,"s"] }
  end
  describe Q[1,"islamicmonth"] do
    it {should be_a_quantity_close_to Q[2548800,"s"] }
  end
  describe Q[1,"mercuryday"] do
    it {should be_a_quantity_close_to Q[5067031.7,"s"] }
  end
  describe Q[1,"venusday"] do
    it {should be_a_quantity_close_to Q[20996064,"s"] }
  end
  describe Q[1,"earthday"] do
    it {should be_a_quantity_close_to Q[86164.091,"s"] }
  end
  describe Q[1,"marsday"] do
    it {should be_a_quantity_close_to Q[88642.663,"s"] }
  end
  describe Q[1,"jupiterday"] do
    it {should be_a_quantity_close_to Q[35729.856,"s"] }
  end
  describe Q[1,"saturnday"] do
    it {should be_a_quantity_close_to Q[37800,"s"] }
  end
  describe Q[1,"uranusday"] do
    it {should be_a_quantity_close_to Q[56160,"s"] }
  end
  describe Q[1,"neptuneday"] do
    it {should be_a_quantity_close_to Q[66355.2,"s"] }
  end
  describe Q[1,"plutoday"] do
    it {should be_a_quantity_close_to Q[551810.88,"s"] }
  end
  describe Q[1,"mercuryyear"] do
    it {should be_a_quantity_close_to Q[7600543.8,"s"] }
  end
  describe Q[1,"venusyear"] do
    it {should be_a_quantity_close_to Q[19414149,"s"] }
  end
  describe Q[1,"earthyear"] do
    it {should be_a_quantity_close_to Q[31558150,"s"] }
  end
  describe Q[1,"marsyear"] do
    it {should be_a_quantity_close_to Q[59355036,"s"] }
  end
  describe Q[1,"jupiteryear"] do
    it {should be_a_quantity_close_to Q[3.7435566e+08,"s"] }
  end
  describe Q[1,"saturnyear"] do
    it {should be_a_quantity_close_to Q[9.2929236e+08,"s"] }
  end
  describe Q[1,"uranusyear"] do
    it {should be_a_quantity_close_to Q[2.65137e+09,"s"] }
  end
  describe Q[1,"neptuneyear"] do
    it {should be_a_quantity_close_to Q[5.2004186e+09,"s"] }
  end
  describe Q[1,"plutoyear"] do
    it {should be_a_quantity_close_to Q[7.8237807e+09,"s"] }
  end
  describe Q[1,"earthflattening"] do
    it {should be_a_quantity_close_to Q[0.0033528197] }
  end
  describe Q[1,"earthradius_equatorial"] do
    it {should be_a_quantity_close_to Q[6378136.5,"m"] }
  end
  describe Q[1,"earthradius_polar"] do
    it {should be_a_quantity_close_to Q[6356751.7,"m"] }
  end
  describe Q[1,"landarea"] do
    it {should be_a_quantity_close_to Q[1.48847e+14,"m^2"] }
  end
  describe Q[1,"oceanarea"] do
    it {should be_a_quantity_close_to Q[3.61254e+14,"m^2"] }
  end
  describe Q[1,"moonradius"] do
    it {should be_a_quantity_close_to Q[1738000,"m"] }
  end
  describe Q[1,"sunradius"] do
    it {should be_a_quantity_close_to Q[6.96e+08,"m"] }
  end
  describe Q[1,"gauss_k"] do
    it {should be_a_quantity_close_to Q[0.017202099] }
  end
  describe Q[1,"gaussianyear"] do
    it {should be_a_quantity_close_to Q[31558196,"s"] }
  end
  describe Q[1,"astronomicalunit"] do
    it {should be_a_quantity_close_to Q[1.4959787e+11,"m"] }
  end
  describe Q[1,"au"] do
    it {should be_a_quantity_close_to Q[1.4959787e+11,"m"] }
  end
  describe Q[1,"solarmass"] do
    it {should be_a_quantity_close_to Q[1.9891e+30,"kg"] }
  end
  describe Q[1,"sunmass"] do
    it {should be_a_quantity_close_to Q[1.9891e+30,"kg"] }
  end
  describe Q[1,"sundist"] do
    it {should be_a_quantity_close_to Q[1.4959802e+11,"m"] }
  end
  describe Q[1,"moondist"] do
    it {should be_a_quantity_close_to Q[3.844e+08,"m"] }
  end
  describe Q[1,"sundist_near"] do
    it {should be_a_quantity_close_to Q[1.471e+11,"m"] }
  end
  describe Q[1,"sundist_far"] do
    it {should be_a_quantity_close_to Q[1.521e+11,"m"] }
  end
  describe Q[1,"mercurymass"] do
    it {should be_a_quantity_close_to Q[3.3021781e+23,"kg"] }
  end
  describe Q[1,"venusmass"] do
    it {should be_a_quantity_close_to Q[4.8689952e+24,"kg"] }
  end
  describe Q[1,"earthmoonmass"] do
    it {should be_a_quantity_close_to Q[6.0477246e+24,"kg"] }
  end
  describe Q[1,"marsmass"] do
    it {should be_a_quantity_close_to Q[6.4191269e+23,"kg"] }
  end
  describe Q[1,"jupitermass"] do
    it {should be_a_quantity_close_to Q[1.8991766e+27,"kg"] }
  end
  describe Q[1,"saturnmass"] do
    it {should be_a_quantity_close_to Q[5.686558e+26,"kg"] }
  end
  describe Q[1,"uranusmass"] do
    it {should be_a_quantity_close_to Q[8.684896e+25,"kg"] }
  end
  describe Q[1,"neptunemass"] do
    it {should be_a_quantity_close_to Q[1.0246628e+26,"kg"] }
  end
  describe Q[1,"plutomass"] do
    it {should be_a_quantity_close_to Q[1.4734074e+22,"kg"] }
  end
  describe Q[1,"moonearthmassratio"] do
    it {should be_a_quantity_close_to Q[0.012300034] }
  end
  describe Q[1,"earthmass"] do
    it {should be_a_quantity_close_to Q[5.9742412e+24,"kg"] }
  end
  describe Q[1,"moonmass"] do
    it {should be_a_quantity_close_to Q[7.348337e+22,"kg"] }
  end
  describe Q[1,"oldmercurymass"] do
    it {should be_a_quantity_close_to Q[3.3022e+23,"kg"] }
  end
  describe Q[1,"oldvenusmass"] do
    it {should be_a_quantity_close_to Q[4.869e+24,"kg"] }
  end
  describe Q[1,"oldmarsmass"] do
    it {should be_a_quantity_close_to Q[6.4191e+23,"kg"] }
  end
  describe Q[1,"oldjupitermass"] do
    it {should be_a_quantity_close_to Q[1.8988e+27,"kg"] }
  end
  describe Q[1,"oldsaturnmass"] do
    it {should be_a_quantity_close_to Q[5.685e+26,"kg"] }
  end
  describe Q[1,"olduranusmass"] do
    it {should be_a_quantity_close_to Q[8.6625e+25,"kg"] }
  end
  describe Q[1,"oldneptunemass"] do
    it {should be_a_quantity_close_to Q[1.0278e+26,"kg"] }
  end
  describe Q[1,"oldplutomass"] do
    it {should be_a_quantity_close_to Q[1.5e+22,"kg"] }
  end
  describe Q[1,"mercuryradius"] do
    it {should be_a_quantity_close_to Q[2440000,"m"] }
  end
  describe Q[1,"venusradius"] do
    it {should be_a_quantity_close_to Q[6051840,"m"] }
  end
  describe Q[1,"earthradius"] do
    it {should be_a_quantity_close_to Q[6371010,"m"] }
  end
  describe Q[1,"marsradius"] do
    it {should be_a_quantity_close_to Q[3389920,"m"] }
  end
  describe Q[1,"jupiterradius"] do
    it {should be_a_quantity_close_to Q[69911000,"m"] }
  end
  describe Q[1,"saturnradius"] do
    it {should be_a_quantity_close_to Q[58232000,"m"] }
  end
  describe Q[1,"uranusradius"] do
    it {should be_a_quantity_close_to Q[25362000,"m"] }
  end
  describe Q[1,"neptuneradius"] do
    it {should be_a_quantity_close_to Q[24624000,"m"] }
  end
  describe Q[1,"plutoradius"] do
    it {should be_a_quantity_close_to Q[1151000,"m"] }
  end
  describe Q[1,"moongravity"] do
    it {should be_a_quantity_close_to Q[1.62,"m s^-2"] }
  end
  describe Q[1,"atomicmass"] do
    it {should be_a_quantity_close_to Q[9.1093829e-31,"kg"] }
  end
  describe Q[1,"atomiccharge"] do
    it {should be_a_quantity_close_to Q[1.6021766e-19,"A s"] }
  end
  describe Q[1,"atomicaction"] do
    it {should be_a_quantity_close_to Q[1.0545717e-34,"s^-1 kg m^2"] }
  end
  describe Q[1,"atomiclength"] do
    it {should be_a_quantity_close_to Q[5.2917721e-11,"m"] }
  end
  describe Q[1,"atomictime"] do
    it {should be_a_quantity_close_to Q[2.4188843e-17,"s"] }
  end
  describe Q[1,"atomicvelocity"] do
    it {should be_a_quantity_close_to Q[2187691.3,"m s^-1"] }
  end
  describe Q[1,"atomicenergy"] do
    it {should be_a_quantity_close_to Q[4.3597443e-18,"s^-2 kg m^2"] }
  end
  describe Q[1,"hartree"] do
    it {should be_a_quantity_close_to Q[4.3597443e-18,"s^-2 kg m^2"] }
  end
  describe Q[1,"thermalcoulomb"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2 K^-1"] }
  end
  describe Q[1,"thermalampere"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3 K^-1"] }
  end
  describe Q[1,"thermalfarad"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2 K^-2"] }
  end
  describe Q[1,"thermalohm"] do
    it {should be_a_quantity_close_to Q[1,"K^2 kg^-1 m^-2 s^3"] }
  end
  describe Q[1,"fourier"] do
    it {should be_a_quantity_close_to Q[1,"K^2 kg^-1 m^-2 s^3"] }
  end
  describe Q[1,"thermalhenry"] do
    it {should be_a_quantity_close_to Q[1,"kg^-1 m^-2 s^4 K^2"] }
  end
  describe Q[1,"thermalvolt"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"US"] do
    it {should be_a_quantity_close_to Q[1.000002] }
  end
  describe Q[1,"int"] do
    it {should be_a_quantity_close_to Q[0.999998] }
  end
  describe Q[1,"inch"] do
    it {should be_a_quantity_close_to Q[0.0254,"m"] }
  end
  describe Q[1,"in"] do
    it {should be_a_quantity_close_to Q[0.0254,"m"] }
  end
  describe Q[1,"foot"] do
    it {should be_a_quantity_close_to Q[0.3048,"m"] }
  end
  describe Q[1,"feet"] do
    it {should be_a_quantity_close_to Q[0.3048,"m"] }
  end
  describe Q[1,"ft"] do
    it {should be_a_quantity_close_to Q[0.3048,"m"] }
  end
  describe Q[1,"yard"] do
    it {should be_a_quantity_close_to Q[0.9144,"m"] }
  end
  describe Q[1,"yd"] do
    it {should be_a_quantity_close_to Q[0.9144,"m"] }
  end
  describe Q[1,"mile"] do
    it {should be_a_quantity_close_to Q[1609.344,"m"] }
  end
  describe Q[1,"line"] do
    it {should be_a_quantity_close_to Q[0.0021166667,"m"] }
  end
  describe Q[1,"rod"] do
    it {should be_a_quantity_close_to Q[5.0292,"m"] }
  end
  describe Q[1,"perch"] do
    it {should be_a_quantity_close_to Q[5.0292,"m"] }
  end
  describe Q[1,"furlong"] do
    it {should be_a_quantity_close_to Q[201.168,"m"] }
  end
  describe Q[1,"statutemile"] do
    it {should be_a_quantity_close_to Q[1609.344,"m"] }
  end
  describe Q[1,"league"] do
    it {should be_a_quantity_close_to Q[4828.032,"m"] }
  end
  describe Q[1,"surveyorschain"] do
    it {should be_a_quantity_close_to Q[20.11684,"m"] }
  end
  describe Q[1,"surveychain"] do
    it {should be_a_quantity_close_to Q[20.11684,"m"] }
  end
  describe Q[1,"surveyorspole"] do
    it {should be_a_quantity_close_to Q[5.0292101,"m"] }
  end
  describe Q[1,"surveyorslink"] do
    it {should be_a_quantity_close_to Q[0.2011684,"m"] }
  end
  describe Q[1,"chain"] do
    it {should be_a_quantity_close_to Q[20.1168,"m"] }
  end
  describe Q[1,"link"] do
    it {should be_a_quantity_close_to Q[0.201168,"m"] }
  end
  describe Q[1,"ch"] do
    it {should be_a_quantity_close_to Q[20.1168,"m"] }
  end
  describe Q[1,"USacre"] do
    it {should be_a_quantity_close_to Q[4046.8726,"m^2"] }
  end
  describe Q[1,"intacre"] do
    it {should be_a_quantity_close_to Q[4046.8564,"m^2"] }
  end
  describe Q[1,"intacrefoot"] do
    it {should be_a_quantity_close_to Q[1233.4818,"m^3"] }
  end
  describe Q[1,"USacrefoot"] do
    it {should be_a_quantity_close_to Q[1233.4892,"m^3"] }
  end
  describe Q[1,"acrefoot"] do
    it {should be_a_quantity_close_to Q[1233.4818,"m^3"] }
  end
  describe Q[1,"acre"] do
    it {should be_a_quantity_close_to Q[4046.8564,"m^2"] }
  end
  describe Q[1,"section"] do
    it {should be_a_quantity_close_to Q[2589988.1,"m^2"] }
  end
  describe Q[1,"township"] do
    it {should be_a_quantity_close_to Q[93239572,"m^2"] }
  end
  describe Q[1,"homestead"] do
    it {should be_a_quantity_close_to Q[647497.03,"m^2"] }
  end
  describe Q[1,"gunterschain"] do
    it {should be_a_quantity_close_to Q[20.11684,"m"] }
  end
  describe Q[1,"engineerschain"] do
    it {should be_a_quantity_close_to Q[30.48,"m"] }
  end
  describe Q[1,"engineerslink"] do
    it {should be_a_quantity_close_to Q[0.3048,"m"] }
  end
  describe Q[1,"ramsdenschain"] do
    it {should be_a_quantity_close_to Q[30.48,"m"] }
  end
  describe Q[1,"ramsdenslink"] do
    it {should be_a_quantity_close_to Q[0.3048,"m"] }
  end
  describe Q[1,"gurleychain"] do
    it {should be_a_quantity_close_to Q[10.0584,"m"] }
  end
  describe Q[1,"gurleylink"] do
    it {should be_a_quantity_close_to Q[0.201168,"m"] }
  end
  describe Q[1,"wingchain"] do
    it {should be_a_quantity_close_to Q[20.1168,"m"] }
  end
  describe Q[1,"winglink"] do
    it {should be_a_quantity_close_to Q[0.25146,"m"] }
  end
  describe Q[1,"troughtonyard"] do
    it {should be_a_quantity_close_to Q[0.9144219,"m"] }
  end
  describe Q[1,"bronzeyard11"] do
    it {should be_a_quantity_close_to Q[0.9143998,"m"] }
  end
  describe Q[1,"mendenhallyard"] do
    it {should be_a_quantity_close_to Q[0.91440183,"m"] }
  end
  describe Q[1,"internationalyard"] do
    it {should be_a_quantity_close_to Q[0.9144,"m"] }
  end
  describe Q[1,"fathom"] do
    it {should be_a_quantity_close_to Q[1.8288,"m"] }
  end
  describe Q[1,"nauticalmile"] do
    it {should be_a_quantity_close_to Q[1852,"m"] }
  end
  describe Q[1,"cable"] do
    it {should be_a_quantity_close_to Q[185.2,"m"] }
  end
  describe Q[1,"intcable"] do
    it {should be_a_quantity_close_to Q[185.2,"m"] }
  end
  describe Q[1,"cablelength"] do
    it {should be_a_quantity_close_to Q[185.2,"m"] }
  end
  describe Q[1,"UScable"] do
    it {should be_a_quantity_close_to Q[182.88037,"m"] }
  end
  describe Q[1,"navycablelength"] do
    it {should be_a_quantity_close_to Q[219.45644,"m"] }
  end
  describe Q[1,"marineleague"] do
    it {should be_a_quantity_close_to Q[5556,"m"] }
  end
  describe Q[1,"geographicalmile"] do
    it {should be_a_quantity_close_to Q[1853.184,"m"] }
  end
  describe Q[1,"knot"] do
    it {should be_a_quantity_close_to Q[0.51444444,"m s^-1"] }
  end
  describe Q[1,"click"] do
    it {should be_a_quantity_close_to Q[1000,"m"] }
  end
  describe Q[1,"klick"] do
    it {should be_a_quantity_close_to Q[1000,"m"] }
  end
  describe Q[1,"pound"] do
    it {should be_a_quantity_close_to Q[0.45359237,"kg"] }
  end
  describe Q[1,"lb"] do
    it {should be_a_quantity_close_to Q[0.45359237,"kg"] }
  end
  describe Q[1,"grain"] do
    it {should be_a_quantity_close_to Q[6.479891e-05,"kg"] }
  end
  describe Q[1,"ounce"] do
    it {should be_a_quantity_close_to Q[0.028349523,"kg"] }
  end
  describe Q[1,"oz"] do
    it {should be_a_quantity_close_to Q[0.028349523,"kg"] }
  end
  describe Q[1,"dram"] do
    it {should be_a_quantity_close_to Q[0.0017718452,"kg"] }
  end
  describe Q[1,"dr"] do
    it {should be_a_quantity_close_to Q[0.0017718452,"kg"] }
  end
  describe Q[1,"ushundredweight"] do
    it {should be_a_quantity_close_to Q[45.359237,"kg"] }
  end
  describe Q[1,"cwt"] do
    it {should be_a_quantity_close_to Q[45.359237,"kg"] }
  end
  describe Q[1,"shorthundredweight"] do
    it {should be_a_quantity_close_to Q[45.359237,"kg"] }
  end
  describe Q[1,"uston"] do
    it {should be_a_quantity_close_to Q[907.18474,"kg"] }
  end
  describe Q[1,"shortton"] do
    it {should be_a_quantity_close_to Q[907.18474,"kg"] }
  end
  describe Q[1,"quarterweight"] do
    it {should be_a_quantity_close_to Q[226.79619,"kg"] }
  end
  describe Q[1,"shortquarterweight"] do
    it {should be_a_quantity_close_to Q[226.79619,"kg"] }
  end
  describe Q[1,"shortquarter"] do
    it {should be_a_quantity_close_to Q[226.79619,"kg"] }
  end
  describe Q[1,"troypound"] do
    it {should be_a_quantity_close_to Q[0.37324172,"kg"] }
  end
  describe Q[1,"troyounce"] do
    it {should be_a_quantity_close_to Q[0.031103477,"kg"] }
  end
  describe Q[1,"ozt"] do
    it {should be_a_quantity_close_to Q[0.031103477,"kg"] }
  end
  describe Q[1,"pennyweight"] do
    it {should be_a_quantity_close_to Q[0.0015551738,"kg"] }
  end
  describe Q[1,"dwt"] do
    it {should be_a_quantity_close_to Q[0.0015551738,"kg"] }
  end
  describe Q[1,"assayton"] do
    it {should be_a_quantity_close_to Q[0.029166667,"kg"] }
  end
  describe Q[1,"usassayton"] do
    it {should be_a_quantity_close_to Q[0.029166667,"kg"] }
  end
  describe Q[1,"brassayton"] do
    it {should be_a_quantity_close_to Q[0.032666667,"kg"] }
  end
  describe Q[1,"fineounce"] do
    it {should be_a_quantity_close_to Q[0.031103477,"kg"] }
  end
  describe Q[1,"metriccarat"] do
    it {should be_a_quantity_close_to Q[0.0002,"kg"] }
  end
  describe Q[1,"metricgrain"] do
    it {should be_a_quantity_close_to Q[5e-05,"kg"] }
  end
  describe Q[1,"carat"] do
    it {should be_a_quantity_close_to Q[0.0002,"kg"] }
  end
  describe Q[1,"ct"] do
    it {should be_a_quantity_close_to Q[0.0002,"kg"] }
  end
  describe Q[1,"jewelerspoint"] do
    it {should be_a_quantity_close_to Q[2e-06,"kg"] }
  end
  describe Q[1,"silversmithpoint"] do
    it {should be_a_quantity_close_to Q[6.35e-06,"m"] }
  end
  describe Q[1,"momme"] do
    it {should be_a_quantity_close_to Q[0.00375,"kg"] }
  end
  describe Q[1,"appound"] do
    it {should be_a_quantity_close_to Q[0.37324172,"kg"] }
  end
  describe Q[1,"apounce"] do
    it {should be_a_quantity_close_to Q[0.031103477,"kg"] }
  end
  describe Q[1,"apdram"] do
    it {should be_a_quantity_close_to Q[0.0038879346,"kg"] }
  end
  describe Q[1,"apscruple"] do
    it {should be_a_quantity_close_to Q[0.0012959782,"kg"] }
  end
  describe Q[1,"usgallon"] do
    it {should be_a_quantity_close_to Q[0.0037854118,"m^3"] }
  end
  describe Q[1,"gal"] do
    it {should be_a_quantity_close_to Q[0.0037854118,"m^3"] }
  end
  describe Q[1,"quart"] do
    it {should be_a_quantity_close_to Q[0.00094635295,"m^3"] }
  end
  describe Q[1,"pint"] do
    it {should be_a_quantity_close_to Q[0.00047317647,"m^3"] }
  end
  describe Q[1,"gill"] do
    it {should be_a_quantity_close_to Q[0.00011829412,"m^3"] }
  end
  describe Q[1,"usquart"] do
    it {should be_a_quantity_close_to Q[0.00094635295,"m^3"] }
  end
  describe Q[1,"uspint"] do
    it {should be_a_quantity_close_to Q[0.00047317647,"m^3"] }
  end
  describe Q[1,"usgill"] do
    it {should be_a_quantity_close_to Q[0.00011829412,"m^3"] }
  end
  describe Q[1,"usfluidounce"] do
    it {should be_a_quantity_close_to Q[2.957353e-05,"m^3"] }
  end
  describe Q[1,"fluiddram"] do
    it {should be_a_quantity_close_to Q[3.6966912e-06,"m^3"] }
  end
  describe Q[1,"minimvolume"] do
    it {should be_a_quantity_close_to Q[6.161152e-08,"m^3"] }
  end
  describe Q[1,"qt"] do
    it {should be_a_quantity_close_to Q[0.00094635295,"m^3"] }
  end
  describe Q[1,"pt"] do
    it {should be_a_quantity_close_to Q[0.00047317647,"m^3"] }
  end
  describe Q[1,"floz"] do
    it {should be_a_quantity_close_to Q[2.957353e-05,"m^3"] }
  end
  describe Q[1,"usfloz"] do
    it {should be_a_quantity_close_to Q[2.957353e-05,"m^3"] }
  end
  describe Q[1,"fldr"] do
    it {should be_a_quantity_close_to Q[3.6966912e-06,"m^3"] }
  end
  describe Q[1,"liquidbarrel"] do
    it {should be_a_quantity_close_to Q[0.11924047,"m^3"] }
  end
  describe Q[1,"usbeerbarrel"] do
    it {should be_a_quantity_close_to Q[0.11734777,"m^3"] }
  end
  describe Q[1,"beerkeg"] do
    it {should be_a_quantity_close_to Q[0.058673883,"m^3"] }
  end
  describe Q[1,"ponykeg"] do
    it {should be_a_quantity_close_to Q[0.029336941,"m^3"] }
  end
  describe Q[1,"winekeg"] do
    it {should be_a_quantity_close_to Q[0.045424941,"m^3"] }
  end
  describe Q[1,"petroleumbarrel"] do
    it {should be_a_quantity_close_to Q[0.15898729,"m^3"] }
  end
  describe Q[1,"barrel"] do
    it {should be_a_quantity_close_to Q[0.15898729,"m^3"] }
  end
  describe Q[1,"bbl"] do
    it {should be_a_quantity_close_to Q[0.15898729,"m^3"] }
  end
  describe Q[1,"ushogshead"] do
    it {should be_a_quantity_close_to Q[0.23848094,"m^3"] }
  end
  describe Q[1,"usfirkin"] do
    it {should be_a_quantity_close_to Q[0.034068706,"m^3"] }
  end
  describe Q[1,"usbushel"] do
    it {should be_a_quantity_close_to Q[0.03523907,"m^3"] }
  end
  describe Q[1,"bu"] do
    it {should be_a_quantity_close_to Q[0.03523907,"m^3"] }
  end
  describe Q[1,"peck"] do
    it {should be_a_quantity_close_to Q[0.0088097675,"m^3"] }
  end
  describe Q[1,"uspeck"] do
    it {should be_a_quantity_close_to Q[0.0088097675,"m^3"] }
  end
  describe Q[1,"brpeck"] do
    it {should be_a_quantity_close_to Q[0.00909218,"m^3"] }
  end
  describe Q[1,"pk"] do
    it {should be_a_quantity_close_to Q[0.0088097675,"m^3"] }
  end
  describe Q[1,"drygallon"] do
    it {should be_a_quantity_close_to Q[0.0044048838,"m^3"] }
  end
  describe Q[1,"dryquart"] do
    it {should be_a_quantity_close_to Q[0.0011012209,"m^3"] }
  end
  describe Q[1,"drypint"] do
    it {should be_a_quantity_close_to Q[0.00055061047,"m^3"] }
  end
  describe Q[1,"drybarrel"] do
    it {should be_a_quantity_close_to Q[0.11562712,"m^3"] }
  end
  describe Q[1,"cranberrybarrel"] do
    it {should be_a_quantity_close_to Q[0.095471035,"m^3"] }
  end
  describe Q[1,"heapedbushel"] do
    it {should be_a_quantity_close_to Q[0.045035532,"m^3"] }
  end
  describe Q[1,"wheatbushel"] do
    it {should be_a_quantity_close_to Q[27.215542,"kg"] }
  end
  describe Q[1,"soybeanbushel"] do
    it {should be_a_quantity_close_to Q[27.215542,"kg"] }
  end
  describe Q[1,"cornbushel"] do
    it {should be_a_quantity_close_to Q[25.401173,"kg"] }
  end
  describe Q[1,"ryebushel"] do
    it {should be_a_quantity_close_to Q[25.401173,"kg"] }
  end
  describe Q[1,"barleybushel"] do
    it {should be_a_quantity_close_to Q[21.772434,"kg"] }
  end
  describe Q[1,"oatbushel"] do
    it {should be_a_quantity_close_to Q[14.514956,"kg"] }
  end
  describe Q[1,"ricebushel"] do
    it {should be_a_quantity_close_to Q[20.411657,"kg"] }
  end
  describe Q[1,"canada_oatbushel"] do
    it {should be_a_quantity_close_to Q[15.422141,"kg"] }
  end
  describe Q[1,"ponyvolume"] do
    it {should be_a_quantity_close_to Q[2.957353e-05,"m^3"] }
  end
  describe Q[1,"jigger"] do
    it {should be_a_quantity_close_to Q[4.4360294e-05,"m^3"] }
  end
  describe Q[1,"shot"] do
    it {should be_a_quantity_close_to Q[4.4360294e-05,"m^3"] }
  end
  describe Q[1,"eushot"] do
    it {should be_a_quantity_close_to Q[2.5e-05,"m^3"] }
  end
  describe Q[1,"fifth"] do
    it {should be_a_quantity_close_to Q[0.00075708236,"m^3"] }
  end
  describe Q[1,"winebottle"] do
    it {should be_a_quantity_close_to Q[0.00075,"m^3"] }
  end
  describe Q[1,"winesplit"] do
    it {should be_a_quantity_close_to Q[0.0001875,"m^3"] }
  end
  describe Q[1,"wineglass"] do
    it {should be_a_quantity_close_to Q[0.00011829412,"m^3"] }
  end
  describe Q[1,"magnum"] do
    it {should be_a_quantity_close_to Q[0.0015,"m^3"] }
  end
  describe Q[1,"metrictenth"] do
    it {should be_a_quantity_close_to Q[0.000375,"m^3"] }
  end
  describe Q[1,"metricfifth"] do
    it {should be_a_quantity_close_to Q[0.00075,"m^3"] }
  end
  describe Q[1,"metricquart"] do
    it {should be_a_quantity_close_to Q[0.001,"m^3"] }
  end
  describe Q[1,"reputedquart"] do
    it {should be_a_quantity_close_to Q[0.00075768167,"m^3"] }
  end
  describe Q[1,"reputedpint"] do
    it {should be_a_quantity_close_to Q[0.00037884083,"m^3"] }
  end
  describe Q[1,"brwinebottle"] do
    it {should be_a_quantity_close_to Q[0.00075768167,"m^3"] }
  end
  describe Q[1,"split"] do
    it {should be_a_quantity_close_to Q[0.0002,"m^3"] }
  end
  describe Q[1,"jeroboam"] do
    it {should be_a_quantity_close_to Q[0.003,"m^3"] }
  end
  describe Q[1,"rehoboam"] do
    it {should be_a_quantity_close_to Q[0.0045,"m^3"] }
  end
  describe Q[1,"methuselah"] do
    it {should be_a_quantity_close_to Q[0.006,"m^3"] }
  end
  describe Q[1,"salmanazar"] do
    it {should be_a_quantity_close_to Q[0.009,"m^3"] }
  end
  describe Q[1,"balthazar"] do
    it {should be_a_quantity_close_to Q[0.012,"m^3"] }
  end
  describe Q[1,"nebuchadnezzar"] do
    it {should be_a_quantity_close_to Q[0.015,"m^3"] }
  end
  describe Q[1,"clarkdegree"] do
    it {should be_a_quantity_close_to Q[0.014253768,"kg m^-3"] }
  end
  describe Q[1,"gpg"] do
    it {should be_a_quantity_close_to Q[0.017118061,"kg m^-3"] }
  end
  describe Q[1,"shoeiron"] do
    it {should be_a_quantity_close_to Q[0.00052916667,"m"] }
  end
  describe Q[1,"shoeounce"] do
    it {should be_a_quantity_close_to Q[0.000396875,"m"] }
  end
  describe Q[1,"shoesize_delta"] do
    it {should be_a_quantity_close_to Q[0.0084666667,"m"] }
  end
  describe Q[1,"shoe_men0"] do
    it {should be_a_quantity_close_to Q[0.20955,"m"] }
  end
  describe Q[1,"shoe_women0"] do
    it {should be_a_quantity_close_to Q[0.20108333,"m"] }
  end
  describe Q[1,"shoe_boys0"] do
    it {should be_a_quantity_close_to Q[0.099483333,"m"] }
  end
  describe Q[1,"shoe_girls0"] do
    it {should be_a_quantity_close_to Q[0.091016667,"m"] }
  end
  describe Q[1,"europeshoesize"] do
    it {should be_a_quantity_close_to Q[0.0066666667,"m"] }
  end
  describe Q[1,"buck"] do
    it {should be_a_quantity_close_to Q[1,"US$"] }
  end
  describe Q[1,"fin"] do
    it {should be_a_quantity_close_to Q[5,"US$"] }
  end
  describe Q[1,"sawbuck"] do
    it {should be_a_quantity_close_to Q[10,"US$"] }
  end
  describe Q[1,"usgrand"] do
    it {should be_a_quantity_close_to Q[1000,"US$"] }
  end
  describe Q[1,"greenback"] do
    it {should be_a_quantity_close_to Q[1,"US$"] }
  end
  describe Q[1,"key"] do
    it {should be_a_quantity_close_to Q[1,"kg"] }
  end
  describe Q[1,"lid"] do
    it {should be_a_quantity_close_to Q[0.028349523,"kg"] }
  end
  describe Q[1,"footballfield"] do
    it {should be_a_quantity_close_to Q[91.44,"m"] }
  end
  describe Q[1,"usfootballfield"] do
    it {should be_a_quantity_close_to Q[91.44,"m"] }
  end
  describe Q[1,"canadafootballfield"] do
    it {should be_a_quantity_close_to Q[100.584,"m"] }
  end
  describe Q[1,"marathon"] do
    it {should be_a_quantity_close_to Q[42194.988,"m"] }
  end
  describe Q[1,"UK"] do
    it {should be_a_quantity_close_to Q[0.99999826] }
  end
  describe Q[1,"UKlength_B"] do
    it {should be_a_quantity_close_to Q[0.99999913] }
  end
  describe Q[1,"UKlength_SJJ"] do
    it {should be_a_quantity_close_to Q[0.99999826] }
  end
  describe Q[1,"UKlength_K"] do
    it {should be_a_quantity_close_to Q[0.99998193] }
  end
  describe Q[1,"UKlength_C"] do
    it {should be_a_quantity_close_to Q[0.99999103] }
  end
  describe Q[1,"brnauticalmile"] do
    it {should be_a_quantity_close_to Q[1853.184,"m"] }
  end
  describe Q[1,"brknot"] do
    it {should be_a_quantity_close_to Q[0.51477333,"m s^-1"] }
  end
  describe Q[1,"brcable"] do
    it {should be_a_quantity_close_to Q[185.3184,"m"] }
  end
  describe Q[1,"admiraltymile"] do
    it {should be_a_quantity_close_to Q[1853.184,"m"] }
  end
  describe Q[1,"admiraltyknot"] do
    it {should be_a_quantity_close_to Q[0.51477333,"m s^-1"] }
  end
  describe Q[1,"admiraltycable"] do
    it {should be_a_quantity_close_to Q[185.3184,"m"] }
  end
  describe Q[1,"seamile"] do
    it {should be_a_quantity_close_to Q[1828.8,"m"] }
  end
  describe Q[1,"shackle"] do
    it {should be_a_quantity_close_to Q[27.432,"m"] }
  end
  describe Q[1,"clove"] do
    it {should be_a_quantity_close_to Q[3.1751466,"kg"] }
  end
  describe Q[1,"stone"] do
    it {should be_a_quantity_close_to Q[6.3502932,"kg"] }
  end
  describe Q[1,"tod"] do
    it {should be_a_quantity_close_to Q[12.700586,"kg"] }
  end
  describe Q[1,"brquarterweight"] do
    it {should be_a_quantity_close_to Q[12.700586,"kg"] }
  end
  describe Q[1,"brhundredweight"] do
    it {should be_a_quantity_close_to Q[50.802345,"kg"] }
  end
  describe Q[1,"longhundredweight"] do
    it {should be_a_quantity_close_to Q[50.802345,"kg"] }
  end
  describe Q[1,"longton"] do
    it {should be_a_quantity_close_to Q[1016.0469,"kg"] }
  end
  describe Q[1,"brton"] do
    it {should be_a_quantity_close_to Q[1016.0469,"kg"] }
  end
  describe Q[1,"brminim"] do
    it {should be_a_quantity_close_to Q[5.919388e-08,"m^3"] }
  end
  describe Q[1,"brscruple"] do
    it {should be_a_quantity_close_to Q[1.1838776e-06,"m^3"] }
  end
  describe Q[1,"fluidscruple"] do
    it {should be_a_quantity_close_to Q[1.1838776e-06,"m^3"] }
  end
  describe Q[1,"brdram"] do
    it {should be_a_quantity_close_to Q[3.5516328e-06,"m^3"] }
  end
  describe Q[1,"brfluidounce"] do
    it {should be_a_quantity_close_to Q[2.8413063e-05,"m^3"] }
  end
  describe Q[1,"brfloz"] do
    it {should be_a_quantity_close_to Q[2.8413063e-05,"m^3"] }
  end
  describe Q[1,"brgill"] do
    it {should be_a_quantity_close_to Q[0.00014206531,"m^3"] }
  end
  describe Q[1,"brpint"] do
    it {should be_a_quantity_close_to Q[0.00056826125,"m^3"] }
  end
  describe Q[1,"brquart"] do
    it {should be_a_quantity_close_to Q[0.0011365225,"m^3"] }
  end
  describe Q[1,"brgallon"] do
    it {should be_a_quantity_close_to Q[0.00454609,"m^3"] }
  end
  describe Q[1,"brbarrel"] do
    it {should be_a_quantity_close_to Q[0.16365924,"m^3"] }
  end
  describe Q[1,"brbushel"] do
    it {should be_a_quantity_close_to Q[0.03636872,"m^3"] }
  end
  describe Q[1,"brheapedbushel"] do
    it {should be_a_quantity_close_to Q[0.046479224,"m^3"] }
  end
  describe Q[1,"brquarter"] do
    it {should be_a_quantity_close_to Q[0.29094976,"m^3"] }
  end
  describe Q[1,"brchaldron"] do
    it {should be_a_quantity_close_to Q[1.3092739,"m^3"] }
  end
  describe Q[1,"bag"] do
    it {should be_a_quantity_close_to Q[0.14547488,"m^3"] }
  end
  describe Q[1,"bucket"] do
    it {should be_a_quantity_close_to Q[0.01818436,"m^3"] }
  end
  describe Q[1,"kilderkin"] do
    it {should be_a_quantity_close_to Q[0.08182962,"m^3"] }
  end
  describe Q[1,"last"] do
    it {should be_a_quantity_close_to Q[1.4547488,"m^3"] }
  end
  describe Q[1,"noggin"] do
    it {should be_a_quantity_close_to Q[0.00014206531,"m^3"] }
  end
  describe Q[1,"pottle"] do
    it {should be_a_quantity_close_to Q[0.002273045,"m^3"] }
  end
  describe Q[1,"pin"] do
    it {should be_a_quantity_close_to Q[0.020457405,"m^3"] }
  end
  describe Q[1,"puncheon"] do
    it {should be_a_quantity_close_to Q[0.32731848,"m^3"] }
  end
  describe Q[1,"seam"] do
    it {should be_a_quantity_close_to Q[0.29094976,"m^3"] }
  end
  describe Q[1,"coomb"] do
    it {should be_a_quantity_close_to Q[0.14547488,"m^3"] }
  end
  describe Q[1,"boll"] do
    it {should be_a_quantity_close_to Q[0.21821232,"m^3"] }
  end
  describe Q[1,"firlot"] do
    it {should be_a_quantity_close_to Q[0.05455308,"m^3"] }
  end
  describe Q[1,"brfirkin"] do
    it {should be_a_quantity_close_to Q[0.04091481,"m^3"] }
  end
  describe Q[1,"cran"] do
    it {should be_a_quantity_close_to Q[0.17047838,"m^3"] }
  end
  describe Q[1,"brwinehogshead"] do
    it {should be_a_quantity_close_to Q[0.23866973,"m^3"] }
  end
  describe Q[1,"brhogshead"] do
    it {should be_a_quantity_close_to Q[0.23866973,"m^3"] }
  end
  describe Q[1,"brbeerhogshead"] do
    it {should be_a_quantity_close_to Q[0.24548886,"m^3"] }
  end
  describe Q[1,"brbeerbutt"] do
    it {should be_a_quantity_close_to Q[0.49097772,"m^3"] }
  end
  describe Q[1,"registerton"] do
    it {should be_a_quantity_close_to Q[2.8316847,"m^3"] }
  end
  describe Q[1,"shippington"] do
    it {should be_a_quantity_close_to Q[1.1326739,"m^3"] }
  end
  describe Q[1,"brshippington"] do
    it {should be_a_quantity_close_to Q[1.1893076,"m^3"] }
  end
  describe Q[1,"freightton"] do
    it {should be_a_quantity_close_to Q[1.1326739,"m^3"] }
  end
  describe Q[1,"displacementton"] do
    it {should be_a_quantity_close_to Q[0.99108963,"m^3"] }
  end
  describe Q[1,"waterton"] do
    it {should be_a_quantity_close_to Q[1.0183242,"m^3"] }
  end
  describe Q[1,"strike"] do
    it {should be_a_quantity_close_to Q[0.0705,"m^3"] }
  end
  describe Q[1,"amber"] do
    it {should be_a_quantity_close_to Q[0.14547488,"m^3"] }
  end
  describe Q[1,"imperialminim"] do
    it {should be_a_quantity_close_to Q[5.919388e-08,"m^3"] }
  end
  describe Q[1,"imperialscruple"] do
    it {should be_a_quantity_close_to Q[1.1838776e-06,"m^3"] }
  end
  describe Q[1,"imperialdram"] do
    it {should be_a_quantity_close_to Q[3.5516328e-06,"m^3"] }
  end
  describe Q[1,"imperialfluidounce"] do
    it {should be_a_quantity_close_to Q[2.8413063e-05,"m^3"] }
  end
  describe Q[1,"imperialfloz"] do
    it {should be_a_quantity_close_to Q[2.8413063e-05,"m^3"] }
  end
  describe Q[1,"imperialgill"] do
    it {should be_a_quantity_close_to Q[0.00014206531,"m^3"] }
  end
  describe Q[1,"imperialpint"] do
    it {should be_a_quantity_close_to Q[0.00056826125,"m^3"] }
  end
  describe Q[1,"imperialquart"] do
    it {should be_a_quantity_close_to Q[0.0011365225,"m^3"] }
  end
  describe Q[1,"imperialgallon"] do
    it {should be_a_quantity_close_to Q[0.00454609,"m^3"] }
  end
  describe Q[1,"imperialbarrel"] do
    it {should be_a_quantity_close_to Q[0.16365924,"m^3"] }
  end
  describe Q[1,"imperialbushel"] do
    it {should be_a_quantity_close_to Q[0.03636872,"m^3"] }
  end
  describe Q[1,"imperialheapedbushel"] do
    it {should be_a_quantity_close_to Q[0.046479224,"m^3"] }
  end
  describe Q[1,"imperialquarter"] do
    it {should be_a_quantity_close_to Q[0.29094976,"m^3"] }
  end
  describe Q[1,"imperialchaldron"] do
    it {should be_a_quantity_close_to Q[1.3092739,"m^3"] }
  end
  describe Q[1,"imperialwinehogshead"] do
    it {should be_a_quantity_close_to Q[0.23866973,"m^3"] }
  end
  describe Q[1,"imperialhogshead"] do
    it {should be_a_quantity_close_to Q[0.23866973,"m^3"] }
  end
  describe Q[1,"imperialbeerhogshead"] do
    it {should be_a_quantity_close_to Q[0.24548886,"m^3"] }
  end
  describe Q[1,"imperialbeerbutt"] do
    it {should be_a_quantity_close_to Q[0.49097772,"m^3"] }
  end
  describe Q[1,"imperialfirkin"] do
    it {should be_a_quantity_close_to Q[0.04091481,"m^3"] }
  end
  describe Q[1,"barleycorn"] do
    it {should be_a_quantity_close_to Q[0.0084666519,"m"] }
  end
  describe Q[1,"nail"] do
    it {should be_a_quantity_close_to Q[0.057149901,"m"] }
  end
  describe Q[1,"pole"] do
    it {should be_a_quantity_close_to Q[5.0291913,"m"] }
  end
  describe Q[1,"rope"] do
    it {should be_a_quantity_close_to Q[6.0959894,"m"] }
  end
  describe Q[1,"englishell"] do
    it {should be_a_quantity_close_to Q[1.142998,"m"] }
  end
  describe Q[1,"flemishell"] do
    it {should be_a_quantity_close_to Q[0.68579881,"m"] }
  end
  describe Q[1,"ell"] do
    it {should be_a_quantity_close_to Q[1.142998,"m"] }
  end
  describe Q[1,"span"] do
    it {should be_a_quantity_close_to Q[0.2285996,"m"] }
  end
  describe Q[1,"goad"] do
    it {should be_a_quantity_close_to Q[1.3715976,"m"] }
  end
  describe Q[1,"hide"] do
    it {should be_a_quantity_close_to Q[485622.77,"m^2"] }
  end
  describe Q[1,"virgate"] do
    it {should be_a_quantity_close_to Q[121405.69,"m^2"] }
  end
  describe Q[1,"nook"] do
    it {should be_a_quantity_close_to Q[60702.846,"m^2"] }
  end
  describe Q[1,"rood"] do
    it {should be_a_quantity_close_to Q[1011.7141,"m^2"] }
  end
  describe Q[1,"englishcarat"] do
    it {should be_a_quantity_close_to Q[0.00020530348,"kg"] }
  end
  describe Q[1,"mancus"] do
    it {should be_a_quantity_close_to Q[0.056699046,"kg"] }
  end
  describe Q[1,"mast"] do
    it {should be_a_quantity_close_to Q[1.1339809,"kg"] }
  end
  describe Q[1,"nailkeg"] do
    it {should be_a_quantity_close_to Q[45.359237,"kg"] }
  end
  describe Q[1,"basebox"] do
    it {should be_a_quantity_close_to Q[20.232218,"m^2"] }
  end
  describe Q[1,"metre"] do
    it {should be_a_quantity_close_to Q[1,"m"] }
  end
  describe Q[1,"gramme"] do
    it {should be_a_quantity_close_to Q[0.001,"kg"] }
  end
  describe Q[1,"litre"] do
    it {should be_a_quantity_close_to Q[0.001,"m^3"] }
  end
  describe Q[1,"dioptre"] do
    it {should be_a_quantity_close_to Q[1,"m^-1"] }
  end
  describe Q[1,"aluminium"] do
    it {should be_a_quantity_close_to Q[26.981539] }
  end
  describe Q[1,"sulphur"] do
    it {should be_a_quantity_close_to Q[32.066] }
  end
  describe Q[1,"geometricpace"] do
    it {should be_a_quantity_close_to Q[1.524,"m"] }
  end
  describe Q[1,"pace"] do
    it {should be_a_quantity_close_to Q[0.762,"m"] }
  end
  describe Q[1,"USmilitarypace"] do
    it {should be_a_quantity_close_to Q[0.762,"m"] }
  end
  describe Q[1,"USdoubletimepace"] do
    it {should be_a_quantity_close_to Q[0.9144,"m"] }
  end
  describe Q[1,"fingerbreadth"] do
    it {should be_a_quantity_close_to Q[0.022225,"m"] }
  end
  describe Q[1,"fingerlength"] do
    it {should be_a_quantity_close_to Q[0.1143,"m"] }
  end
  describe Q[1,"finger"] do
    it {should be_a_quantity_close_to Q[0.022225,"m"] }
  end
  describe Q[1,"palmwidth"] do
    it {should be_a_quantity_close_to Q[0.1016,"m"] }
  end
  describe Q[1,"palmlength"] do
    it {should be_a_quantity_close_to Q[0.2032,"m"] }
  end
  describe Q[1,"hand"] do
    it {should be_a_quantity_close_to Q[0.1016,"m"] }
  end
  describe Q[1,"shaftment"] do
    it {should be_a_quantity_close_to Q[0.1524,"m"] }
  end
  describe Q[1,"smoot"] do
    it {should be_a_quantity_close_to Q[1.7018,"m"] }
  end
  describe Q[1,"tbl"] do
    it {should be_a_quantity_close_to Q[1.4786765e-05,"m^3"] }
  end
  describe Q[1,"tbsp"] do
    it {should be_a_quantity_close_to Q[1.4786765e-05,"m^3"] }
  end
  describe Q[1,"tblsp"] do
    it {should be_a_quantity_close_to Q[1.4786765e-05,"m^3"] }
  end
  describe Q[1,"Tb"] do
    it {should be_a_quantity_close_to Q[1.4786765e-05,"m^3"] }
  end
  describe Q[1,"tsp"] do
    it {should be_a_quantity_close_to Q[4.9289216e-06,"m^3"] }
  end
  describe Q[1,"saltspoon"] do
    it {should be_a_quantity_close_to Q[1.2322304e-06,"m^3"] }
  end
  describe Q[1,"uscup"] do
    it {should be_a_quantity_close_to Q[0.00023658824,"m^3"] }
  end
  describe Q[1,"ustablespoon"] do
    it {should be_a_quantity_close_to Q[1.4786765e-05,"m^3"] }
  end
  describe Q[1,"usteaspoon"] do
    it {should be_a_quantity_close_to Q[4.9289216e-06,"m^3"] }
  end
  describe Q[1,"ustbl"] do
    it {should be_a_quantity_close_to Q[1.4786765e-05,"m^3"] }
  end
  describe Q[1,"ustbsp"] do
    it {should be_a_quantity_close_to Q[1.4786765e-05,"m^3"] }
  end
  describe Q[1,"ustblsp"] do
    it {should be_a_quantity_close_to Q[1.4786765e-05,"m^3"] }
  end
  describe Q[1,"ustsp"] do
    it {should be_a_quantity_close_to Q[4.9289216e-06,"m^3"] }
  end
  describe Q[1,"metriccup"] do
    it {should be_a_quantity_close_to Q[0.00025,"m^3"] }
  end
  describe Q[1,"stickbutter"] do
    it {should be_a_quantity_close_to Q[0.11339809,"kg"] }
  end
  describe Q[1,"legalcup"] do
    it {should be_a_quantity_close_to Q[0.00024,"m^3"] }
  end
  describe Q[1,"legaltablespoon"] do
    it {should be_a_quantity_close_to Q[1.5e-05,"m^3"] }
  end
  describe Q[1,"legaltbsp"] do
    it {should be_a_quantity_close_to Q[1.5e-05,"m^3"] }
  end
  describe Q[1,"number1can"] do
    it {should be_a_quantity_close_to Q[0.0002957353,"m^3"] }
  end
  describe Q[1,"number2can"] do
    it {should be_a_quantity_close_to Q[0.00056189706,"m^3"] }
  end
  describe Q[1,"number2.5can"] do
    it {should be_a_quantity_close_to Q[0.00082805883,"m^3"] }
  end
  describe Q[1,"number3can"] do
    it {should be_a_quantity_close_to Q[0.00094635295,"m^3"] }
  end
  describe Q[1,"number5can"] do
    it {should be_a_quantity_close_to Q[0.0016561177,"m^3"] }
  end
  describe Q[1,"number10can"] do
    it {should be_a_quantity_close_to Q[0.0031052206,"m^3"] }
  end
  describe Q[1,"brcup"] do
    it {should be_a_quantity_close_to Q[0.00028413063,"m^3"] }
  end
  describe Q[1,"brteacup"] do
    it {should be_a_quantity_close_to Q[0.00018942042,"m^3"] }
  end
  describe Q[1,"brtablespoon"] do
    it {should be_a_quantity_close_to Q[1.5e-05,"m^3"] }
  end
  describe Q[1,"brteaspoon"] do
    it {should be_a_quantity_close_to Q[5e-06,"m^3"] }
  end
  describe Q[1,"brdessertspoon"] do
    it {should be_a_quantity_close_to Q[1e-05,"m^3"] }
  end
  describe Q[1,"dessertspoon"] do
    it {should be_a_quantity_close_to Q[1e-05,"m^3"] }
  end
  describe Q[1,"dsp"] do
    it {should be_a_quantity_close_to Q[1e-05,"m^3"] }
  end
  describe Q[1,"brtsp"] do
    it {should be_a_quantity_close_to Q[5e-06,"m^3"] }
  end
  describe Q[1,"brtbl"] do
    it {should be_a_quantity_close_to Q[1.5e-05,"m^3"] }
  end
  describe Q[1,"brtbsp"] do
    it {should be_a_quantity_close_to Q[1.5e-05,"m^3"] }
  end
  describe Q[1,"brtblsp"] do
    it {should be_a_quantity_close_to Q[1.5e-05,"m^3"] }
  end
  describe Q[1,"australiatablespoon"] do
    it {should be_a_quantity_close_to Q[2e-05,"m^3"] }
  end
  describe Q[1,"austbl"] do
    it {should be_a_quantity_close_to Q[2e-05,"m^3"] }
  end
  describe Q[1,"austbsp"] do
    it {should be_a_quantity_close_to Q[2e-05,"m^3"] }
  end
  describe Q[1,"austblsp"] do
    it {should be_a_quantity_close_to Q[2e-05,"m^3"] }
  end
  describe Q[1,"australiateaspoon"] do
    it {should be_a_quantity_close_to Q[5e-06,"m^3"] }
  end
  describe Q[1,"austsp"] do
    it {should be_a_quantity_close_to Q[5e-06,"m^3"] }
  end
  describe Q[1,"etto"] do
    it {should be_a_quantity_close_to Q[0.1,"kg"] }
  end
  describe Q[1,"etti"] do
    it {should be_a_quantity_close_to Q[0.1,"kg"] }
  end
  describe Q[1,"catty"] do
    it {should be_a_quantity_close_to Q[0.5,"kg"] }
  end
  describe Q[1,"oldcatty"] do
    it {should be_a_quantity_close_to Q[0.60478983,"kg"] }
  end
  describe Q[1,"tael"] do
    it {should be_a_quantity_close_to Q[0.037799364,"kg"] }
  end
  describe Q[1,"mace"] do
    it {should be_a_quantity_close_to Q[0.0037799364,"kg"] }
  end
  describe Q[1,"oldpicul"] do
    it {should be_a_quantity_close_to Q[60.478983,"kg"] }
  end
  describe Q[1,"picul"] do
    it {should be_a_quantity_close_to Q[50,"kg"] }
  end
  describe Q[1,"seer"] do
    it {should be_a_quantity_close_to Q[0.9331043,"kg"] }
  end
  describe Q[1,"ser"] do
    it {should be_a_quantity_close_to Q[0.9331043,"kg"] }
  end
  describe Q[1,"maund"] do
    it {should be_a_quantity_close_to Q[37.324172,"kg"] }
  end
  describe Q[1,"pakistanseer"] do
    it {should be_a_quantity_close_to Q[1,"kg"] }
  end
  describe Q[1,"pakistanmaund"] do
    it {should be_a_quantity_close_to Q[40,"kg"] }
  end
  describe Q[1,"chittak"] do
    it {should be_a_quantity_close_to Q[0.058319019,"kg"] }
  end
  describe Q[1,"tola"] do
    it {should be_a_quantity_close_to Q[0.011663804,"kg"] }
  end
  describe Q[1,"ollock"] do
    it {should be_a_quantity_close_to Q[0.00025,"m^3"] }
  end
  describe Q[1,"japancup"] do
    it {should be_a_quantity_close_to Q[0.0002,"m^3"] }
  end
  describe Q[1,"butter"] do
    it {should be_a_quantity_close_to Q[958.61142,"kg m^-3"] }
  end
  describe Q[1,"butter_clarified"] do
    it {should be_a_quantity_close_to Q[814.81971,"kg m^-3"] }
  end
  describe Q[1,"cocoa_butter"] do
    it {should be_a_quantity_close_to Q[1078.4378,"kg m^-3"] }
  end
  describe Q[1,"shortening"] do
    it {should be_a_quantity_close_to Q[808.82838,"kg m^-3"] }
  end
  describe Q[1,"oil"] do
    it {should be_a_quantity_close_to Q[898.6982,"kg m^-3"] }
  end
  describe Q[1,"cakeflour_sifted"] do
    it {should be_a_quantity_close_to Q[419.3925,"kg m^-3"] }
  end
  describe Q[1,"cakeflour_spooned"] do
    it {should be_a_quantity_close_to Q[479.30571,"kg m^-3"] }
  end
  describe Q[1,"cakeflour_scooped"] do
    it {should be_a_quantity_close_to Q[539.21892,"kg m^-3"] }
  end
  describe Q[1,"flour_sifted"] do
    it {should be_a_quantity_close_to Q[479.30571,"kg m^-3"] }
  end
  describe Q[1,"flour_spooned"] do
    it {should be_a_quantity_close_to Q[509.26232,"kg m^-3"] }
  end
  describe Q[1,"flour_scooped"] do
    it {should be_a_quantity_close_to Q[599.13214,"kg m^-3"] }
  end
  describe Q[1,"breadflour_sifted"] do
    it {should be_a_quantity_close_to Q[509.26232,"kg m^-3"] }
  end
  describe Q[1,"breadflour_spooned"] do
    it {should be_a_quantity_close_to Q[539.21892,"kg m^-3"] }
  end
  describe Q[1,"breadflour_scooped"] do
    it {should be_a_quantity_close_to Q[659.04535,"kg m^-3"] }
  end
  describe Q[1,"cornstarch"] do
    it {should be_a_quantity_close_to Q[507.21034,"kg m^-3"] }
  end
  describe Q[1,"dutchcocoa_sifted"] do
    it {should be_a_quantity_close_to Q[317.00646,"kg m^-3"] }
  end
  describe Q[1,"dutchcocoa_spooned"] do
    it {should be_a_quantity_close_to Q[388.86126,"kg m^-3"] }
  end
  describe Q[1,"dutchcocoa_scooped"] do
    it {should be_a_quantity_close_to Q[401.54152,"kg m^-3"] }
  end
  describe Q[1,"cocoa_sifted"] do
    it {should be_a_quantity_close_to Q[317.00646,"kg m^-3"] }
  end
  describe Q[1,"cocoa_spooned"] do
    it {should be_a_quantity_close_to Q[346.59373,"kg m^-3"] }
  end
  describe Q[1,"cocoa_scooped"] do
    it {should be_a_quantity_close_to Q[401.54152,"kg m^-3"] }
  end
  describe Q[1,"heavycream"] do
    it {should be_a_quantity_close_to Q[980.60666,"kg m^-3"] }
  end
  describe Q[1,"milk"] do
    it {should be_a_quantity_close_to Q[1022.8742,"kg m^-3"] }
  end
  describe Q[1,"sourcream"] do
    it {should be_a_quantity_close_to Q[1022.8742,"kg m^-3"] }
  end
  describe Q[1,"molasses"] do
    it {should be_a_quantity_close_to Q[1348.0473,"kg m^-3"] }
  end
  describe Q[1,"cornsyrup"] do
    it {should be_a_quantity_close_to Q[1378.0039,"kg m^-3"] }
  end
  describe Q[1,"honey"] do
    it {should be_a_quantity_close_to Q[1407.9605,"kg m^-3"] }
  end
  describe Q[1,"sugar"] do
    it {should be_a_quantity_close_to Q[845.35057,"kg m^-3"] }
  end
  describe Q[1,"powdered_sugar"] do
    it {should be_a_quantity_close_to Q[479.30571,"kg m^-3"] }
  end
  describe Q[1,"brownsugar_light"] do
    it {should be_a_quantity_close_to Q[917.20537,"kg m^-3"] }
  end
  describe Q[1,"brownsugar_dark"] do
    it {should be_a_quantity_close_to Q[1010.1939,"kg m^-3"] }
  end
  describe Q[1,"baking_powder"] do
    it {should be_a_quantity_close_to Q[933.26703,"kg m^-3"] }
  end
  describe Q[1,"salt"] do
    it {should be_a_quantity_close_to Q[1217.3048,"kg m^-3"] }
  end
  describe Q[1,"koshersalt"] do
    it {should be_a_quantity_close_to Q[568.07558,"kg m^-3"] }
  end
  describe Q[1,"koshersalt_morton"] do
    it {should be_a_quantity_close_to Q[973.84385,"kg m^-3"] }
  end
  describe Q[1,"egg"] do
    it {should be_a_quantity_close_to Q[0.05,"kg"] }
  end
  describe Q[1,"eggwhite"] do
    it {should be_a_quantity_close_to Q[0.03,"kg"] }
  end
  describe Q[1,"eggyolk"] do
    it {should be_a_quantity_close_to Q[0.0186,"kg"] }
  end
  describe Q[1,"eggvolume"] do
    it {should be_a_quantity_close_to Q[4.6824755e-05,"m^3"] }
  end
  describe Q[1,"eggwhitevolume"] do
    it {should be_a_quantity_close_to Q[2.957353e-05,"m^3"] }
  end
  describe Q[1,"eggyolkvolume"] do
    it {should be_a_quantity_close_to Q[1.7251226e-05,"m^3"] }
  end
  describe Q[1,"baumeconst"] do
    it {should be_a_quantity_close_to Q[145] }
  end
  describe Q[1,"ouncedal"] do
    it {should be_a_quantity_close_to Q[0.0086409346,"kg m s^-2"] }
  end
  describe Q[1,"poundal"] do
    it {should be_a_quantity_close_to Q[0.13825495,"kg m s^-2"] }
  end
  describe Q[1,"tondal"] do
    it {should be_a_quantity_close_to Q[309.6911,"kg m s^-2"] }
  end
  describe Q[1,"pdl"] do
    it {should be_a_quantity_close_to Q[0.13825495,"kg m s^-2"] }
  end
  describe Q[1,"osi"] do
    it {should be_a_quantity_close_to Q[430.92233,"kg m^-1 s^-2"] }
  end
  describe Q[1,"psi"] do
    it {should be_a_quantity_close_to Q[6894.7573,"kg m^-1 s^-2"] }
  end
  describe Q[1,"psia"] do
    it {should be_a_quantity_close_to Q[6894.7573,"kg m^-1 s^-2"] }
  end
  describe Q[1,"tsi"] do
    it {should be_a_quantity_close_to Q[13789515,"kg m^-1 s^-2"] }
  end
  describe Q[1,"reyn"] do
    it {should be_a_quantity_close_to Q[6894.7573,"kg m^-1 s^-1"] }
  end
  describe Q[1,"slug"] do
    it {should be_a_quantity_close_to Q[14.593903,"kg"] }
  end
  describe Q[1,"slugf"] do
    it {should be_a_quantity_close_to Q[143.1173,"kg m s^-2"] }
  end
  describe Q[1,"slinch"] do
    it {should be_a_quantity_close_to Q[175.12684,"kg"] }
  end
  describe Q[1,"slinchf"] do
    it {should be_a_quantity_close_to Q[1717.4076,"kg m s^-2"] }
  end
  describe Q[1,"geepound"] do
    it {should be_a_quantity_close_to Q[14.593903,"kg"] }
  end
  describe Q[1,"lbf"] do
    it {should be_a_quantity_close_to Q[4.4482216,"kg m s^-2"] }
  end
  describe Q[1,"tonf"] do
    it {should be_a_quantity_close_to Q[8896.4432,"kg m s^-2"] }
  end
  describe Q[1,"lbm"] do
    it {should be_a_quantity_close_to Q[0.45359237,"kg"] }
  end
  describe Q[1,"kip"] do
    it {should be_a_quantity_close_to Q[4448.2216,"kg m s^-2"] }
  end
  describe Q[1,"ksi"] do
    it {should be_a_quantity_close_to Q[6894757.3,"kg m^-1 s^-2"] }
  end
  describe Q[1,"mil"] do
    it {should be_a_quantity_close_to Q[2.54e-05,"m"] }
  end
  describe Q[1,"thou"] do
    it {should be_a_quantity_close_to Q[2.54e-05,"m"] }
  end
  describe Q[1,"tenth"] do
    it {should be_a_quantity_close_to Q[2.54e-06,"m"] }
  end
  describe Q[1,"millionth"] do
    it {should be_a_quantity_close_to Q[2.54e-08,"m"] }
  end
  describe Q[1,"circularinch"] do
    it {should be_a_quantity_close_to Q[0.00050670748,"m^2"] }
  end
  describe Q[1,"circleinch"] do
    it {should be_a_quantity_close_to Q[0.00050670748,"m^2"] }
  end
  describe Q[1,"cylinderinch"] do
    it {should be_a_quantity_close_to Q[1.287037e-05,"m^3"] }
  end
  describe Q[1,"circularmil"] do
    it {should be_a_quantity_close_to Q[5.0670748e-10,"m^2"] }
  end
  describe Q[1,"cmil"] do
    it {should be_a_quantity_close_to Q[5.0670748e-10,"m^2"] }
  end
  describe Q[1,"cental"] do
    it {should be_a_quantity_close_to Q[45.359237,"kg"] }
  end
  describe Q[1,"centner"] do
    it {should be_a_quantity_close_to Q[45.359237,"kg"] }
  end
  describe Q[1,"caliber"] do
    it {should be_a_quantity_close_to Q[0.000254,"m"] }
  end
  describe Q[1,"duty"] do
    it {should be_a_quantity_close_to Q[1.3558179,"m^2 kg s^-2"] }
  end
  describe Q[1,"celo"] do
    it {should be_a_quantity_close_to Q[0.3048,"m s^-2"] }
  end
  describe Q[1,"jerk"] do
    it {should be_a_quantity_close_to Q[0.3048,"m s^-3"] }
  end
  describe Q[1,"australiapoint"] do
    it {should be_a_quantity_close_to Q[0.000254,"m"] }
  end
  describe Q[1,"sabin"] do
    it {should be_a_quantity_close_to Q[0.09290304,"m^2"] }
  end
  describe Q[1,"standardgauge"] do
    it {should be_a_quantity_close_to Q[1.4351,"m"] }
  end
  describe Q[1,"flag"] do
    it {should be_a_quantity_close_to Q[0.4645152,"m^2"] }
  end
  describe Q[1,"rollwallpaper"] do
    it {should be_a_quantity_close_to Q[2.7870912,"m^2"] }
  end
  describe Q[1,"fillpower"] do
    it {should be_a_quantity_close_to Q[0.00057803667,"m^3 kg^-1"] }
  end
  describe Q[1,"pinlength"] do
    it {should be_a_quantity_close_to Q[0.0015875,"m"] }
  end
  describe Q[1,"buttonline"] do
    it {should be_a_quantity_close_to Q[0.000635,"m"] }
  end
  describe Q[1,"beespace"] do
    it {should be_a_quantity_close_to Q[0.00635,"m"] }
  end
  describe Q[1,"diamond"] do
    it {should be_a_quantity_close_to Q[0.48768,"m"] }
  end
  describe Q[1,"retmaunit"] do
    it {should be_a_quantity_close_to Q[0.04445,"m"] }
  end
  describe Q[1,"U"] do
    it {should be_a_quantity_close_to Q[0.04445,"m"] }
  end
  describe Q[1,"RU"] do
    it {should be_a_quantity_close_to Q[0.04445,"m"] }
  end
  describe Q[1,"count"] do
    it {should be_a_quantity_close_to Q[2.2046226,"kg^-1"] }
  end
  describe Q[1,"ENERGY"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2"] }
  end
  describe Q[1,"WORK"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2"] }
  end
  describe Q[1,"cal_IT"] do
    it {should be_a_quantity_close_to Q[4.1868,"kg m^2 s^-2"] }
  end
  describe Q[1,"cal_th"] do
    it {should be_a_quantity_close_to Q[4.184,"kg m^2 s^-2"] }
  end
  describe Q[1,"cal_fifteen"] do
    it {should be_a_quantity_close_to Q[4.1858,"kg m^2 s^-2"] }
  end
  describe Q[1,"cal_twenty"] do
    it {should be_a_quantity_close_to Q[4.1819,"kg m^2 s^-2"] }
  end
  describe Q[1,"cal_mean"] do
    it {should be_a_quantity_close_to Q[4.19002,"kg m^2 s^-2"] }
  end
  describe Q[1,"calorie"] do
    it {should be_a_quantity_close_to Q[4.1868,"kg m^2 s^-2"] }
  end
  describe Q[1,"cal"] do
    it {should be_a_quantity_close_to Q[4.1868,"kg m^2 s^-2"] }
  end
  describe Q[1,"calorie_IT"] do
    it {should be_a_quantity_close_to Q[4.1868,"kg m^2 s^-2"] }
  end
  describe Q[1,"thermcalorie"] do
    it {should be_a_quantity_close_to Q[4.184,"kg m^2 s^-2"] }
  end
  describe Q[1,"calorie_th"] do
    it {should be_a_quantity_close_to Q[4.184,"kg m^2 s^-2"] }
  end
  describe Q[1,"Calorie"] do
    it {should be_a_quantity_close_to Q[4186.8,"kg m^2 s^-2"] }
  end
  describe Q[1,"thermie"] do
    it {should be_a_quantity_close_to Q[4185800,"kg m^2 s^-2"] }
  end
  describe Q[1,"btu"] do
    it {should be_a_quantity_close_to Q[1055.0559,"kg m^2 s^-2"] }
  end
  describe Q[1,"britishthermalunit"] do
    it {should be_a_quantity_close_to Q[1055.0559,"kg m^2 s^-2"] }
  end
  describe Q[1,"btu_IT"] do
    it {should be_a_quantity_close_to Q[1055.0559,"kg m^2 s^-2"] }
  end
  describe Q[1,"btu_th"] do
    it {should be_a_quantity_close_to Q[1054.3503,"kg m^2 s^-2"] }
  end
  describe Q[1,"btu_mean"] do
    it {should be_a_quantity_close_to Q[1055.8673,"kg m^2 s^-2"] }
  end
  describe Q[1,"quad"] do
    it {should be_a_quantity_close_to Q[1.0550559e+18,"kg m^2 s^-2"] }
  end
  describe Q[1,"ECtherm"] do
    it {should be_a_quantity_close_to Q[1.05506e+08,"kg m^2 s^-2"] }
  end
  describe Q[1,"UStherm"] do
    it {should be_a_quantity_close_to Q[1.054804e+08,"kg m^2 s^-2"] }
  end
  describe Q[1,"therm"] do
    it {should be_a_quantity_close_to Q[1.054804e+08,"kg m^2 s^-2"] }
  end
  describe Q[1,"tonoil"] do
    it {should be_a_quantity_close_to Q[4.1868e+10,"kg m^2 s^-2"] }
  end
  describe Q[1,"toe"] do
    it {should be_a_quantity_close_to Q[4.1868e+10,"kg m^2 s^-2"] }
  end
  describe Q[1,"toncoal"] do
    it {should be_a_quantity_close_to Q[2.93076e+10,"kg m^2 s^-2"] }
  end
  describe Q[1,"barreloil"] do
    it {should be_a_quantity_close_to Q[6.1193239e+09,"kg m^2 s^-2"] }
  end
  describe Q[1,"naturalgas_HHV"] do
    it {should be_a_quantity_close_to Q[38264937,"kg m^-1 s^-2"] }
  end
  describe Q[1,"naturalgas_LHV"] do
    it {should be_a_quantity_close_to Q[34650820,"kg m^-1 s^-2"] }
  end
  describe Q[1,"naturalgas"] do
    it {should be_a_quantity_close_to Q[38264937,"kg m^-1 s^-2"] }
  end
  describe Q[1,"charcoal"] do
    it {should be_a_quantity_close_to Q[30000000,"m^2 s^-2"] }
  end
  describe Q[1,"woodenergy_dry"] do
    it {should be_a_quantity_close_to Q[20000000,"m^2 s^-2"] }
  end
  describe Q[1,"woodenergy_airdry"] do
    it {should be_a_quantity_close_to Q[15000000,"m^2 s^-2"] }
  end
  describe Q[1,"coal_bituminous"] do
    it {should be_a_quantity_close_to Q[27000000,"m^2 s^-2"] }
  end
  describe Q[1,"coal_lignite"] do
    it {should be_a_quantity_close_to Q[15000000,"m^2 s^-2"] }
  end
  describe Q[1,"coal_US"] do
    it {should be_a_quantity_close_to Q[24250849,"m^2 s^-2"] }
  end
  describe Q[1,"ethanol_HHV"] do
    it {should be_a_quantity_close_to Q[2.3412167e+10,"kg m^-1 s^-2"] }
  end
  describe Q[1,"ethanol_LHV"] do
    it {should be_a_quantity_close_to Q[2.1098822e+10,"kg m^-1 s^-2"] }
  end
  describe Q[1,"diesel"] do
    it {should be_a_quantity_close_to Q[3.6372473e+10,"kg m^-1 s^-2"] }
  end
  describe Q[1,"gasoline_LHV"] do
    it {should be_a_quantity_close_to Q[3.2052371e+10,"kg m^-1 s^-2"] }
  end
  describe Q[1,"gasoline_HHV"] do
    it {should be_a_quantity_close_to Q[3.4839534e+10,"kg m^-1 s^-2"] }
  end
  describe Q[1,"gasoline"] do
    it {should be_a_quantity_close_to Q[3.4839534e+10,"kg m^-1 s^-2"] }
  end
  describe Q[1,"heating"] do
    it {should be_a_quantity_close_to Q[3.73e+10,"kg m^-1 s^-2"] }
  end
  describe Q[1,"fueloil"] do
    it {should be_a_quantity_close_to Q[3.97e+10,"kg m^-1 s^-2"] }
  end
  describe Q[1,"propane"] do
    it {should be_a_quantity_close_to Q[93300000,"kg m^-1 s^-2"] }
  end
  describe Q[1,"butane"] do
    it {should be_a_quantity_close_to Q[1.24e+08,"kg m^-1 s^-2"] }
  end
  describe Q[1,"uranium_pure"] do
    it {should be_a_quantity_close_to Q[8.2099833e+13,"s^-2 m^2"] }
  end
  describe Q[1,"uranium_natural"] do
    it {should be_a_quantity_close_to Q[5.7469883e+11,"s^-2 m^2"] }
  end
  describe Q[1,"celsiusheatunit"] do
    it {should be_a_quantity_close_to Q[1899.1005,"kg m^2 s^-2"] }
  end
  describe Q[1,"chu"] do
    it {should be_a_quantity_close_to Q[1899.1005,"kg m^2 s^-2"] }
  end
  describe Q[1,"POWER"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3"] }
  end
  describe Q[1,"horsepower"] do
    it {should be_a_quantity_close_to Q[745.69987,"m^2 kg s^-3"] }
  end
  describe Q[1,"mechanicalhorsepower"] do
    it {should be_a_quantity_close_to Q[745.69987,"m^2 kg s^-3"] }
  end
  describe Q[1,"hp"] do
    it {should be_a_quantity_close_to Q[745.69987,"m^2 kg s^-3"] }
  end
  describe Q[1,"metrichorsepower"] do
    it {should be_a_quantity_close_to Q[735.49875,"kg m^2 s^-3"] }
  end
  describe Q[1,"electrichorsepower"] do
    it {should be_a_quantity_close_to Q[746,"kg m^2 s^-3"] }
  end
  describe Q[1,"boilerhorsepower"] do
    it {should be_a_quantity_close_to Q[9809.5,"kg m^2 s^-3"] }
  end
  describe Q[1,"waterhorsepower"] do
    it {should be_a_quantity_close_to Q[746.043,"kg m^2 s^-3"] }
  end
  describe Q[1,"brhorsepower"] do
    it {should be_a_quantity_close_to Q[745.7,"kg m^2 s^-3"] }
  end
  describe Q[1,"donkeypower"] do
    it {should be_a_quantity_close_to Q[250,"kg m^2 s^-3"] }
  end
  describe Q[1,"chevalvapeur"] do
    it {should be_a_quantity_close_to Q[735.49875,"kg m^2 s^-3"] }
  end
  describe Q[1,"THERMAL_CONDUCTIVITY"] do
    it {should be_a_quantity_close_to Q[1,"kg m s^-3 K^-1"] }
  end
  describe Q[1,"THERMAL_RESISTIVITY"] do
    it {should be_a_quantity_close_to Q[1,"kg^-1 m^-1 s^3 K"] }
  end
  describe Q[1,"THERMAL_CONDUCTANCE"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3 K^-1"] }
  end
  describe Q[1,"THERMAL_RESISTANCE"] do
    it {should be_a_quantity_close_to Q[1,"kg^-1 m^-2 s^3 K"] }
  end
  describe Q[1,"THERMAL_ADMITTANCE"] do
    it {should be_a_quantity_close_to Q[1,"kg s^-3 K^-1"] }
  end
  describe Q[1,"THERMAL_INSULANCE"] do
    it {should be_a_quantity_close_to Q[1,"kg^-1 s^3 K"] }
  end
  describe Q[1,"THERMAL_INSULATION"] do
    it {should be_a_quantity_close_to Q[1,"kg^-1 s^3 K"] }
  end
  describe Q[1,"Rvalue"] do
    it {should be_a_quantity_close_to Q[0.17611018,"K s^3 kg^-1"] }
  end
  describe Q[1,"Uvalue"] do
    it {should be_a_quantity_close_to Q[5.6782633,"K^-1 s^-3 kg"] }
  end
  describe Q[1,"europeanUvalue"] do
    it {should be_a_quantity_close_to Q[1,"kg s^-3 K^-1"] }
  end
  describe Q[1,"RSI"] do
    it {should be_a_quantity_close_to Q[1,"K kg^-1 s^3"] }
  end
  describe Q[1,"clo"] do
    it {should be_a_quantity_close_to Q[0.155,"K kg^-1 s^3"] }
  end
  describe Q[1,"tog"] do
    it {should be_a_quantity_close_to Q[0.1,"K kg^-1 s^3"] }
  end
  describe Q[1,"ENTROPY"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2 K^-1"] }
  end
  describe Q[1,"clausius"] do
    it {should be_a_quantity_close_to Q[4186.8,"kg m^2 s^-2 K^-1"] }
  end
  describe Q[1,"langley"] do
    it {should be_a_quantity_close_to Q[41840,"kg s^-2"] }
  end
  describe Q[1,"poncelet"] do
    it {should be_a_quantity_close_to Q[980.665,"kg m^2 s^-3"] }
  end
  describe Q[1,"tonrefrigeration"] do
    it {should be_a_quantity_close_to Q[3516.8528,"kg m^2 s^-3"] }
  end
  describe Q[1,"tonref"] do
    it {should be_a_quantity_close_to Q[3516.8528,"kg m^2 s^-3"] }
  end
  describe Q[1,"refrigeration"] do
    it {should be_a_quantity_close_to Q[3.8766667,"m^2 s^-3"] }
  end
  describe Q[1,"frigorie"] do
    it {should be_a_quantity_close_to Q[4185.8,"kg m^2 s^-2"] }
  end
  describe Q[1,"tnt"] do
    it {should be_a_quantity_close_to Q[4612070.5,"m^2 s^-2"] }
  end
  describe Q[1,"airwatt"] do
    it {should be_a_quantity_close_to Q[0.99923343,"m^2 s^-3 kg"] }
  end
  describe Q[1,"perm_0C"] do
    it {should be_a_quantity_close_to Q[5.7213495e-11,"s m^-1"] }
  end
  describe Q[1,"perm_zero"] do
    it {should be_a_quantity_close_to Q[5.7213495e-11,"s m^-1"] }
  end
  describe Q[1,"perm_0"] do
    it {should be_a_quantity_close_to Q[5.7213495e-11,"s m^-1"] }
  end
  describe Q[1,"perm"] do
    it {should be_a_quantity_close_to Q[5.7213495e-11,"s m^-1"] }
  end
  describe Q[1,"perm_23C"] do
    it {should be_a_quantity_close_to Q[5.7452261e-11,"s m^-1"] }
  end
  describe Q[1,"perm_twentythree"] do
    it {should be_a_quantity_close_to Q[5.7452261e-11,"s m^-1"] }
  end
  describe Q[1,"pair"] do
    it {should be_a_quantity_close_to Q[2] }
  end
  describe Q[1,"brace"] do
    it {should be_a_quantity_close_to Q[2] }
  end
  describe Q[1,"nest"] do
    it {should be_a_quantity_close_to Q[3] }
  end
  describe Q[1,"hattrick"] do
    it {should be_a_quantity_close_to Q[3] }
  end
  describe Q[1,"dicker"] do
    it {should be_a_quantity_close_to Q[10] }
  end
  describe Q[1,"dozen"] do
    it {should be_a_quantity_close_to Q[12] }
  end
  describe Q[1,"bakersdozen"] do
    it {should be_a_quantity_close_to Q[13] }
  end
  describe Q[1,"score"] do
    it {should be_a_quantity_close_to Q[20] }
  end
  describe Q[1,"flock"] do
    it {should be_a_quantity_close_to Q[40] }
  end
  describe Q[1,"timer"] do
    it {should be_a_quantity_close_to Q[40] }
  end
  describe Q[1,"shock"] do
    it {should be_a_quantity_close_to Q[60] }
  end
  describe Q[1,"toncount"] do
    it {should be_a_quantity_close_to Q[100] }
  end
  describe Q[1,"longhundred"] do
    it {should be_a_quantity_close_to Q[120] }
  end
  describe Q[1,"gross"] do
    it {should be_a_quantity_close_to Q[144] }
  end
  describe Q[1,"greatgross"] do
    it {should be_a_quantity_close_to Q[1728] }
  end
  describe Q[1,"tithe"] do
    it {should be_a_quantity_close_to Q[0.1] }
  end
  describe Q[1,"shortquire"] do
    it {should be_a_quantity_close_to Q[24] }
  end
  describe Q[1,"quire"] do
    it {should be_a_quantity_close_to Q[25] }
  end
  describe Q[1,"shortream"] do
    it {should be_a_quantity_close_to Q[480] }
  end
  describe Q[1,"ream"] do
    it {should be_a_quantity_close_to Q[500] }
  end
  describe Q[1,"perfectream"] do
    it {should be_a_quantity_close_to Q[516] }
  end
  describe Q[1,"bundle"] do
    it {should be_a_quantity_close_to Q[1000] }
  end
  describe Q[1,"bale"] do
    it {should be_a_quantity_close_to Q[5000] }
  end
  describe Q[1,"lettersize"] do
    it {should be_a_quantity_close_to Q[0.06032246,"m^2"] }
  end
  describe Q[1,"legalsize"] do
    it {should be_a_quantity_close_to Q[0.07677404,"m^2"] }
  end
  describe Q[1,"ledgersize"] do
    it {should be_a_quantity_close_to Q[0.12064492,"m^2"] }
  end
  describe Q[1,"executivesize"] do
    it {should be_a_quantity_close_to Q[0.049112805,"m^2"] }
  end
  describe Q[1,"Apaper"] do
    it {should be_a_quantity_close_to Q[0.06032246,"m^2"] }
  end
  describe Q[1,"Bpaper"] do
    it {should be_a_quantity_close_to Q[0.12064492,"m^2"] }
  end
  describe Q[1,"Cpaper"] do
    it {should be_a_quantity_close_to Q[0.24128984,"m^2"] }
  end
  describe Q[1,"Dpaper"] do
    it {should be_a_quantity_close_to Q[0.48257968,"m^2"] }
  end
  describe Q[1,"Epaper"] do
    it {should be_a_quantity_close_to Q[0.96515936,"m^2"] }
  end
  describe Q[1,"pointthickness"] do
    it {should be_a_quantity_close_to Q[2.54e-05,"m"] }
  end
  describe Q[1,"A0paper"] do
    it {should be_a_quantity_close_to Q[0.999949,"m^2"] }
  end
  describe Q[1,"A1paper"] do
    it {should be_a_quantity_close_to Q[0.499554,"m^2"] }
  end
  describe Q[1,"A2paper"] do
    it {should be_a_quantity_close_to Q[0.24948,"m^2"] }
  end
  describe Q[1,"A3paper"] do
    it {should be_a_quantity_close_to Q[0.12474,"m^2"] }
  end
  describe Q[1,"A4paper"] do
    it {should be_a_quantity_close_to Q[0.06237,"m^2"] }
  end
  describe Q[1,"A5paper"] do
    it {should be_a_quantity_close_to Q[0.03108,"m^2"] }
  end
  describe Q[1,"A6paper"] do
    it {should be_a_quantity_close_to Q[0.01554,"m^2"] }
  end
  describe Q[1,"A7paper"] do
    it {should be_a_quantity_close_to Q[0.00777,"m^2"] }
  end
  describe Q[1,"A8paper"] do
    it {should be_a_quantity_close_to Q[0.003848,"m^2"] }
  end
  describe Q[1,"A9paper"] do
    it {should be_a_quantity_close_to Q[0.001924,"m^2"] }
  end
  describe Q[1,"A10paper"] do
    it {should be_a_quantity_close_to Q[0.000962,"m^2"] }
  end
  describe Q[1,"B0paper"] do
    it {should be_a_quantity_close_to Q[1.414,"m^2"] }
  end
  describe Q[1,"B1paper"] do
    it {should be_a_quantity_close_to Q[0.707,"m^2"] }
  end
  describe Q[1,"B2paper"] do
    it {should be_a_quantity_close_to Q[0.3535,"m^2"] }
  end
  describe Q[1,"B3paper"] do
    it {should be_a_quantity_close_to Q[0.1765,"m^2"] }
  end
  describe Q[1,"B4paper"] do
    it {should be_a_quantity_close_to Q[0.08825,"m^2"] }
  end
  describe Q[1,"B5paper"] do
    it {should be_a_quantity_close_to Q[0.044,"m^2"] }
  end
  describe Q[1,"B6paper"] do
    it {should be_a_quantity_close_to Q[0.022,"m^2"] }
  end
  describe Q[1,"B7paper"] do
    it {should be_a_quantity_close_to Q[0.011,"m^2"] }
  end
  describe Q[1,"B8paper"] do
    it {should be_a_quantity_close_to Q[0.005456,"m^2"] }
  end
  describe Q[1,"B9paper"] do
    it {should be_a_quantity_close_to Q[0.002728,"m^2"] }
  end
  describe Q[1,"B10paper"] do
    it {should be_a_quantity_close_to Q[0.001364,"m^2"] }
  end
  describe Q[1,"C0paper"] do
    it {should be_a_quantity_close_to Q[1.189349,"m^2"] }
  end
  describe Q[1,"C1paper"] do
    it {should be_a_quantity_close_to Q[0.594216,"m^2"] }
  end
  describe Q[1,"C2paper"] do
    it {should be_a_quantity_close_to Q[0.296784,"m^2"] }
  end
  describe Q[1,"C3paper"] do
    it {should be_a_quantity_close_to Q[0.148392,"m^2"] }
  end
  describe Q[1,"C4paper"] do
    it {should be_a_quantity_close_to Q[0.074196,"m^2"] }
  end
  describe Q[1,"C5paper"] do
    it {should be_a_quantity_close_to Q[0.037098,"m^2"] }
  end
  describe Q[1,"C6paper"] do
    it {should be_a_quantity_close_to Q[0.018468,"m^2"] }
  end
  describe Q[1,"C7paper"] do
    it {should be_a_quantity_close_to Q[0.009234,"m^2"] }
  end
  describe Q[1,"C8paper"] do
    it {should be_a_quantity_close_to Q[0.004617,"m^2"] }
  end
  describe Q[1,"C9paper"] do
    it {should be_a_quantity_close_to Q[0.00228,"m^2"] }
  end
  describe Q[1,"C10paper"] do
    it {should be_a_quantity_close_to Q[0.00112,"m^2"] }
  end
  describe Q[1,"gsm"] do
    it {should be_a_quantity_close_to Q[0.001,"kg m^-2"] }
  end
  describe Q[1,"poundbookpaper"] do
    it {should be_a_quantity_close_to Q[0.0014801465,"kg m^-2"] }
  end
  describe Q[1,"lbbook"] do
    it {should be_a_quantity_close_to Q[0.0014801465,"kg m^-2"] }
  end
  describe Q[1,"poundtextpaper"] do
    it {should be_a_quantity_close_to Q[0.0014801465,"kg m^-2"] }
  end
  describe Q[1,"lbtext"] do
    it {should be_a_quantity_close_to Q[0.0014801465,"kg m^-2"] }
  end
  describe Q[1,"poundoffsetpaper"] do
    it {should be_a_quantity_close_to Q[0.0014801465,"kg m^-2"] }
  end
  describe Q[1,"lboffset"] do
    it {should be_a_quantity_close_to Q[0.0014801465,"kg m^-2"] }
  end
  describe Q[1,"poundbiblepaper"] do
    it {should be_a_quantity_close_to Q[0.0014801465,"kg m^-2"] }
  end
  describe Q[1,"lbbible"] do
    it {should be_a_quantity_close_to Q[0.0014801465,"kg m^-2"] }
  end
  describe Q[1,"poundtagpaper"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"lbtag"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"poundbagpaper"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"lbbag"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"poundnewsprintpaper"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"lbnewsprint"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"poundposterpaper"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"lbposter"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"poundtissuepaper"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"lbtissue"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"poundwrappingpaper"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"lbwrapping"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"poundwaxingpaper"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"lbwaxing"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"poundglassinepaper"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"lbglassine"] do
    it {should be_a_quantity_close_to Q[0.0016274759,"kg m^-2"] }
  end
  describe Q[1,"poundcoverpaper"] do
    it {should be_a_quantity_close_to Q[0.0027041138,"kg m^-2"] }
  end
  describe Q[1,"lbcover"] do
    it {should be_a_quantity_close_to Q[0.0027041138,"kg m^-2"] }
  end
  describe Q[1,"poundindexpaper"] do
    it {should be_a_quantity_close_to Q[0.0018079578,"kg m^-2"] }
  end
  describe Q[1,"lbindex"] do
    it {should be_a_quantity_close_to Q[0.0018079578,"kg m^-2"] }
  end
  describe Q[1,"poundindexbristolpaper"] do
    it {should be_a_quantity_close_to Q[0.0018079578,"kg m^-2"] }
  end
  describe Q[1,"lbindexbristol"] do
    it {should be_a_quantity_close_to Q[0.0018079578,"kg m^-2"] }
  end
  describe Q[1,"poundbondpaper"] do
    it {should be_a_quantity_close_to Q[0.0037597304,"kg m^-2"] }
  end
  describe Q[1,"lbbond"] do
    it {should be_a_quantity_close_to Q[0.0037597304,"kg m^-2"] }
  end
  describe Q[1,"poundwritingpaper"] do
    it {should be_a_quantity_close_to Q[0.0037597304,"kg m^-2"] }
  end
  describe Q[1,"lbwriting"] do
    it {should be_a_quantity_close_to Q[0.0037597304,"kg m^-2"] }
  end
  describe Q[1,"poundledgerpaper"] do
    it {should be_a_quantity_close_to Q[0.0037597304,"kg m^-2"] }
  end
  describe Q[1,"lbledger"] do
    it {should be_a_quantity_close_to Q[0.0037597304,"kg m^-2"] }
  end
  describe Q[1,"poundcopypaper"] do
    it {should be_a_quantity_close_to Q[0.0037597304,"kg m^-2"] }
  end
  describe Q[1,"lbcopy"] do
    it {should be_a_quantity_close_to Q[0.0037597304,"kg m^-2"] }
  end
  describe Q[1,"poundblottingpaper"] do
    it {should be_a_quantity_close_to Q[0.0030836385,"kg m^-2"] }
  end
  describe Q[1,"lbblotting"] do
    it {should be_a_quantity_close_to Q[0.0030836385,"kg m^-2"] }
  end
  describe Q[1,"poundblankspaper"] do
    it {should be_a_quantity_close_to Q[0.0022826934,"kg m^-2"] }
  end
  describe Q[1,"lbblanks"] do
    it {should be_a_quantity_close_to Q[0.0022826934,"kg m^-2"] }
  end
  describe Q[1,"poundpostcardpaper"] do
    it {should be_a_quantity_close_to Q[0.0021928096,"kg m^-2"] }
  end
  describe Q[1,"lbpostcard"] do
    it {should be_a_quantity_close_to Q[0.0021928096,"kg m^-2"] }
  end
  describe Q[1,"poundweddingbristol"] do
    it {should be_a_quantity_close_to Q[0.0021928096,"kg m^-2"] }
  end
  describe Q[1,"lbweddingbristol"] do
    it {should be_a_quantity_close_to Q[0.0021928096,"kg m^-2"] }
  end
  describe Q[1,"poundbristolpaper"] do
    it {should be_a_quantity_close_to Q[0.0021928096,"kg m^-2"] }
  end
  describe Q[1,"lbbristol"] do
    it {should be_a_quantity_close_to Q[0.0021928096,"kg m^-2"] }
  end
  describe Q[1,"poundboxboard"] do
    it {should be_a_quantity_close_to Q[0.0048824276,"kg m^-2"] }
  end
  describe Q[1,"lbboxboard"] do
    it {should be_a_quantity_close_to Q[0.0048824276,"kg m^-2"] }
  end
  describe Q[1,"poundpaperboard"] do
    it {should be_a_quantity_close_to Q[0.0048824276,"kg m^-2"] }
  end
  describe Q[1,"lbpaperboard"] do
    it {should be_a_quantity_close_to Q[0.0048824276,"kg m^-2"] }
  end
  describe Q[1,"paperM"] do
    it {should be_a_quantity_close_to Q[0.00045359237,"kg"] }
  end
  describe Q[1,"paperdensity"] do
    it {should be_a_quantity_close_to Q[800,"kg m^-3"] }
  end
  describe Q[1,"papercaliper"] do
    it {should be_a_quantity_close_to Q[20.32,"m^-2 kg"] }
  end
  describe Q[1,"paperpoint"] do
    it {should be_a_quantity_close_to Q[0.02032,"m^-2 kg"] }
  end
  describe Q[1,"fournierpoint"] do
    it {should be_a_quantity_close_to Q[0.00034882667,"m"] }
  end
  describe Q[1,"olddidotpoint"] do
    it {should be_a_quantity_close_to Q[0.00037597151,"m"] }
  end
  describe Q[1,"bertholdpoint"] do
    it {should be_a_quantity_close_to Q[0.00037593985,"m"] }
  end
  describe Q[1,"INpoint"] do
    it {should be_a_quantity_close_to Q[0.0004,"m"] }
  end
  describe Q[1,"germandidotpoint"] do
    it {should be_a_quantity_close_to Q[0.000376065,"m"] }
  end
  describe Q[1,"metricpoint"] do
    it {should be_a_quantity_close_to Q[0.000375,"m"] }
  end
  describe Q[1,"oldpoint"] do
    it {should be_a_quantity_close_to Q[0.0003514598,"m"] }
  end
  describe Q[1,"printerspoint"] do
    it {should be_a_quantity_close_to Q[0.0003514598,"m"] }
  end
  describe Q[1,"texpoint"] do
    it {should be_a_quantity_close_to Q[0.0003514598,"m"] }
  end
  describe Q[1,"texscaledpoint"] do
    it {should be_a_quantity_close_to Q[5.362851e-09,"m"] }
  end
  describe Q[1,"texsp"] do
    it {should be_a_quantity_close_to Q[5.362851e-09,"m"] }
  end
  describe Q[1,"computerpoint"] do
    it {should be_a_quantity_close_to Q[0.00035277778,"m"] }
  end
  describe Q[1,"point"] do
    it {should be_a_quantity_close_to Q[0.00035277778,"m"] }
  end
  describe Q[1,"computerpica"] do
    it {should be_a_quantity_close_to Q[0.0042333333,"m"] }
  end
  describe Q[1,"postscriptpoint"] do
    it {should be_a_quantity_close_to Q[0.00035277778,"m"] }
  end
  describe Q[1,"pspoint"] do
    it {should be_a_quantity_close_to Q[0.00035277778,"m"] }
  end
  describe Q[1,"twip"] do
    it {should be_a_quantity_close_to Q[1.7638889e-05,"m"] }
  end
  describe Q[1,"Q"] do
    it {should be_a_quantity_close_to Q[0.00025,"m"] }
  end
  describe Q[1,"frenchprinterspoint"] do
    it {should be_a_quantity_close_to Q[0.00037597151,"m"] }
  end
  describe Q[1,"didotpoint"] do
    it {should be_a_quantity_close_to Q[0.000376065,"m"] }
  end
  describe Q[1,"europeanpoint"] do
    it {should be_a_quantity_close_to Q[0.000376065,"m"] }
  end
  describe Q[1,"cicero"] do
    it {should be_a_quantity_close_to Q[0.00451278,"m"] }
  end
  describe Q[1,"stick"] do
    it {should be_a_quantity_close_to Q[0.0508,"m"] }
  end
  describe Q[1,"excelsior"] do
    it {should be_a_quantity_close_to Q[0.0010543794,"m"] }
  end
  describe Q[1,"brilliant"] do
    it {should be_a_quantity_close_to Q[0.0012301093,"m"] }
  end
  describe Q[1,"diamondtype"] do
    it {should be_a_quantity_close_to Q[0.0014058392,"m"] }
  end
  describe Q[1,"pearl"] do
    it {should be_a_quantity_close_to Q[0.001757299,"m"] }
  end
  describe Q[1,"agate"] do
    it {should be_a_quantity_close_to Q[0.0019330289,"m"] }
  end
  describe Q[1,"ruby"] do
    it {should be_a_quantity_close_to Q[0.0019330289,"m"] }
  end
  describe Q[1,"nonpareil"] do
    it {should be_a_quantity_close_to Q[0.0021087588,"m"] }
  end
  describe Q[1,"mignonette"] do
    it {should be_a_quantity_close_to Q[0.0022844887,"m"] }
  end
  describe Q[1,"emerald"] do
    it {should be_a_quantity_close_to Q[0.0022844887,"m"] }
  end
  describe Q[1,"minion"] do
    it {should be_a_quantity_close_to Q[0.0024602186,"m"] }
  end
  describe Q[1,"brevier"] do
    it {should be_a_quantity_close_to Q[0.0028116784,"m"] }
  end
  describe Q[1,"bourgeois"] do
    it {should be_a_quantity_close_to Q[0.0031631382,"m"] }
  end
  describe Q[1,"longprimer"] do
    it {should be_a_quantity_close_to Q[0.003514598,"m"] }
  end
  describe Q[1,"smallpica"] do
    it {should be_a_quantity_close_to Q[0.0038660578,"m"] }
  end
  describe Q[1,"pica"] do
    it {should be_a_quantity_close_to Q[0.0042175176,"m"] }
  end
  describe Q[1,"english"] do
    it {should be_a_quantity_close_to Q[0.0049204372,"m"] }
  end
  describe Q[1,"columbian"] do
    it {should be_a_quantity_close_to Q[0.0056233569,"m"] }
  end
  describe Q[1,"greatprimer"] do
    it {should be_a_quantity_close_to Q[0.0063262765,"m"] }
  end
  describe Q[1,"paragon"] do
    it {should be_a_quantity_close_to Q[0.0070291961,"m"] }
  end
  describe Q[1,"meridian"] do
    it {should be_a_quantity_close_to Q[0.015464231,"m"] }
  end
  describe Q[1,"canon"] do
    it {should be_a_quantity_close_to Q[0.016870071,"m"] }
  end
  describe Q[1,"nonplusultra"] do
    it {should be_a_quantity_close_to Q[0.00075213,"m"] }
  end
  describe Q[1,"brillant"] do
    it {should be_a_quantity_close_to Q[0.001128195,"m"] }
  end
  describe Q[1,"diamant"] do
    it {should be_a_quantity_close_to Q[0.00150426,"m"] }
  end
  describe Q[1,"perl"] do
    it {should be_a_quantity_close_to Q[0.001880325,"m"] }
  end
  describe Q[1,"nonpareille"] do
    it {should be_a_quantity_close_to Q[0.00225639,"m"] }
  end
  describe Q[1,"kolonel"] do
    it {should be_a_quantity_close_to Q[0.002632455,"m"] }
  end
  describe Q[1,"petit"] do
    it {should be_a_quantity_close_to Q[0.00300852,"m"] }
  end
  describe Q[1,"borgis"] do
    it {should be_a_quantity_close_to Q[0.003384585,"m"] }
  end
  describe Q[1,"korpus"] do
    it {should be_a_quantity_close_to Q[0.00376065,"m"] }
  end
  describe Q[1,"corpus"] do
    it {should be_a_quantity_close_to Q[0.00376065,"m"] }
  end
  describe Q[1,"garamond"] do
    it {should be_a_quantity_close_to Q[0.00376065,"m"] }
  end
  describe Q[1,"mittel"] do
    it {should be_a_quantity_close_to Q[0.00526491,"m"] }
  end
  describe Q[1,"tertia"] do
    it {should be_a_quantity_close_to Q[0.00601704,"m"] }
  end
  describe Q[1,"text"] do
    it {should be_a_quantity_close_to Q[0.00676917,"m"] }
  end
  describe Q[1,"kleine_kanon"] do
    it {should be_a_quantity_close_to Q[0.01203408,"m"] }
  end
  describe Q[1,"kanon"] do
    it {should be_a_quantity_close_to Q[0.01353834,"m"] }
  end
  describe Q[1,"grobe_kanon"] do
    it {should be_a_quantity_close_to Q[0.01579473,"m"] }
  end
  describe Q[1,"missal"] do
    it {should be_a_quantity_close_to Q[0.01805112,"m"] }
  end
  describe Q[1,"kleine_sabon"] do
    it {should be_a_quantity_close_to Q[0.02707668,"m"] }
  end
  describe Q[1,"grobe_sabon"] do
    it {should be_a_quantity_close_to Q[0.03158946,"m"] }
  end
  describe Q[1,"INFORMATION"] do
    it {should be_a_quantity_close_to Q[1,"bit"] }
  end
  describe Q[1,"nat"] do
    it {should be_a_quantity_close_to Q[0.69314718,"bit"] }
  end
  describe Q[1,"hartley"] do
    it {should be_a_quantity_close_to Q[3.3219281,"bit"] }
  end
  describe Q[1,"bps"] do
    it {should be_a_quantity_close_to Q[1,"bit s^-1"] }
  end
  describe Q[1,"byte"] do
    it {should be_a_quantity_close_to Q[8,"bit"] }
  end
  describe Q[1,"B"] do
    it {should be_a_quantity_close_to Q[8,"bit"] }
  end
  describe Q[1,"octet"] do
    it {should be_a_quantity_close_to Q[8,"bit"] }
  end
  describe Q[1,"nybble"] do
    it {should be_a_quantity_close_to Q[4,"bit"] }
  end
  describe Q[1,"nibble"] do
    it {should be_a_quantity_close_to Q[4,"bit"] }
  end
  describe Q[1,"nyp"] do
    it {should be_a_quantity_close_to Q[2,"bit"] }
  end
  describe Q[1,"meg"] do
    it {should be_a_quantity_close_to Q[8000000,"bit"] }
  end
  describe Q[1,"gig"] do
    it {should be_a_quantity_close_to Q[8e+09,"bit"] }
  end
  describe Q[1,"jiffy"] do
    it {should be_a_quantity_close_to Q[0.01,"s"] }
  end
  describe Q[1,"jiffies"] do
    it {should be_a_quantity_close_to Q[0.01,"s"] }
  end
  describe Q[1,"cdaudiospeed"] do
    it {should be_a_quantity_close_to Q[1411200,"s^-1 bit"] }
  end
  describe Q[1,"cdromspeed"] do
    it {should be_a_quantity_close_to Q[1228800,"bit s^-1"] }
  end
  describe Q[1,"dvdspeed"] do
    it {should be_a_quantity_close_to Q[11080000,"bit s^-1"] }
  end
  describe Q[1,"octave"] do
    it {should be_a_quantity_close_to Q[2] }
  end
  describe Q[1,"majorsecond"] do
    it {should be_a_quantity_close_to Q[1.125] }
  end
  describe Q[1,"majorthird"] do
    it {should be_a_quantity_close_to Q[1.25] }
  end
  describe Q[1,"minorthird"] do
    it {should be_a_quantity_close_to Q[1.2] }
  end
  describe Q[1,"musicalfourth"] do
    it {should be_a_quantity_close_to Q[1.3333333] }
  end
  describe Q[1,"musicalfifth"] do
    it {should be_a_quantity_close_to Q[1.5] }
  end
  describe Q[1,"majorsixth"] do
    it {should be_a_quantity_close_to Q[1.6666667] }
  end
  describe Q[1,"minorsixth"] do
    it {should be_a_quantity_close_to Q[1.6] }
  end
  describe Q[1,"majorseventh"] do
    it {should be_a_quantity_close_to Q[1.875] }
  end
  describe Q[1,"minorseventh"] do
    it {should be_a_quantity_close_to Q[1.8] }
  end
  describe Q[1,"pythagoreanthird"] do
    it {should be_a_quantity_close_to Q[1.265625] }
  end
  describe Q[1,"syntoniccomma"] do
    it {should be_a_quantity_close_to Q[1.0125] }
  end
  describe Q[1,"pythagoreancomma"] do
    it {should be_a_quantity_close_to Q[1.0136433] }
  end
  describe Q[1,"semitone"] do
    it {should be_a_quantity_close_to Q[1.0594631] }
  end
  describe Q[1,"wholenote"] do
    it {should be_a_quantity_close_to Q[1,"wholenote"] }
  end
  describe Q[1,"MUSICAL_NOTE_LENGTH"] do
    it {should be_a_quantity_close_to Q[1,"wholenote"] }
  end
  describe Q[1,"halfnote"] do
    it {should be_a_quantity_close_to Q[0.5,"wholenote"] }
  end
  describe Q[1,"quarternote"] do
    it {should be_a_quantity_close_to Q[0.25,"wholenote"] }
  end
  describe Q[1,"eighthnote"] do
    it {should be_a_quantity_close_to Q[0.125,"wholenote"] }
  end
  describe Q[1,"sixteenthnote"] do
    it {should be_a_quantity_close_to Q[0.0625,"wholenote"] }
  end
  describe Q[1,"thirtysecondnote"] do
    it {should be_a_quantity_close_to Q[0.03125,"wholenote"] }
  end
  describe Q[1,"sixtyfourthnote"] do
    it {should be_a_quantity_close_to Q[0.015625,"wholenote"] }
  end
  describe Q[1,"dotted"] do
    it {should be_a_quantity_close_to Q[1.5] }
  end
  describe Q[1,"doubledotted"] do
    it {should be_a_quantity_close_to Q[1.75] }
  end
  describe Q[1,"breve"] do
    it {should be_a_quantity_close_to Q[2,"wholenote"] }
  end
  describe Q[1,"semibreve"] do
    it {should be_a_quantity_close_to Q[1,"wholenote"] }
  end
  describe Q[1,"minimnote"] do
    it {should be_a_quantity_close_to Q[0.5,"wholenote"] }
  end
  describe Q[1,"crotchet"] do
    it {should be_a_quantity_close_to Q[0.25,"wholenote"] }
  end
  describe Q[1,"quaver"] do
    it {should be_a_quantity_close_to Q[0.125,"wholenote"] }
  end
  describe Q[1,"semiquaver"] do
    it {should be_a_quantity_close_to Q[0.0625,"wholenote"] }
  end
  describe Q[1,"demisemiquaver"] do
    it {should be_a_quantity_close_to Q[0.03125,"wholenote"] }
  end
  describe Q[1,"hemidemisemiquaver"] do
    it {should be_a_quantity_close_to Q[0.015625,"wholenote"] }
  end
  describe Q[1,"semidemisemiquaver"] do
    it {should be_a_quantity_close_to Q[0.015625,"wholenote"] }
  end
  describe Q[1,"woolyarnrun"] do
    it {should be_a_quantity_close_to Q[3225.4511,"m kg^-1"] }
  end
  describe Q[1,"yarncut"] do
    it {should be_a_quantity_close_to Q[604.77208,"m kg^-1"] }
  end
  describe Q[1,"cottonyarncount"] do
    it {should be_a_quantity_close_to Q[1693.3618,"m kg^-1"] }
  end
  describe Q[1,"linenyarncount"] do
    it {should be_a_quantity_close_to Q[604.77208,"m kg^-1"] }
  end
  describe Q[1,"worstedyarncount"] do
    it {should be_a_quantity_close_to Q[1128.9079,"m kg^-1"] }
  end
  describe Q[1,"metricyarncount"] do
    it {should be_a_quantity_close_to Q[1000,"m kg^-1"] }
  end
  describe Q[1,"denier"] do
    it {should be_a_quantity_close_to Q[1.1111111e-07,"kg m^-1"] }
  end
  describe Q[1,"manchesteryarnnumber"] do
    it {should be_a_quantity_close_to Q[1.9377135e-06,"kg m^-1"] }
  end
  describe Q[1,"pli"] do
    it {should be_a_quantity_close_to Q[17.857967,"kg m^-1"] }
  end
  describe Q[1,"typp"] do
    it {should be_a_quantity_close_to Q[2015.9069,"m kg^-1"] }
  end
  describe Q[1,"asbestoscut"] do
    it {should be_a_quantity_close_to Q[201.59069,"m kg^-1"] }
  end
  describe Q[1,"tex"] do
    it {should be_a_quantity_close_to Q[1e-06,"kg m^-1"] }
  end
  describe Q[1,"drex"] do
    it {should be_a_quantity_close_to Q[1e-07,"kg m^-1"] }
  end
  describe Q[1,"poumar"] do
    it {should be_a_quantity_close_to Q[4.9605465e-07,"kg m^-1"] }
  end
  describe Q[1,"skeincotton"] do
    it {should be_a_quantity_close_to Q[109.728,"m"] }
  end
  describe Q[1,"cottonbolt"] do
    it {should be_a_quantity_close_to Q[36.576,"m"] }
  end
  describe Q[1,"woolbolt"] do
    it {should be_a_quantity_close_to Q[64.008,"m"] }
  end
  describe Q[1,"bolt"] do
    it {should be_a_quantity_close_to Q[36.576,"m"] }
  end
  describe Q[1,"heer"] do
    it {should be_a_quantity_close_to Q[548.64,"m"] }
  end
  describe Q[1,"cut"] do
    it {should be_a_quantity_close_to Q[274.32,"m"] }
  end
  describe Q[1,"lea"] do
    it {should be_a_quantity_close_to Q[274.32,"m"] }
  end
  describe Q[1,"sailmakersyard"] do
    it {should be_a_quantity_close_to Q[0.7239,"m"] }
  end
  describe Q[1,"sailmakersounce"] do
    it {should be_a_quantity_close_to Q[0.042828313,"kg m^-2"] }
  end
  describe Q[1,"silkmomme"] do
    it {should be_a_quantity_close_to Q[0.0043344606,"kg m^-2"] }
  end
  describe Q[1,"silkmm"] do
    it {should be_a_quantity_close_to Q[0.0043344606,"kg m^-2"] }
  end
  describe Q[1,"mcg"] do
    it {should be_a_quantity_close_to Q[1e-09,"kg"] }
  end
  describe Q[1,"iudiptheria"] do
    it {should be_a_quantity_close_to Q[6.28e-08,"kg"] }
  end
  describe Q[1,"iupenicillin"] do
    it {should be_a_quantity_close_to Q[6e-10,"kg"] }
  end
  describe Q[1,"iuinsulin"] do
    it {should be_a_quantity_close_to Q[4.167e-08,"kg"] }
  end
  describe Q[1,"drop"] do
    it {should be_a_quantity_close_to Q[5e-08,"m^3"] }
  end
  describe Q[1,"bloodunit"] do
    it {should be_a_quantity_close_to Q[0.00045,"m^3"] }
  end
  describe Q[1,"frenchcathetersize"] do
    it {should be_a_quantity_close_to Q[0.00033333333,"m"] }
  end
  describe Q[1,"hectare"] do
    it {should be_a_quantity_close_to Q[10000,"m^2"] }
  end
  describe Q[1,"megohm"] do
    it {should be_a_quantity_close_to Q[1000000,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"kilohm"] do
    it {should be_a_quantity_close_to Q[1000,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"microhm"] do
    it {should be_a_quantity_close_to Q[1e-06,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"megalerg"] do
    it {should be_a_quantity_close_to Q[0.1,"m^2 kg s^-2"] }
  end
  describe Q[1,"unitedstatesdollar"] do
    it {should be_a_quantity_close_to Q[1,"US$"] }
  end
  describe Q[1,"$"] do
    it {should be_a_quantity_close_to Q[1,"US$"] }
  end
  describe Q[1,"USpennyweight"] do
    it {should be_a_quantity_close_to Q[0.0025,"kg"] }
  end
  describe Q[1,"USnickelweight"] do
    it {should be_a_quantity_close_to Q[0.005,"kg"] }
  end
  describe Q[1,"USdimeweight"] do
    it {should be_a_quantity_close_to Q[0.0022679619,"kg"] }
  end
  describe Q[1,"USquarterweight"] do
    it {should be_a_quantity_close_to Q[0.0056699046,"kg"] }
  end
  describe Q[1,"UShalfdollarweight"] do
    it {should be_a_quantity_close_to Q[0.011339809,"kg"] }
  end
  describe Q[1,"USdollarmass"] do
    it {should be_a_quantity_close_to Q[0.0081,"kg"] }
  end
  describe Q[1,"cord"] do
    it {should be_a_quantity_close_to Q[3.6245564,"m^3"] }
  end
  describe Q[1,"facecord"] do
    it {should be_a_quantity_close_to Q[1.8122782,"m^3"] }
  end
  describe Q[1,"cordfoot"] do
    it {should be_a_quantity_close_to Q[0.45306955,"m^3"] }
  end
  describe Q[1,"cordfeet"] do
    it {should be_a_quantity_close_to Q[0.45306955,"m^3"] }
  end
  describe Q[1,"housecord"] do
    it {should be_a_quantity_close_to Q[1.2081855,"m^3"] }
  end
  describe Q[1,"boardfoot"] do
    it {should be_a_quantity_close_to Q[0.0023597372,"m^3"] }
  end
  describe Q[1,"boardfeet"] do
    it {should be_a_quantity_close_to Q[0.0023597372,"m^3"] }
  end
  describe Q[1,"fbm"] do
    it {should be_a_quantity_close_to Q[0.0023597372,"m^3"] }
  end
  describe Q[1,"stack"] do
    it {should be_a_quantity_close_to Q[3.0582194,"m^3"] }
  end
  describe Q[1,"rick"] do
    it {should be_a_quantity_close_to Q[1.2081855,"m^3"] }
  end
  describe Q[1,"stere"] do
    it {should be_a_quantity_close_to Q[1,"m^3"] }
  end
  describe Q[1,"timberfoot"] do
    it {should be_a_quantity_close_to Q[0.028316847,"m^3"] }
  end
  describe Q[1,"standard"] do
    it {should be_a_quantity_close_to Q[4.6722797,"m^3"] }
  end
  describe Q[1,"hoppusfoot"] do
    it {should be_a_quantity_close_to Q[0.036054129,"m^3"] }
  end
  describe Q[1,"hoppusboardfoot"] do
    it {should be_a_quantity_close_to Q[0.0030045107,"m^3"] }
  end
  describe Q[1,"hoppuston"] do
    it {should be_a_quantity_close_to Q[1.8027064,"m^3"] }
  end
  describe Q[1,"deal"] do
    it {should be_a_quantity_close_to Q[0.064892773,"m^3"] }
  end
  describe Q[1,"wholedeal"] do
    it {should be_a_quantity_close_to Q[0.032446387,"m^3"] }
  end
  describe Q[1,"splitdeal"] do
    it {should be_a_quantity_close_to Q[0.016223193,"m^3"] }
  end
  describe Q[1,"FLUID_FLOW"] do
    it {should be_a_quantity_close_to Q[1,"m^3 s^-1"] }
  end
  describe Q[1,"cumec"] do
    it {should be_a_quantity_close_to Q[1,"m^3 s^-1"] }
  end
  describe Q[1,"cusec"] do
    it {should be_a_quantity_close_to Q[0.028316847,"m^3 s^-1"] }
  end
  describe Q[1,"gph"] do
    it {should be_a_quantity_close_to Q[1.0515033e-06,"m^3 s^-1"] }
  end
  describe Q[1,"gpm"] do
    it {should be_a_quantity_close_to Q[6.3090196e-05,"m^3 s^-1"] }
  end
  describe Q[1,"mgd"] do
    it {should be_a_quantity_close_to Q[0.043812636,"m^3 s^-1"] }
  end
  describe Q[1,"cfs"] do
    it {should be_a_quantity_close_to Q[0.028316847,"m^3 s^-1"] }
  end
  describe Q[1,"cfh"] do
    it {should be_a_quantity_close_to Q[7.8657907e-06,"m^3 s^-1"] }
  end
  describe Q[1,"cfm"] do
    it {should be_a_quantity_close_to Q[0.00047194744,"m^3 s^-1"] }
  end
  describe Q[1,"lpm"] do
    it {should be_a_quantity_close_to Q[1.6666667e-05,"m^3 s^-1"] }
  end
  describe Q[1,"lfm"] do
    it {should be_a_quantity_close_to Q[0.00508,"m s^-1"] }
  end
  describe Q[1,"pru"] do
    it {should be_a_quantity_close_to Q[7.9993432e+09,"m^-4 kg s^-1"] }
  end
  describe Q[1,"minersinchAZ"] do
    it {should be_a_quantity_close_to Q[0.00070792116,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchCA"] do
    it {should be_a_quantity_close_to Q[0.00070792116,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchMT"] do
    it {should be_a_quantity_close_to Q[0.00070792116,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchNV"] do
    it {should be_a_quantity_close_to Q[0.00070792116,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchOR"] do
    it {should be_a_quantity_close_to Q[0.00070792116,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchID"] do
    it {should be_a_quantity_close_to Q[0.00056633693,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchKS"] do
    it {should be_a_quantity_close_to Q[0.00056633693,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchNE"] do
    it {should be_a_quantity_close_to Q[0.00056633693,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchNM"] do
    it {should be_a_quantity_close_to Q[0.00056633693,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchND"] do
    it {should be_a_quantity_close_to Q[0.00056633693,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchSD"] do
    it {should be_a_quantity_close_to Q[0.00056633693,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchUT"] do
    it {should be_a_quantity_close_to Q[0.00056633693,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchCO"] do
    it {should be_a_quantity_close_to Q[0.00073741788,"m^3 s^-1"] }
  end
  describe Q[1,"minersinchBC"] do
    it {should be_a_quantity_close_to Q[0.0007928717,"m^3 s^-1"] }
  end
  describe Q[1,"sverdrup"] do
    it {should be_a_quantity_close_to Q[1000000,"m^3 s^-1"] }
  end
  describe Q[1,"GAS_FLOW"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3"] }
  end
  describe Q[1,"sccm"] do
    it {should be_a_quantity_close_to Q[0.00168875,"kg m^2 s^-3"] }
  end
  describe Q[1,"sccs"] do
    it {should be_a_quantity_close_to Q[0.101325,"kg m^2 s^-3"] }
  end
  describe Q[1,"scfh"] do
    it {should be_a_quantity_close_to Q[0.79700124,"kg m^2 s^-3"] }
  end
  describe Q[1,"scfm"] do
    it {should be_a_quantity_close_to Q[47.820075,"kg m^2 s^-3"] }
  end
  describe Q[1,"slpm"] do
    it {should be_a_quantity_close_to Q[1.68875,"kg m^2 s^-3"] }
  end
  describe Q[1,"slph"] do
    it {should be_a_quantity_close_to Q[0.028145833,"kg m^2 s^-3"] }
  end
  describe Q[1,"lusec"] do
    it {should be_a_quantity_close_to Q[0.00013332239,"m^2 kg s^-3"] }
  end
  describe Q[1,"g00"] do
    it {should be_a_quantity_close_to Q[-1] }
  end
  describe Q[1,"g000"] do
    it {should be_a_quantity_close_to Q[-2] }
  end
  describe Q[1,"g0000"] do
    it {should be_a_quantity_close_to Q[-3] }
  end
  describe Q[1,"g00000"] do
    it {should be_a_quantity_close_to Q[-4] }
  end
  describe Q[1,"g000000"] do
    it {should be_a_quantity_close_to Q[-5] }
  end
  describe Q[1,"g0000000"] do
    it {should be_a_quantity_close_to Q[-6] }
  end
  describe Q[1,"dmtxxcoarse"] do
    it {should be_a_quantity_close_to Q[0.00012,"m"] }
  end
  describe Q[1,"dmtsilver"] do
    it {should be_a_quantity_close_to Q[0.00012,"m"] }
  end
  describe Q[1,"dmtxx"] do
    it {should be_a_quantity_close_to Q[0.00012,"m"] }
  end
  describe Q[1,"dmtxcoarse"] do
    it {should be_a_quantity_close_to Q[6e-05,"m"] }
  end
  describe Q[1,"dmtx"] do
    it {should be_a_quantity_close_to Q[6e-05,"m"] }
  end
  describe Q[1,"dmtblack"] do
    it {should be_a_quantity_close_to Q[6e-05,"m"] }
  end
  describe Q[1,"dmtcoarse"] do
    it {should be_a_quantity_close_to Q[4.5e-05,"m"] }
  end
  describe Q[1,"dmtc"] do
    it {should be_a_quantity_close_to Q[4.5e-05,"m"] }
  end
  describe Q[1,"dmtblue"] do
    it {should be_a_quantity_close_to Q[4.5e-05,"m"] }
  end
  describe Q[1,"dmtfine"] do
    it {should be_a_quantity_close_to Q[2.5e-05,"m"] }
  end
  describe Q[1,"dmtred"] do
    it {should be_a_quantity_close_to Q[2.5e-05,"m"] }
  end
  describe Q[1,"dmtf"] do
    it {should be_a_quantity_close_to Q[2.5e-05,"m"] }
  end
  describe Q[1,"dmtefine"] do
    it {should be_a_quantity_close_to Q[9e-06,"m"] }
  end
  describe Q[1,"dmte"] do
    it {should be_a_quantity_close_to Q[9e-06,"m"] }
  end
  describe Q[1,"dmtgreen"] do
    it {should be_a_quantity_close_to Q[9e-06,"m"] }
  end
  describe Q[1,"dmtceramic"] do
    it {should be_a_quantity_close_to Q[7e-06,"m"] }
  end
  describe Q[1,"dmtcer"] do
    it {should be_a_quantity_close_to Q[7e-06,"m"] }
  end
  describe Q[1,"dmtwhite"] do
    it {should be_a_quantity_close_to Q[7e-06,"m"] }
  end
  describe Q[1,"dmteefine"] do
    it {should be_a_quantity_close_to Q[3e-06,"m"] }
  end
  describe Q[1,"dmttan"] do
    it {should be_a_quantity_close_to Q[3e-06,"m"] }
  end
  describe Q[1,"dmtee"] do
    it {should be_a_quantity_close_to Q[3e-06,"m"] }
  end
  describe Q[1,"hardtranslucentarkansas"] do
    it {should be_a_quantity_close_to Q[6e-06,"m"] }
  end
  describe Q[1,"softarkansas"] do
    it {should be_a_quantity_close_to Q[2.2e-05,"m"] }
  end
  describe Q[1,"extrafineindia"] do
    it {should be_a_quantity_close_to Q[2.2e-05,"m"] }
  end
  describe Q[1,"fineindia"] do
    it {should be_a_quantity_close_to Q[3.5e-05,"m"] }
  end
  describe Q[1,"mediumindia"] do
    it {should be_a_quantity_close_to Q[5.35e-05,"m"] }
  end
  describe Q[1,"coarseindia"] do
    it {should be_a_quantity_close_to Q[9.7e-05,"m"] }
  end
  describe Q[1,"finecrystolon"] do
    it {should be_a_quantity_close_to Q[4.5e-05,"m"] }
  end
  describe Q[1,"mediumcrystalon"] do
    it {should be_a_quantity_close_to Q[7.8e-05,"m"] }
  end
  describe Q[1,"coarsecrystalon"] do
    it {should be_a_quantity_close_to Q[0.000127,"m"] }
  end
  describe Q[1,"hardblackarkansas"] do
    it {should be_a_quantity_close_to Q[6e-06,"m"] }
  end
  describe Q[1,"hardwhitearkansas"] do
    it {should be_a_quantity_close_to Q[1.1e-05,"m"] }
  end
  describe Q[1,"washita"] do
    it {should be_a_quantity_close_to Q[3.5e-05,"m"] }
  end
  describe Q[1,"sizeAring"] do
    it {should be_a_quantity_close_to Q[0.0375,"m"] }
  end
  describe Q[1,"sizeBring"] do
    it {should be_a_quantity_close_to Q[0.03875,"m"] }
  end
  describe Q[1,"sizeCring"] do
    it {should be_a_quantity_close_to Q[0.04,"m"] }
  end
  describe Q[1,"sizeDring"] do
    it {should be_a_quantity_close_to Q[0.04125,"m"] }
  end
  describe Q[1,"sizeEring"] do
    it {should be_a_quantity_close_to Q[0.0425,"m"] }
  end
  describe Q[1,"sizeFring"] do
    it {should be_a_quantity_close_to Q[0.04375,"m"] }
  end
  describe Q[1,"sizeGring"] do
    it {should be_a_quantity_close_to Q[0.045,"m"] }
  end
  describe Q[1,"sizeHring"] do
    it {should be_a_quantity_close_to Q[0.04625,"m"] }
  end
  describe Q[1,"sizeIring"] do
    it {should be_a_quantity_close_to Q[0.0475,"m"] }
  end
  describe Q[1,"sizeJring"] do
    it {should be_a_quantity_close_to Q[0.04875,"m"] }
  end
  describe Q[1,"sizeKring"] do
    it {should be_a_quantity_close_to Q[0.05,"m"] }
  end
  describe Q[1,"sizeLring"] do
    it {should be_a_quantity_close_to Q[0.05125,"m"] }
  end
  describe Q[1,"sizeMring"] do
    it {should be_a_quantity_close_to Q[0.0525,"m"] }
  end
  describe Q[1,"sizeNring"] do
    it {should be_a_quantity_close_to Q[0.05375,"m"] }
  end
  describe Q[1,"sizeOring"] do
    it {should be_a_quantity_close_to Q[0.055,"m"] }
  end
  describe Q[1,"sizePring"] do
    it {should be_a_quantity_close_to Q[0.05625,"m"] }
  end
  describe Q[1,"sizeQring"] do
    it {should be_a_quantity_close_to Q[0.0575,"m"] }
  end
  describe Q[1,"sizeRring"] do
    it {should be_a_quantity_close_to Q[0.05875,"m"] }
  end
  describe Q[1,"sizeSring"] do
    it {should be_a_quantity_close_to Q[0.06,"m"] }
  end
  describe Q[1,"sizeTring"] do
    it {should be_a_quantity_close_to Q[0.06125,"m"] }
  end
  describe Q[1,"sizeUring"] do
    it {should be_a_quantity_close_to Q[0.0625,"m"] }
  end
  describe Q[1,"sizeVring"] do
    it {should be_a_quantity_close_to Q[0.06375,"m"] }
  end
  describe Q[1,"sizeWring"] do
    it {should be_a_quantity_close_to Q[0.065,"m"] }
  end
  describe Q[1,"sizeXring"] do
    it {should be_a_quantity_close_to Q[0.06625,"m"] }
  end
  describe Q[1,"sizeYring"] do
    it {should be_a_quantity_close_to Q[0.0675,"m"] }
  end
  describe Q[1,"sizeZring"] do
    it {should be_a_quantity_close_to Q[0.06875,"m"] }
  end
  describe Q[1,"mph"] do
    it {should be_a_quantity_close_to Q[0.44704,"m s^-1"] }
  end
  describe Q[1,"mpg"] do
    it {should be_a_quantity_close_to Q[425143.71,"m^-2"] }
  end
  describe Q[1,"kph"] do
    it {should be_a_quantity_close_to Q[0.27777778,"m s^-1"] }
  end
  describe Q[1,"fL"] do
    it {should be_a_quantity_close_to Q[3.4262591,"cd m^-2"] }
  end
  describe Q[1,"fpm"] do
    it {should be_a_quantity_close_to Q[0.00508,"m s^-1"] }
  end
  describe Q[1,"fps"] do
    it {should be_a_quantity_close_to Q[0.3048,"m s^-1"] }
  end
  describe Q[1,"rpm"] do
    it {should be_a_quantity_close_to Q[0.10471976,"s^-1"] }
  end
  describe Q[1,"rps"] do
    it {should be_a_quantity_close_to Q[6.2831853,"s^-1"] }
  end
  describe Q[1,"mi"] do
    it {should be_a_quantity_close_to Q[1609.344,"m"] }
  end
  describe Q[1,"smi"] do
    it {should be_a_quantity_close_to Q[1609.344,"m"] }
  end
  describe Q[1,"nmi"] do
    it {should be_a_quantity_close_to Q[1852,"m"] }
  end
  describe Q[1,"mbh"] do
    it {should be_a_quantity_close_to Q[293.07107,"kg m^2 s^-3"] }
  end
  describe Q[1,"mcm"] do
    it {should be_a_quantity_close_to Q[5.0670748e-07,"m^2"] }
  end
  describe Q[1,"ipy"] do
    it {should be_a_quantity_close_to Q[8.0489462e-10,"m s^-1"] }
  end
  describe Q[1,"ccf"] do
    it {should be_a_quantity_close_to Q[2.8316847,"m^3"] }
  end
  describe Q[1,"Mcf"] do
    it {should be_a_quantity_close_to Q[28.316847,"m^3"] }
  end
  describe Q[1,"kp"] do
    it {should be_a_quantity_close_to Q[9.80665,"kg m s^-2"] }
  end
  describe Q[1,"kpm"] do
    it {should be_a_quantity_close_to Q[9.80665,"kg m^2 s^-2"] }
  end
  describe Q[1,"Wh"] do
    it {should be_a_quantity_close_to Q[3600,"kg m^2 s^-2"] }
  end
  describe Q[1,"hph"] do
    it {should be_a_quantity_close_to Q[2684519.5,"m^2 kg s^-2"] }
  end
  describe Q[1,"plf"] do
    it {should be_a_quantity_close_to Q[1.4881639,"kg m^-1"] }
  end
  describe Q[1,"pa"] do
    it {should be_a_quantity_close_to Q[1,"kg m^-1 s^-2"] }
  end
  describe Q[1,"ev"] do
    it {should be_a_quantity_close_to Q[1.6021766e-19,"s^-2 kg m^2"] }
  end
  describe Q[1,"hg"] do
    it {should be_a_quantity_close_to Q[133322.39,"kg m^-2 s^-2"] }
  end
  describe Q[1,"oe"] do
    it {should be_a_quantity_close_to Q[79.577472,"A m^-1"] }
  end
  describe Q[1,"mh"] do
    it {should be_a_quantity_close_to Q[0.001,"kg m^2 s^-2 A^-2"] }
  end
  describe Q[1,"rd"] do
    it {should be_a_quantity_close_to Q[5.0292,"m"] }
  end
  describe Q[1,"pf"] do
    it {should be_a_quantity_close_to Q[1e-12,"A^2 s^4 kg^-1 m^-2"] }
  end
  describe Q[1,"gr"] do
    it {should be_a_quantity_close_to Q[6.479891e-05,"kg"] }
  end
  describe Q[1,"nt"] do
    it {should be_a_quantity_close_to Q[1,"kg m s^-2"] }
  end
  describe Q[1,"hz"] do
    it {should be_a_quantity_close_to Q[1,"s^-1"] }
  end
  describe Q[1,"hd"] do
    it {should be_a_quantity_close_to Q[0.23848094,"m^3"] }
  end
  describe Q[1,"dry"] do
    it {should be_a_quantity_close_to Q[1.1636472] }
  end
  describe Q[1,"nmile"] do
    it {should be_a_quantity_close_to Q[1852,"m"] }
  end
  describe Q[1,"beV"] do
    it {should be_a_quantity_close_to Q[1.6021766e-10,"s^-2 kg m^2"] }
  end
  describe Q[1,"bev"] do
    it {should be_a_quantity_close_to Q[1.6021766e-10,"s^-2 kg m^2"] }
  end
  describe Q[1,"coul"] do
    it {should be_a_quantity_close_to Q[1,"A s"] }
  end
  describe Q[1,"becquerel"] do
    it {should be_a_quantity_close_to Q[1,"s^-1"] }
  end
  describe Q[1,"Bq"] do
    it {should be_a_quantity_close_to Q[1,"s^-1"] }
  end
  describe Q[1,"curie"] do
    it {should be_a_quantity_close_to Q[3.7e+10,"s^-1"] }
  end
  describe Q[1,"Ci"] do
    it {should be_a_quantity_close_to Q[3.7e+10,"s^-1"] }
  end
  describe Q[1,"rutherford"] do
    it {should be_a_quantity_close_to Q[1000000,"s^-1"] }
  end
  describe Q[1,"RADIATION_DOSE"] do
    it {should be_a_quantity_close_to Q[1,"m^2 s^-2"] }
  end
  describe Q[1,"gray"] do
    it {should be_a_quantity_close_to Q[1,"m^2 s^-2"] }
  end
  describe Q[1,"Gy"] do
    it {should be_a_quantity_close_to Q[1,"m^2 s^-2"] }
  end
  describe Q[1,"rad"] do
    it {should be_a_quantity_close_to Q[0.01,"m^2 s^-2"] }
  end
  describe Q[1,"rep"] do
    it {should be_a_quantity_close_to Q[0.00838,"m^2 s^-2"] }
  end
  describe Q[1,"sievert"] do
    it {should be_a_quantity_close_to Q[1,"m^2 s^-2"] }
  end
  describe Q[1,"Sv"] do
    it {should be_a_quantity_close_to Q[1,"m^2 s^-2"] }
  end
  describe Q[1,"rem"] do
    it {should be_a_quantity_close_to Q[0.01,"m^2 s^-2"] }
  end
  describe Q[1,"roentgen"] do
    it {should be_a_quantity_close_to Q[0.000258,"A s kg^-1"] }
  end
  describe Q[1,"rontgen"] do
    it {should be_a_quantity_close_to Q[0.000258,"A s kg^-1"] }
  end
  describe Q[1,"sievertunit"] do
    it {should be_a_quantity_close_to Q[0.00216204,"A s kg^-1"] }
  end
  describe Q[1,"eman"] do
    it {should be_a_quantity_close_to Q[3700,"s^-1 m^-3"] }
  end
  describe Q[1,"mache"] do
    it {should be_a_quantity_close_to Q[13690,"s^-1 m^-3"] }
  end
  describe Q[1,"actinium"] do
    it {should be_a_quantity_close_to Q[227.0278] }
  end
  describe Q[1,"aluminum"] do
    it {should be_a_quantity_close_to Q[26.981539] }
  end
  describe Q[1,"americium"] do
    it {should be_a_quantity_close_to Q[243.0614] }
  end
  describe Q[1,"antimony"] do
    it {should be_a_quantity_close_to Q[121.76] }
  end
  describe Q[1,"argon"] do
    it {should be_a_quantity_close_to Q[39.948] }
  end
  describe Q[1,"arsenic"] do
    it {should be_a_quantity_close_to Q[74.92159] }
  end
  describe Q[1,"astatine"] do
    it {should be_a_quantity_close_to Q[209.9871] }
  end
  describe Q[1,"barium"] do
    it {should be_a_quantity_close_to Q[137.327] }
  end
  describe Q[1,"berkelium"] do
    it {should be_a_quantity_close_to Q[247.0703] }
  end
  describe Q[1,"beryllium"] do
    it {should be_a_quantity_close_to Q[9.012182] }
  end
  describe Q[1,"bismuth"] do
    it {should be_a_quantity_close_to Q[208.98037] }
  end
  describe Q[1,"boron"] do
    it {should be_a_quantity_close_to Q[10.811] }
  end
  describe Q[1,"bromine"] do
    it {should be_a_quantity_close_to Q[79.904] }
  end
  describe Q[1,"cadmium"] do
    it {should be_a_quantity_close_to Q[112.411] }
  end
  describe Q[1,"calcium"] do
    it {should be_a_quantity_close_to Q[40.078] }
  end
  describe Q[1,"californium"] do
    it {should be_a_quantity_close_to Q[251.0796] }
  end
  describe Q[1,"carbon"] do
    it {should be_a_quantity_close_to Q[12.011] }
  end
  describe Q[1,"cerium"] do
    it {should be_a_quantity_close_to Q[140.115] }
  end
  describe Q[1,"cesium"] do
    it {should be_a_quantity_close_to Q[132.90543] }
  end
  describe Q[1,"chlorine"] do
    it {should be_a_quantity_close_to Q[35.4527] }
  end
  describe Q[1,"chromium"] do
    it {should be_a_quantity_close_to Q[51.9961] }
  end
  describe Q[1,"cobalt"] do
    it {should be_a_quantity_close_to Q[58.9332] }
  end
  describe Q[1,"copper"] do
    it {should be_a_quantity_close_to Q[63.546] }
  end
  describe Q[1,"curium"] do
    it {should be_a_quantity_close_to Q[247.0703] }
  end
  describe Q[1,"dysprosium"] do
    it {should be_a_quantity_close_to Q[162.5] }
  end
  describe Q[1,"einsteinium"] do
    it {should be_a_quantity_close_to Q[252.083] }
  end
  describe Q[1,"erbium"] do
    it {should be_a_quantity_close_to Q[167.26] }
  end
  describe Q[1,"europium"] do
    it {should be_a_quantity_close_to Q[151.965] }
  end
  describe Q[1,"fermium"] do
    it {should be_a_quantity_close_to Q[257.0951] }
  end
  describe Q[1,"fluorine"] do
    it {should be_a_quantity_close_to Q[18.998403] }
  end
  describe Q[1,"francium"] do
    it {should be_a_quantity_close_to Q[223.0197] }
  end
  describe Q[1,"gadolinium"] do
    it {should be_a_quantity_close_to Q[157.25] }
  end
  describe Q[1,"gallium"] do
    it {should be_a_quantity_close_to Q[69.723] }
  end
  describe Q[1,"germanium"] do
    it {should be_a_quantity_close_to Q[72.61] }
  end
  describe Q[1,"gold"] do
    it {should be_a_quantity_close_to Q[196.96654] }
  end
  describe Q[1,"hafnium"] do
    it {should be_a_quantity_close_to Q[178.49] }
  end
  describe Q[1,"helium"] do
    it {should be_a_quantity_close_to Q[4.002602] }
  end
  describe Q[1,"holmium"] do
    it {should be_a_quantity_close_to Q[164.93032] }
  end
  describe Q[1,"hydrogen"] do
    it {should be_a_quantity_close_to Q[1.00794] }
  end
  describe Q[1,"indium"] do
    it {should be_a_quantity_close_to Q[114.818] }
  end
  describe Q[1,"iodine"] do
    it {should be_a_quantity_close_to Q[126.90447] }
  end
  describe Q[1,"iridium"] do
    it {should be_a_quantity_close_to Q[192.217] }
  end
  describe Q[1,"iron"] do
    it {should be_a_quantity_close_to Q[55.845] }
  end
  describe Q[1,"krypton"] do
    it {should be_a_quantity_close_to Q[83.8] }
  end
  describe Q[1,"lanthanum"] do
    it {should be_a_quantity_close_to Q[138.9055] }
  end
  describe Q[1,"lawrencium"] do
    it {should be_a_quantity_close_to Q[262.11] }
  end
  describe Q[1,"lead"] do
    it {should be_a_quantity_close_to Q[207.2] }
  end
  describe Q[1,"lithium"] do
    it {should be_a_quantity_close_to Q[6.941] }
  end
  describe Q[1,"lutetium"] do
    it {should be_a_quantity_close_to Q[174.967] }
  end
  describe Q[1,"magnesium"] do
    it {should be_a_quantity_close_to Q[24.305] }
  end
  describe Q[1,"manganese"] do
    it {should be_a_quantity_close_to Q[54.93805] }
  end
  describe Q[1,"mendelevium"] do
    it {should be_a_quantity_close_to Q[258.1] }
  end
  describe Q[1,"mercury"] do
    it {should be_a_quantity_close_to Q[200.59] }
  end
  describe Q[1,"molybdenum"] do
    it {should be_a_quantity_close_to Q[95.94] }
  end
  describe Q[1,"neodymium"] do
    it {should be_a_quantity_close_to Q[144.24] }
  end
  describe Q[1,"neon"] do
    it {should be_a_quantity_close_to Q[20.1797] }
  end
  describe Q[1,"neptunium"] do
    it {should be_a_quantity_close_to Q[237.0482] }
  end
  describe Q[1,"nickel"] do
    it {should be_a_quantity_close_to Q[58.6934] }
  end
  describe Q[1,"niobium"] do
    it {should be_a_quantity_close_to Q[92.90638] }
  end
  describe Q[1,"nitrogen"] do
    it {should be_a_quantity_close_to Q[14.00674] }
  end
  describe Q[1,"nobelium"] do
    it {should be_a_quantity_close_to Q[259.1009] }
  end
  describe Q[1,"osmium"] do
    it {should be_a_quantity_close_to Q[190.23] }
  end
  describe Q[1,"oxygen"] do
    it {should be_a_quantity_close_to Q[15.9994] }
  end
  describe Q[1,"palladium"] do
    it {should be_a_quantity_close_to Q[106.42] }
  end
  describe Q[1,"phosphorus"] do
    it {should be_a_quantity_close_to Q[30.973762] }
  end
  describe Q[1,"platinum"] do
    it {should be_a_quantity_close_to Q[195.08] }
  end
  describe Q[1,"plutonium"] do
    it {should be_a_quantity_close_to Q[244.0642] }
  end
  describe Q[1,"polonium"] do
    it {should be_a_quantity_close_to Q[208.9824] }
  end
  describe Q[1,"potassium"] do
    it {should be_a_quantity_close_to Q[39.0983] }
  end
  describe Q[1,"praseodymium"] do
    it {should be_a_quantity_close_to Q[140.90765] }
  end
  describe Q[1,"promethium"] do
    it {should be_a_quantity_close_to Q[144.9127] }
  end
  describe Q[1,"protactinium"] do
    it {should be_a_quantity_close_to Q[231.03588] }
  end
  describe Q[1,"radium"] do
    it {should be_a_quantity_close_to Q[226.0254] }
  end
  describe Q[1,"radon"] do
    it {should be_a_quantity_close_to Q[222.0176] }
  end
  describe Q[1,"rhenium"] do
    it {should be_a_quantity_close_to Q[186.207] }
  end
  describe Q[1,"rhodium"] do
    it {should be_a_quantity_close_to Q[102.9055] }
  end
  describe Q[1,"rubidium"] do
    it {should be_a_quantity_close_to Q[85.4678] }
  end
  describe Q[1,"ruthenium"] do
    it {should be_a_quantity_close_to Q[101.07] }
  end
  describe Q[1,"samarium"] do
    it {should be_a_quantity_close_to Q[150.36] }
  end
  describe Q[1,"scandium"] do
    it {should be_a_quantity_close_to Q[44.95591] }
  end
  describe Q[1,"selenium"] do
    it {should be_a_quantity_close_to Q[78.96] }
  end
  describe Q[1,"silicon"] do
    it {should be_a_quantity_close_to Q[28.0855] }
  end
  describe Q[1,"silver"] do
    it {should be_a_quantity_close_to Q[107.8682] }
  end
  describe Q[1,"sodium"] do
    it {should be_a_quantity_close_to Q[22.989768] }
  end
  describe Q[1,"strontium"] do
    it {should be_a_quantity_close_to Q[87.62] }
  end
  describe Q[1,"sulfur"] do
    it {should be_a_quantity_close_to Q[32.066] }
  end
  describe Q[1,"tantalum"] do
    it {should be_a_quantity_close_to Q[180.9479] }
  end
  describe Q[1,"technetium"] do
    it {should be_a_quantity_close_to Q[97.9072] }
  end
  describe Q[1,"tellurium"] do
    it {should be_a_quantity_close_to Q[127.6] }
  end
  describe Q[1,"terbium"] do
    it {should be_a_quantity_close_to Q[158.92534] }
  end
  describe Q[1,"thallium"] do
    it {should be_a_quantity_close_to Q[204.3833] }
  end
  describe Q[1,"thorium"] do
    it {should be_a_quantity_close_to Q[232.0381] }
  end
  describe Q[1,"thullium"] do
    it {should be_a_quantity_close_to Q[168.93421] }
  end
  describe Q[1,"tin"] do
    it {should be_a_quantity_close_to Q[118.71] }
  end
  describe Q[1,"titanium"] do
    it {should be_a_quantity_close_to Q[47.867] }
  end
  describe Q[1,"tungsten"] do
    it {should be_a_quantity_close_to Q[183.84] }
  end
  describe Q[1,"uranium"] do
    it {should be_a_quantity_close_to Q[238.0289] }
  end
  describe Q[1,"vanadium"] do
    it {should be_a_quantity_close_to Q[50.9415] }
  end
  describe Q[1,"xenon"] do
    it {should be_a_quantity_close_to Q[131.29] }
  end
  describe Q[1,"ytterbium"] do
    it {should be_a_quantity_close_to Q[173.04] }
  end
  describe Q[1,"yttrium"] do
    it {should be_a_quantity_close_to Q[88.90585] }
  end
  describe Q[1,"zinc"] do
    it {should be_a_quantity_close_to Q[65.39] }
  end
  describe Q[1,"zirconium"] do
    it {should be_a_quantity_close_to Q[91.224] }
  end
  describe Q[1,"air"] do
    it {should be_a_quantity_close_to Q[28.967] }
  end
  describe Q[1,"people"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"person"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"death"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"capita"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"percapita"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"wari_proportion"] do
    it {should be_a_quantity_close_to Q[0.1] }
  end
  describe Q[1,"wari"] do
    it {should be_a_quantity_close_to Q[0.1] }
  end
  describe Q[1,"bu_proportion"] do
    it {should be_a_quantity_close_to Q[0.01] }
  end
  describe Q[1,"rin_proportion"] do
    it {should be_a_quantity_close_to Q[0.001] }
  end
  describe Q[1,"mou_proportion"] do
    it {should be_a_quantity_close_to Q[0.0001] }
  end
  describe Q[1,"shaku"] do
    it {should be_a_quantity_close_to Q[0.3030303,"m"] }
  end
  describe Q[1,"mou"] do
    it {should be_a_quantity_close_to Q[3.030303e-05,"m"] }
  end
  describe Q[1,"rin"] do
    it {should be_a_quantity_close_to Q[0.0003030303,"m"] }
  end
  describe Q[1,"bu_distance"] do
    it {should be_a_quantity_close_to Q[0.003030303,"m"] }
  end
  describe Q[1,"sun"] do
    it {should be_a_quantity_close_to Q[0.03030303,"m"] }
  end
  describe Q[1,"jou_distance"] do
    it {should be_a_quantity_close_to Q[3.030303,"m"] }
  end
  describe Q[1,"jou"] do
    it {should be_a_quantity_close_to Q[3.030303,"m"] }
  end
  describe Q[1,"kanejakusun"] do
    it {should be_a_quantity_close_to Q[0.03030303,"m"] }
  end
  describe Q[1,"kanejaku"] do
    it {should be_a_quantity_close_to Q[0.3030303,"m"] }
  end
  describe Q[1,"kanejakujou"] do
    it {should be_a_quantity_close_to Q[3.030303,"m"] }
  end
  describe Q[1,"taichi"] do
    it {should be_a_quantity_close_to Q[0.3030303,"m"] }
  end
  describe Q[1,"taicun"] do
    it {should be_a_quantity_close_to Q[0.03030303,"m"] }
  end
  describe Q[1,"台尺"] do
    it {should be_a_quantity_close_to Q[0.3030303,"m"] }
  end
  describe Q[1,"台寸"] do
    it {should be_a_quantity_close_to Q[0.03030303,"m"] }
  end
  describe Q[1,"kujirajaku"] do
    it {should be_a_quantity_close_to Q[0.37878788,"m"] }
  end
  describe Q[1,"kujirajakusun"] do
    it {should be_a_quantity_close_to Q[0.037878788,"m"] }
  end
  describe Q[1,"kujirajakubu"] do
    it {should be_a_quantity_close_to Q[0.0037878788,"m"] }
  end
  describe Q[1,"kujirajakujou"] do
    it {should be_a_quantity_close_to Q[3.7878788,"m"] }
  end
  describe Q[1,"tan_distance"] do
    it {should be_a_quantity_close_to Q[11.363636,"m"] }
  end
  describe Q[1,"ken"] do
    it {should be_a_quantity_close_to Q[1.8181818,"m"] }
  end
  describe Q[1,"chou_distance"] do
    it {should be_a_quantity_close_to Q[109.09091,"m"] }
  end
  describe Q[1,"chou"] do
    it {should be_a_quantity_close_to Q[109.09091,"m"] }
  end
  describe Q[1,"ri"] do
    it {should be_a_quantity_close_to Q[3927.2727,"m"] }
  end
  describe Q[1,"gou_area"] do
    it {should be_a_quantity_close_to Q[0.33057851,"m^2"] }
  end
  describe Q[1,"tsubo"] do
    it {should be_a_quantity_close_to Q[3.3057851,"m^2"] }
  end
  describe Q[1,"se"] do
    it {should be_a_quantity_close_to Q[99.173554,"m^2"] }
  end
  describe Q[1,"tan_area"] do
    it {should be_a_quantity_close_to Q[991.73554,"m^2"] }
  end
  describe Q[1,"chou_area"] do
    it {should be_a_quantity_close_to Q[9917.3554,"m^2"] }
  end
  describe Q[1,"ping"] do
    it {should be_a_quantity_close_to Q[3.3057851,"m^2"] }
  end
  describe Q[1,"jia"] do
    it {should be_a_quantity_close_to Q[9699.1736,"m^2"] }
  end
  describe Q[1,"fen"] do
    it {should be_a_quantity_close_to Q[969.91736,"m^2"] }
  end
  describe Q[1,"fen_area"] do
    it {should be_a_quantity_close_to Q[969.91736,"m^2"] }
  end
  describe Q[1,"坪"] do
    it {should be_a_quantity_close_to Q[3.3057851,"m^2"] }
  end
  describe Q[1,"甲"] do
    it {should be_a_quantity_close_to Q[9699.1736,"m^2"] }
  end
  describe Q[1,"分"] do
    it {should be_a_quantity_close_to Q[969.91736,"m^2"] }
  end
  describe Q[1,"分地"] do
    it {should be_a_quantity_close_to Q[969.91736,"m^2"] }
  end
  describe Q[1,"edoma"] do
    it {should be_a_quantity_close_to Q[1.5445363,"m^2"] }
  end
  describe Q[1,"kyouma"] do
    it {should be_a_quantity_close_to Q[1.822314,"m^2"] }
  end
  describe Q[1,"chuukyouma"] do
    it {should be_a_quantity_close_to Q[1.6528926,"m^2"] }
  end
  describe Q[1,"jou_area"] do
    it {should be_a_quantity_close_to Q[1.5445363,"m^2"] }
  end
  describe Q[1,"tatami"] do
    it {should be_a_quantity_close_to Q[1.5445363,"m^2"] }
  end
  describe Q[1,"shaku_volume"] do
    it {should be_a_quantity_close_to Q[1.8039068e-05,"m^3"] }
  end
  describe Q[1,"gou_volume"] do
    it {should be_a_quantity_close_to Q[0.00018039068,"m^3"] }
  end
  describe Q[1,"gou"] do
    it {should be_a_quantity_close_to Q[0.00018039068,"m^3"] }
  end
  describe Q[1,"shou"] do
    it {should be_a_quantity_close_to Q[0.0018039068,"m^3"] }
  end
  describe Q[1,"to"] do
    it {should be_a_quantity_close_to Q[0.018039068,"m^3"] }
  end
  describe Q[1,"koku"] do
    it {should be_a_quantity_close_to Q[0.18039068,"m^3"] }
  end
  describe Q[1,"rin_weight"] do
    it {should be_a_quantity_close_to Q[3.75e-05,"kg"] }
  end
  describe Q[1,"bu_weight"] do
    it {should be_a_quantity_close_to Q[0.000375,"kg"] }
  end
  describe Q[1,"fun"] do
    it {should be_a_quantity_close_to Q[0.000375,"kg"] }
  end
  describe Q[1,"monme"] do
    it {should be_a_quantity_close_to Q[0.00375,"kg"] }
  end
  describe Q[1,"kin"] do
    it {should be_a_quantity_close_to Q[0.6,"kg"] }
  end
  describe Q[1,"kan"] do
    it {should be_a_quantity_close_to Q[3.75,"kg"] }
  end
  describe Q[1,"kwan"] do
    it {should be_a_quantity_close_to Q[3.75,"kg"] }
  end
  describe Q[1,"taijin"] do
    it {should be_a_quantity_close_to Q[0.6,"kg"] }
  end
  describe Q[1,"tailiang"] do
    it {should be_a_quantity_close_to Q[0.0375,"kg"] }
  end
  describe Q[1,"taiqian"] do
    it {should be_a_quantity_close_to Q[0.00375,"kg"] }
  end
  describe Q[1,"台斤"] do
    it {should be_a_quantity_close_to Q[0.6,"kg"] }
  end
  describe Q[1,"台兩"] do
    it {should be_a_quantity_close_to Q[0.0375,"kg"] }
  end
  describe Q[1,"台錢"] do
    it {should be_a_quantity_close_to Q[0.00375,"kg"] }
  end
  describe Q[1,"australiasquare"] do
    it {should be_a_quantity_close_to Q[9.290304,"m^2"] }
  end
  describe Q[1,"zentner"] do
    it {should be_a_quantity_close_to Q[50,"kg"] }
  end
  describe Q[1,"doppelzentner"] do
    it {should be_a_quantity_close_to Q[100,"kg"] }
  end
  describe Q[1,"pfund"] do
    it {should be_a_quantity_close_to Q[0.5,"kg"] }
  end
  describe Q[1,"dessiatine"] do
    it {should be_a_quantity_close_to Q[10925.398,"m^2"] }
  end
  describe Q[1,"dessjatine"] do
    it {should be_a_quantity_close_to Q[10925.398,"m^2"] }
  end
  describe Q[1,"funt"] do
    it {should be_a_quantity_close_to Q[0.40951718,"kg"] }
  end
  describe Q[1,"zolotnik"] do
    it {should be_a_quantity_close_to Q[0.004265804,"kg"] }
  end
  describe Q[1,"pood"] do
    it {should be_a_quantity_close_to Q[16.380687,"kg"] }
  end
  describe Q[1,"arshin"] do
    it {should be_a_quantity_close_to Q[0.7112,"m"] }
  end
  describe Q[1,"sazhen"] do
    it {should be_a_quantity_close_to Q[2.1336,"m"] }
  end
  describe Q[1,"verst"] do
    it {should be_a_quantity_close_to Q[1066.8,"m"] }
  end
  describe Q[1,"versta"] do
    it {should be_a_quantity_close_to Q[1066.8,"m"] }
  end
  describe Q[1,"borderverst"] do
    it {should be_a_quantity_close_to Q[2133.6,"m"] }
  end
  describe Q[1,"russianmile"] do
    it {should be_a_quantity_close_to Q[7467.6,"m"] }
  end
  describe Q[1,"frenchfoot"] do
    it {should be_a_quantity_close_to Q[0.32483938,"m"] }
  end
  describe Q[1,"pied"] do
    it {should be_a_quantity_close_to Q[0.32483938,"m"] }
  end
  describe Q[1,"frenchfeet"] do
    it {should be_a_quantity_close_to Q[0.32483938,"m"] }
  end
  describe Q[1,"frenchinch"] do
    it {should be_a_quantity_close_to Q[0.027069949,"m"] }
  end
  describe Q[1,"frenchthumb"] do
    it {should be_a_quantity_close_to Q[0.027069949,"m"] }
  end
  describe Q[1,"pouce"] do
    it {should be_a_quantity_close_to Q[0.027069949,"m"] }
  end
  describe Q[1,"frenchline"] do
    it {should be_a_quantity_close_to Q[0.0022558291,"m"] }
  end
  describe Q[1,"ligne"] do
    it {should be_a_quantity_close_to Q[0.0022558291,"m"] }
  end
  describe Q[1,"frenchpoint"] do
    it {should be_a_quantity_close_to Q[0.00018798576,"m"] }
  end
  describe Q[1,"toise"] do
    it {should be_a_quantity_close_to Q[1.9490363,"m"] }
  end
  describe Q[1,"arpent"] do
    it {should be_a_quantity_close_to Q[3418.8683,"m^2"] }
  end
  describe Q[1,"frenchgrain"] do
    it {should be_a_quantity_close_to Q[5.3114784e-05,"kg"] }
  end
  describe Q[1,"frenchpound"] do
    it {should be_a_quantity_close_to Q[0.48950585,"kg"] }
  end
  describe Q[1,"scotsinch"] do
    it {should be_a_quantity_close_to Q[0.025537129,"m"] }
  end
  describe Q[1,"scotslink"] do
    it {should be_a_quantity_close_to Q[0.22676971,"m"] }
  end
  describe Q[1,"scotsfoot"] do
    it {should be_a_quantity_close_to Q[0.30644555,"m"] }
  end
  describe Q[1,"scotsfeet"] do
    it {should be_a_quantity_close_to Q[0.30644555,"m"] }
  end
  describe Q[1,"scotsell"] do
    it {should be_a_quantity_close_to Q[0.94487378,"m"] }
  end
  describe Q[1,"scotsfall"] do
    it {should be_a_quantity_close_to Q[5.6692427,"m"] }
  end
  describe Q[1,"scotschain"] do
    it {should be_a_quantity_close_to Q[22.676971,"m"] }
  end
  describe Q[1,"scotsfurlong"] do
    it {should be_a_quantity_close_to Q[226.76971,"m"] }
  end
  describe Q[1,"scotsmile"] do
    it {should be_a_quantity_close_to Q[1814.1577,"m"] }
  end
  describe Q[1,"scotsrood"] do
    it {should be_a_quantity_close_to Q[1285.6125,"m^2"] }
  end
  describe Q[1,"scotsacre"] do
    it {should be_a_quantity_close_to Q[5142.4501,"m^2"] }
  end
  describe Q[1,"irishinch"] do
    it {should be_a_quantity_close_to Q[0.025399956,"m"] }
  end
  describe Q[1,"irishpalm"] do
    it {should be_a_quantity_close_to Q[0.076199867,"m"] }
  end
  describe Q[1,"irishspan"] do
    it {should be_a_quantity_close_to Q[0.2285996,"m"] }
  end
  describe Q[1,"irishfoot"] do
    it {should be_a_quantity_close_to Q[0.30479947,"m"] }
  end
  describe Q[1,"irishfeet"] do
    it {should be_a_quantity_close_to Q[0.30479947,"m"] }
  end
  describe Q[1,"irishcubit"] do
    it {should be_a_quantity_close_to Q[0.4571992,"m"] }
  end
  describe Q[1,"irishyard"] do
    it {should be_a_quantity_close_to Q[0.91439841,"m"] }
  end
  describe Q[1,"irishpace"] do
    it {should be_a_quantity_close_to Q[1.5239973,"m"] }
  end
  describe Q[1,"irishfathom"] do
    it {should be_a_quantity_close_to Q[1.8287968,"m"] }
  end
  describe Q[1,"irishpole"] do
    it {should be_a_quantity_close_to Q[6.4007889,"m"] }
  end
  describe Q[1,"irishperch"] do
    it {should be_a_quantity_close_to Q[6.4007889,"m"] }
  end
  describe Q[1,"irishchain"] do
    it {should be_a_quantity_close_to Q[25.603155,"m"] }
  end
  describe Q[1,"irishlink"] do
    it {should be_a_quantity_close_to Q[0.25603155,"m"] }
  end
  describe Q[1,"irishfurlong"] do
    it {should be_a_quantity_close_to Q[256.03155,"m"] }
  end
  describe Q[1,"irishmile"] do
    it {should be_a_quantity_close_to Q[2048.2524,"m"] }
  end
  describe Q[1,"irishrood"] do
    it {should be_a_quantity_close_to Q[1638.8039,"m^2"] }
  end
  describe Q[1,"irishacre"] do
    it {should be_a_quantity_close_to Q[6555.2157,"m^2"] }
  end
  describe Q[1,"winepint"] do
    it {should be_a_quantity_close_to Q[0.000473174,"m^3"] }
  end
  describe Q[1,"winequart"] do
    it {should be_a_quantity_close_to Q[0.00094634801,"m^3"] }
  end
  describe Q[1,"winegallon"] do
    it {should be_a_quantity_close_to Q[0.003785392,"m^3"] }
  end
  describe Q[1,"winerundlet"] do
    it {should be_a_quantity_close_to Q[0.068137057,"m^3"] }
  end
  describe Q[1,"winebarrel"] do
    it {should be_a_quantity_close_to Q[0.11923985,"m^3"] }
  end
  describe Q[1,"winetierce"] do
    it {should be_a_quantity_close_to Q[0.15898647,"m^3"] }
  end
  describe Q[1,"winehogshead"] do
    it {should be_a_quantity_close_to Q[0.2384797,"m^3"] }
  end
  describe Q[1,"winepuncheon"] do
    it {should be_a_quantity_close_to Q[0.31797293,"m^3"] }
  end
  describe Q[1,"winebutt"] do
    it {should be_a_quantity_close_to Q[0.4769594,"m^3"] }
  end
  describe Q[1,"winepipe"] do
    it {should be_a_quantity_close_to Q[0.4769594,"m^3"] }
  end
  describe Q[1,"winetun"] do
    it {should be_a_quantity_close_to Q[0.95391879,"m^3"] }
  end
  describe Q[1,"beerpint"] do
    it {should be_a_quantity_close_to Q[0.00057764099,"m^3"] }
  end
  describe Q[1,"beerquart"] do
    it {should be_a_quantity_close_to Q[0.001155282,"m^3"] }
  end
  describe Q[1,"beergallon"] do
    it {should be_a_quantity_close_to Q[0.0046211279,"m^3"] }
  end
  describe Q[1,"beerbarrel"] do
    it {should be_a_quantity_close_to Q[0.16636061,"m^3"] }
  end
  describe Q[1,"beerhogshead"] do
    it {should be_a_quantity_close_to Q[0.24954091,"m^3"] }
  end
  describe Q[1,"alepint"] do
    it {should be_a_quantity_close_to Q[0.00057764099,"m^3"] }
  end
  describe Q[1,"alequart"] do
    it {should be_a_quantity_close_to Q[0.001155282,"m^3"] }
  end
  describe Q[1,"alegallon"] do
    it {should be_a_quantity_close_to Q[0.0046211279,"m^3"] }
  end
  describe Q[1,"alebarrel"] do
    it {should be_a_quantity_close_to Q[0.15711835,"m^3"] }
  end
  describe Q[1,"alehogshead"] do
    it {should be_a_quantity_close_to Q[0.23567753,"m^3"] }
  end
  describe Q[1,"scotsgill"] do
    it {should be_a_quantity_close_to Q[0.00010590495,"m^3"] }
  end
  describe Q[1,"mutchkin"] do
    it {should be_a_quantity_close_to Q[0.00042361978,"m^3"] }
  end
  describe Q[1,"choppin"] do
    it {should be_a_quantity_close_to Q[0.00084723956,"m^3"] }
  end
  describe Q[1,"scotspint"] do
    it {should be_a_quantity_close_to Q[0.0016944791,"m^3"] }
  end
  describe Q[1,"scotsquart"] do
    it {should be_a_quantity_close_to Q[0.0033889583,"m^3"] }
  end
  describe Q[1,"scotsgallon"] do
    it {should be_a_quantity_close_to Q[0.013555833,"m^3"] }
  end
  describe Q[1,"scotsbarrel"] do
    it {should be_a_quantity_close_to Q[0.10844666,"m^3"] }
  end
  describe Q[1,"jug"] do
    it {should be_a_quantity_close_to Q[0.0016944791,"m^3"] }
  end
  describe Q[1,"scotswheatlippy"] do
    it {should be_a_quantity_close_to Q[0.0022504729,"m^3"] }
  end
  describe Q[1,"scotswheatlippies"] do
    it {should be_a_quantity_close_to Q[0.0022504729,"m^3"] }
  end
  describe Q[1,"scotswheatpeck"] do
    it {should be_a_quantity_close_to Q[0.0090018917,"m^3"] }
  end
  describe Q[1,"scotswheatfirlot"] do
    it {should be_a_quantity_close_to Q[0.036007567,"m^3"] }
  end
  describe Q[1,"scotswheatboll"] do
    it {should be_a_quantity_close_to Q[0.14403027,"m^3"] }
  end
  describe Q[1,"scotswheatchalder"] do
    it {should be_a_quantity_close_to Q[2.3044843,"m^3"] }
  end
  describe Q[1,"scotsoatlippy"] do
    it {should be_a_quantity_close_to Q[0.0032830492,"m^3"] }
  end
  describe Q[1,"scotsoatlippies"] do
    it {should be_a_quantity_close_to Q[0.0032830492,"m^3"] }
  end
  describe Q[1,"scotsoatpeck"] do
    it {should be_a_quantity_close_to Q[0.013132197,"m^3"] }
  end
  describe Q[1,"scotsoatfirlot"] do
    it {should be_a_quantity_close_to Q[0.052528787,"m^3"] }
  end
  describe Q[1,"scotsoatboll"] do
    it {should be_a_quantity_close_to Q[0.21011515,"m^3"] }
  end
  describe Q[1,"scotsoatchalder"] do
    it {should be_a_quantity_close_to Q[3.3618424,"m^3"] }
  end
  describe Q[1,"trondrop"] do
    it {should be_a_quantity_close_to Q[0.0019277676,"kg"] }
  end
  describe Q[1,"tronounce"] do
    it {should be_a_quantity_close_to Q[0.030844281,"kg"] }
  end
  describe Q[1,"tronpound"] do
    it {should be_a_quantity_close_to Q[0.61688562,"kg"] }
  end
  describe Q[1,"tronstone"] do
    it {should be_a_quantity_close_to Q[9.87017,"kg"] }
  end
  describe Q[1,"irishnoggin"] do
    it {should be_a_quantity_close_to Q[0.00011143145,"m^3"] }
  end
  describe Q[1,"irishpint"] do
    it {should be_a_quantity_close_to Q[0.00044572582,"m^3"] }
  end
  describe Q[1,"irishquart"] do
    it {should be_a_quantity_close_to Q[0.00089145163,"m^3"] }
  end
  describe Q[1,"irishpottle"] do
    it {should be_a_quantity_close_to Q[0.0017829033,"m^3"] }
  end
  describe Q[1,"irishgallon"] do
    it {should be_a_quantity_close_to Q[0.0035658065,"m^3"] }
  end
  describe Q[1,"irishrundlet"] do
    it {should be_a_quantity_close_to Q[0.064184517,"m^3"] }
  end
  describe Q[1,"irishbarrel"] do
    it {should be_a_quantity_close_to Q[0.11232291,"m^3"] }
  end
  describe Q[1,"irishtierce"] do
    it {should be_a_quantity_close_to Q[0.14976387,"m^3"] }
  end
  describe Q[1,"irishhogshead"] do
    it {should be_a_quantity_close_to Q[0.22464581,"m^3"] }
  end
  describe Q[1,"irishpuncheon"] do
    it {should be_a_quantity_close_to Q[0.29952775,"m^3"] }
  end
  describe Q[1,"irishpipe"] do
    it {should be_a_quantity_close_to Q[0.44929162,"m^3"] }
  end
  describe Q[1,"irishtun"] do
    it {should be_a_quantity_close_to Q[0.89858324,"m^3"] }
  end
  describe Q[1,"irishpeck"] do
    it {should be_a_quantity_close_to Q[0.0071316131,"m^3"] }
  end
  describe Q[1,"irishbushel"] do
    it {should be_a_quantity_close_to Q[0.028526452,"m^3"] }
  end
  describe Q[1,"irishstrike"] do
    it {should be_a_quantity_close_to Q[0.057052904,"m^3"] }
  end
  describe Q[1,"irishdrybarrel"] do
    it {should be_a_quantity_close_to Q[0.11410581,"m^3"] }
  end
  describe Q[1,"irishquarter"] do
    it {should be_a_quantity_close_to Q[0.22464581,"m^3"] }
  end
  describe Q[1,"towerpound"] do
    it {should be_a_quantity_close_to Q[0.34991411,"kg"] }
  end
  describe Q[1,"towerounce"] do
    it {should be_a_quantity_close_to Q[0.02915951,"kg"] }
  end
  describe Q[1,"towerpennyweight"] do
    it {should be_a_quantity_close_to Q[0.0014579755,"kg"] }
  end
  describe Q[1,"towergrain"] do
    it {should be_a_quantity_close_to Q[4.5561734e-05,"kg"] }
  end
  describe Q[1,"mercpound"] do
    it {should be_a_quantity_close_to Q[0.43739264,"kg"] }
  end
  describe Q[1,"mercounce"] do
    it {should be_a_quantity_close_to Q[0.02915951,"kg"] }
  end
  describe Q[1,"mercpennyweight"] do
    it {should be_a_quantity_close_to Q[0.0014579755,"kg"] }
  end
  describe Q[1,"leadstone"] do
    it {should be_a_quantity_close_to Q[5.6699046,"kg"] }
  end
  describe Q[1,"fotmal"] do
    it {should be_a_quantity_close_to Q[31.751466,"kg"] }
  end
  describe Q[1,"leadwey"] do
    it {should be_a_quantity_close_to Q[79.378665,"kg"] }
  end
  describe Q[1,"fothers"] do
    it {should be_a_quantity_close_to Q[952.54398,"kg"] }
  end
  describe Q[1,"newhaytruss"] do
    it {should be_a_quantity_close_to Q[27.215542,"kg"] }
  end
  describe Q[1,"newhayload"] do
    it {should be_a_quantity_close_to Q[979.75952,"kg"] }
  end
  describe Q[1,"oldhaytruss"] do
    it {should be_a_quantity_close_to Q[25.401173,"kg"] }
  end
  describe Q[1,"oldhayload"] do
    it {should be_a_quantity_close_to Q[914.44222,"kg"] }
  end
  describe Q[1,"woolclove"] do
    it {should be_a_quantity_close_to Q[3.1751466,"kg"] }
  end
  describe Q[1,"woolstone"] do
    it {should be_a_quantity_close_to Q[6.3502932,"kg"] }
  end
  describe Q[1,"wooltod"] do
    it {should be_a_quantity_close_to Q[12.700586,"kg"] }
  end
  describe Q[1,"woolwey"] do
    it {should be_a_quantity_close_to Q[82.553811,"kg"] }
  end
  describe Q[1,"woolsack"] do
    it {should be_a_quantity_close_to Q[165.10762,"kg"] }
  end
  describe Q[1,"woolsarpler"] do
    it {should be_a_quantity_close_to Q[330.21525,"kg"] }
  end
  describe Q[1,"woollast"] do
    it {should be_a_quantity_close_to Q[1981.2915,"kg"] }
  end
  describe Q[1,"romanfoot"] do
    it {should be_a_quantity_close_to Q[0.296,"m"] }
  end
  describe Q[1,"romanfeet"] do
    it {should be_a_quantity_close_to Q[0.296,"m"] }
  end
  describe Q[1,"pes"] do
    it {should be_a_quantity_close_to Q[0.296,"m"] }
  end
  describe Q[1,"pedes"] do
    it {should be_a_quantity_close_to Q[0.296,"m"] }
  end
  describe Q[1,"romaninch"] do
    it {should be_a_quantity_close_to Q[0.024666667,"m"] }
  end
  describe Q[1,"romandigit"] do
    it {should be_a_quantity_close_to Q[0.0185,"m"] }
  end
  describe Q[1,"romanpalm"] do
    it {should be_a_quantity_close_to Q[0.074,"m"] }
  end
  describe Q[1,"romancubit"] do
    it {should be_a_quantity_close_to Q[0.444,"m"] }
  end
  describe Q[1,"romanpace"] do
    it {should be_a_quantity_close_to Q[1.48,"m"] }
  end
  describe Q[1,"passus"] do
    it {should be_a_quantity_close_to Q[1.48,"m"] }
  end
  describe Q[1,"romanperch"] do
    it {should be_a_quantity_close_to Q[2.96,"m"] }
  end
  describe Q[1,"stade"] do
    it {should be_a_quantity_close_to Q[185,"m"] }
  end
  describe Q[1,"stadia"] do
    it {should be_a_quantity_close_to Q[185,"m"] }
  end
  describe Q[1,"stadium"] do
    it {should be_a_quantity_close_to Q[185,"m"] }
  end
  describe Q[1,"romanmile"] do
    it {should be_a_quantity_close_to Q[1480,"m"] }
  end
  describe Q[1,"romanleague"] do
    it {should be_a_quantity_close_to Q[2220,"m"] }
  end
  describe Q[1,"schoenus"] do
    it {should be_a_quantity_close_to Q[5920,"m"] }
  end
  describe Q[1,"earlyromanfoot"] do
    it {should be_a_quantity_close_to Q[0.2973,"m"] }
  end
  describe Q[1,"pesdrusianus"] do
    it {should be_a_quantity_close_to Q[0.333,"m"] }
  end
  describe Q[1,"lateromanfoot"] do
    it {should be_a_quantity_close_to Q[0.2942,"m"] }
  end
  describe Q[1,"actuslength"] do
    it {should be_a_quantity_close_to Q[35.52,"m"] }
  end
  describe Q[1,"actus"] do
    it {should be_a_quantity_close_to Q[42.05568,"m^2"] }
  end
  describe Q[1,"squareactus"] do
    it {should be_a_quantity_close_to Q[1261.6704,"m^2"] }
  end
  describe Q[1,"acnua"] do
    it {should be_a_quantity_close_to Q[1261.6704,"m^2"] }
  end
  describe Q[1,"iugerum"] do
    it {should be_a_quantity_close_to Q[2523.3408,"m^2"] }
  end
  describe Q[1,"iugera"] do
    it {should be_a_quantity_close_to Q[2523.3408,"m^2"] }
  end
  describe Q[1,"jugerum"] do
    it {should be_a_quantity_close_to Q[2523.3408,"m^2"] }
  end
  describe Q[1,"jugera"] do
    it {should be_a_quantity_close_to Q[2523.3408,"m^2"] }
  end
  describe Q[1,"heredium"] do
    it {should be_a_quantity_close_to Q[5046.6816,"m^2"] }
  end
  describe Q[1,"heredia"] do
    it {should be_a_quantity_close_to Q[5046.6816,"m^2"] }
  end
  describe Q[1,"centuria"] do
    it {should be_a_quantity_close_to Q[504668.16,"m^2"] }
  end
  describe Q[1,"centurium"] do
    it {should be_a_quantity_close_to Q[504668.16,"m^2"] }
  end
  describe Q[1,"sextarius"] do
    it {should be_a_quantity_close_to Q[0.00058010207,"m^3"] }
  end
  describe Q[1,"sextarii"] do
    it {should be_a_quantity_close_to Q[0.00058010207,"m^3"] }
  end
  describe Q[1,"cochlearia"] do
    it {should be_a_quantity_close_to Q[1.208546e-05,"m^3"] }
  end
  describe Q[1,"cyathi"] do
    it {should be_a_quantity_close_to Q[4.8341839e-05,"m^3"] }
  end
  describe Q[1,"acetabula"] do
    it {should be_a_quantity_close_to Q[7.2512758e-05,"m^3"] }
  end
  describe Q[1,"quartaria"] do
    it {should be_a_quantity_close_to Q[0.00014502552,"m^3"] }
  end
  describe Q[1,"quartarius"] do
    it {should be_a_quantity_close_to Q[0.00014502552,"m^3"] }
  end
  describe Q[1,"heminae"] do
    it {should be_a_quantity_close_to Q[0.00029005103,"m^3"] }
  end
  describe Q[1,"hemina"] do
    it {should be_a_quantity_close_to Q[0.00029005103,"m^3"] }
  end
  describe Q[1,"cheonix"] do
    it {should be_a_quantity_close_to Q[0.0008701531,"m^3"] }
  end
  describe Q[1,"semodius"] do
    it {should be_a_quantity_close_to Q[0.0046408165,"m^3"] }
  end
  describe Q[1,"semodii"] do
    it {should be_a_quantity_close_to Q[0.0046408165,"m^3"] }
  end
  describe Q[1,"modius"] do
    it {should be_a_quantity_close_to Q[0.009281633,"m^3"] }
  end
  describe Q[1,"modii"] do
    it {should be_a_quantity_close_to Q[0.009281633,"m^3"] }
  end
  describe Q[1,"congius"] do
    it {should be_a_quantity_close_to Q[0.0034806124,"m^3"] }
  end
  describe Q[1,"congii"] do
    it {should be_a_quantity_close_to Q[0.0034806124,"m^3"] }
  end
  describe Q[1,"amphora"] do
    it {should be_a_quantity_close_to Q[0.027844899,"m^3"] }
  end
  describe Q[1,"amphorae"] do
    it {should be_a_quantity_close_to Q[0.027844899,"m^3"] }
  end
  describe Q[1,"culleus"] do
    it {should be_a_quantity_close_to Q[0.55689798,"m^3"] }
  end
  describe Q[1,"quadrantal"] do
    it {should be_a_quantity_close_to Q[0.027844899,"m^3"] }
  end
  describe Q[1,"libra"] do
    it {should be_a_quantity_close_to Q[0.32736409,"kg"] }
  end
  describe Q[1,"librae"] do
    it {should be_a_quantity_close_to Q[0.32736409,"kg"] }
  end
  describe Q[1,"romanpound"] do
    it {should be_a_quantity_close_to Q[0.32736409,"kg"] }
  end
  describe Q[1,"uncia"] do
    it {should be_a_quantity_close_to Q[0.027280341,"kg"] }
  end
  describe Q[1,"unciae"] do
    it {should be_a_quantity_close_to Q[0.027280341,"kg"] }
  end
  describe Q[1,"romanounce"] do
    it {should be_a_quantity_close_to Q[0.027280341,"kg"] }
  end
  describe Q[1,"deunx"] do
    it {should be_a_quantity_close_to Q[0.30008375,"kg"] }
  end
  describe Q[1,"dextans"] do
    it {should be_a_quantity_close_to Q[0.27280341,"kg"] }
  end
  describe Q[1,"dodrans"] do
    it {should be_a_quantity_close_to Q[0.24552307,"kg"] }
  end
  describe Q[1,"bes"] do
    it {should be_a_quantity_close_to Q[0.21824273,"kg"] }
  end
  describe Q[1,"seprunx"] do
    it {should be_a_quantity_close_to Q[0.19096239,"kg"] }
  end
  describe Q[1,"semis"] do
    it {should be_a_quantity_close_to Q[0.16368205,"kg"] }
  end
  describe Q[1,"quincunx"] do
    it {should be_a_quantity_close_to Q[0.13640171,"kg"] }
  end
  describe Q[1,"triens"] do
    it {should be_a_quantity_close_to Q[0.10912136,"kg"] }
  end
  describe Q[1,"quadrans"] do
    it {should be_a_quantity_close_to Q[0.081841023,"kg"] }
  end
  describe Q[1,"sextans"] do
    it {should be_a_quantity_close_to Q[0.054560682,"kg"] }
  end
  describe Q[1,"sescuncia"] do
    it {should be_a_quantity_close_to Q[0.040920512,"kg"] }
  end
  describe Q[1,"semuncia"] do
    it {should be_a_quantity_close_to Q[0.013640171,"kg"] }
  end
  describe Q[1,"siscilius"] do
    it {should be_a_quantity_close_to Q[0.0068200853,"kg"] }
  end
  describe Q[1,"sextula"] do
    it {should be_a_quantity_close_to Q[0.0045467235,"kg"] }
  end
  describe Q[1,"semisextula"] do
    it {should be_a_quantity_close_to Q[0.0022733618,"kg"] }
  end
  describe Q[1,"scriptulum"] do
    it {should be_a_quantity_close_to Q[0.0011366809,"kg"] }
  end
  describe Q[1,"scrupula"] do
    it {should be_a_quantity_close_to Q[0.0011366809,"kg"] }
  end
  describe Q[1,"romanobol"] do
    it {should be_a_quantity_close_to Q[0.00056834044,"kg"] }
  end
  describe Q[1,"romanaspound"] do
    it {should be_a_quantity_close_to Q[0.27280341,"kg"] }
  end
  describe Q[1,"egyptianroyalcubit"] do
    it {should be_a_quantity_close_to Q[0.524002,"m"] }
  end
  describe Q[1,"egyptianpalm"] do
    it {should be_a_quantity_close_to Q[0.074857429,"m"] }
  end
  describe Q[1,"egyptiandigit"] do
    it {should be_a_quantity_close_to Q[0.018714357,"m"] }
  end
  describe Q[1,"egyptianshortcubit"] do
    it {should be_a_quantity_close_to Q[0.44914457,"m"] }
  end
  describe Q[1,"doubleremen"] do
    it {should be_a_quantity_close_to Q[0.740664,"m"] }
  end
  describe Q[1,"remendigit"] do
    it {should be_a_quantity_close_to Q[0.0185166,"m"] }
  end
  describe Q[1,"greekfoot"] do
    it {should be_a_quantity_close_to Q[0.31623,"m"] }
  end
  describe Q[1,"greekfeet"] do
    it {should be_a_quantity_close_to Q[0.31623,"m"] }
  end
  describe Q[1,"greekcubit"] do
    it {should be_a_quantity_close_to Q[0.474345,"m"] }
  end
  describe Q[1,"pous"] do
    it {should be_a_quantity_close_to Q[0.31623,"m"] }
  end
  describe Q[1,"podes"] do
    it {should be_a_quantity_close_to Q[0.31623,"m"] }
  end
  describe Q[1,"orguia"] do
    it {should be_a_quantity_close_to Q[1.89738,"m"] }
  end
  describe Q[1,"greekfathom"] do
    it {should be_a_quantity_close_to Q[1.89738,"m"] }
  end
  describe Q[1,"stadion"] do
    it {should be_a_quantity_close_to Q[189.738,"m"] }
  end
  describe Q[1,"akaina"] do
    it {should be_a_quantity_close_to Q[3.1623,"m"] }
  end
  describe Q[1,"plethron"] do
    it {should be_a_quantity_close_to Q[31.623,"m"] }
  end
  describe Q[1,"greekfinger"] do
    it {should be_a_quantity_close_to Q[0.019764375,"m"] }
  end
  describe Q[1,"homericcubit"] do
    it {should be_a_quantity_close_to Q[0.3952875,"m"] }
  end
  describe Q[1,"shortgreekcubit"] do
    it {should be_a_quantity_close_to Q[0.35575875,"m"] }
  end
  describe Q[1,"ionicfoot"] do
    it {should be_a_quantity_close_to Q[0.296,"m"] }
  end
  describe Q[1,"doricfoot"] do
    it {should be_a_quantity_close_to Q[0.326,"m"] }
  end
  describe Q[1,"olympiccubit"] do
    it {should be_a_quantity_close_to Q[0.462915,"m"] }
  end
  describe Q[1,"olympicfoot"] do
    it {should be_a_quantity_close_to Q[0.30861,"m"] }
  end
  describe Q[1,"olympicfinger"] do
    it {should be_a_quantity_close_to Q[0.019288125,"m"] }
  end
  describe Q[1,"olympicfeet"] do
    it {should be_a_quantity_close_to Q[0.30861,"m"] }
  end
  describe Q[1,"olympicdakylos"] do
    it {should be_a_quantity_close_to Q[0.019288125,"m"] }
  end
  describe Q[1,"olympicpalm"] do
    it {should be_a_quantity_close_to Q[0.0771525,"m"] }
  end
  describe Q[1,"olympicpalestra"] do
    it {should be_a_quantity_close_to Q[0.0771525,"m"] }
  end
  describe Q[1,"olympicspithame"] do
    it {should be_a_quantity_close_to Q[0.2286,"m"] }
  end
  describe Q[1,"olympicspan"] do
    it {should be_a_quantity_close_to Q[0.2286,"m"] }
  end
  describe Q[1,"olympicbema"] do
    it {should be_a_quantity_close_to Q[0.771525,"m"] }
  end
  describe Q[1,"olympicpace"] do
    it {should be_a_quantity_close_to Q[0.771525,"m"] }
  end
  describe Q[1,"olympicorguia"] do
    it {should be_a_quantity_close_to Q[1.85166,"m"] }
  end
  describe Q[1,"olympicfathom"] do
    it {should be_a_quantity_close_to Q[1.85166,"m"] }
  end
  describe Q[1,"olympiccord"] do
    it {should be_a_quantity_close_to Q[18.5166,"m"] }
  end
  describe Q[1,"olympicamma"] do
    it {should be_a_quantity_close_to Q[18.5166,"m"] }
  end
  describe Q[1,"olympicplethron"] do
    it {should be_a_quantity_close_to Q[30.861,"m"] }
  end
  describe Q[1,"olympicstadion"] do
    it {should be_a_quantity_close_to Q[185.166,"m"] }
  end
  describe Q[1,"greekkotyle"] do
    it {should be_a_quantity_close_to Q[0.00027,"m^3"] }
  end
  describe Q[1,"xestes"] do
    it {should be_a_quantity_close_to Q[0.00054,"m^3"] }
  end
  describe Q[1,"khous"] do
    it {should be_a_quantity_close_to Q[0.00324,"m^3"] }
  end
  describe Q[1,"metretes"] do
    it {should be_a_quantity_close_to Q[0.03888,"m^3"] }
  end
  describe Q[1,"choinix"] do
    it {should be_a_quantity_close_to Q[0.00108,"m^3"] }
  end
  describe Q[1,"hekteos"] do
    it {should be_a_quantity_close_to Q[0.00864,"m^3"] }
  end
  describe Q[1,"medimnos"] do
    it {should be_a_quantity_close_to Q[0.05184,"m^3"] }
  end
  describe Q[1,"aeginastater"] do
    it {should be_a_quantity_close_to Q[0.012441391,"kg"] }
  end
  describe Q[1,"aeginadrachmae"] do
    it {should be_a_quantity_close_to Q[0.0062206954,"kg"] }
  end
  describe Q[1,"aeginaobol"] do
    it {should be_a_quantity_close_to Q[0.0010367826,"kg"] }
  end
  describe Q[1,"aeginamina"] do
    it {should be_a_quantity_close_to Q[0.62206954,"kg"] }
  end
  describe Q[1,"aeginatalent"] do
    it {should be_a_quantity_close_to Q[37.324172,"kg"] }
  end
  describe Q[1,"atticstater"] do
    it {should be_a_quantity_close_to Q[0.0087478529,"kg"] }
  end
  describe Q[1,"atticdrachmae"] do
    it {should be_a_quantity_close_to Q[0.0043739264,"kg"] }
  end
  describe Q[1,"atticobol"] do
    it {should be_a_quantity_close_to Q[0.00072898774,"kg"] }
  end
  describe Q[1,"atticmina"] do
    it {should be_a_quantity_close_to Q[0.43739264,"kg"] }
  end
  describe Q[1,"attictalent"] do
    it {should be_a_quantity_close_to Q[26.243559,"kg"] }
  end
  describe Q[1,"northerncubit"] do
    it {should be_a_quantity_close_to Q[0.67564,"m"] }
  end
  describe Q[1,"northernfoot"] do
    it {should be_a_quantity_close_to Q[0.33782,"m"] }
  end
  describe Q[1,"sumeriancubit"] do
    it {should be_a_quantity_close_to Q[0.495,"m"] }
  end
  describe Q[1,"kus"] do
    it {should be_a_quantity_close_to Q[0.495,"m"] }
  end
  describe Q[1,"sumerianfoot"] do
    it {should be_a_quantity_close_to Q[0.33,"m"] }
  end
  describe Q[1,"assyriancubit"] do
    it {should be_a_quantity_close_to Q[0.54864,"m"] }
  end
  describe Q[1,"assyrianfoot"] do
    it {should be_a_quantity_close_to Q[0.27432,"m"] }
  end
  describe Q[1,"assyrianpalm"] do
    it {should be_a_quantity_close_to Q[0.09144,"m"] }
  end
  describe Q[1,"assyriansusi"] do
    it {should be_a_quantity_close_to Q[0.004572,"m"] }
  end
  describe Q[1,"susi"] do
    it {should be_a_quantity_close_to Q[0.004572,"m"] }
  end
  describe Q[1,"persianroyalcubit"] do
    it {should be_a_quantity_close_to Q[0.64008,"m"] }
  end
  describe Q[1,"hashimicubit"] do
    it {should be_a_quantity_close_to Q[0.649224,"m"] }
  end
  describe Q[1,"blackcubit"] do
    it {should be_a_quantity_close_to Q[0.540512,"m"] }
  end
  describe Q[1,"arabicfeet"] do
    it {should be_a_quantity_close_to Q[0.270256,"m"] }
  end
  describe Q[1,"arabicfoot"] do
    it {should be_a_quantity_close_to Q[0.270256,"m"] }
  end
  describe Q[1,"arabicinch"] do
    it {should be_a_quantity_close_to Q[0.022521333,"m"] }
  end
  describe Q[1,"arabicmile"] do
    it {should be_a_quantity_close_to Q[2162.048,"m"] }
  end
  describe Q[1,"silverdirhem"] do
    it {should be_a_quantity_close_to Q[0.002915951,"kg"] }
  end
  describe Q[1,"tradedirhem"] do
    it {should be_a_quantity_close_to Q[0.0031103477,"kg"] }
  end
  describe Q[1,"silverkirat"] do
    it {should be_a_quantity_close_to Q[0.00018224693,"kg"] }
  end
  describe Q[1,"silverwukiyeh"] do
    it {should be_a_quantity_close_to Q[0.02915951,"kg"] }
  end
  describe Q[1,"silverrotl"] do
    it {should be_a_quantity_close_to Q[0.34991411,"kg"] }
  end
  describe Q[1,"arabicsilverpound"] do
    it {should be_a_quantity_close_to Q[0.34991411,"kg"] }
  end
  describe Q[1,"tradekirat"] do
    it {should be_a_quantity_close_to Q[0.00019439673,"kg"] }
  end
  describe Q[1,"tradewukiyeh"] do
    it {should be_a_quantity_close_to Q[0.031103477,"kg"] }
  end
  describe Q[1,"traderotl"] do
    it {should be_a_quantity_close_to Q[0.37324172,"kg"] }
  end
  describe Q[1,"arabictradepound"] do
    it {should be_a_quantity_close_to Q[0.37324172,"kg"] }
  end
  describe Q[1,"parasang"] do
    it {should be_a_quantity_close_to Q[5632.704,"m"] }
  end
  describe Q[1,"biblicalcubit"] do
    it {should be_a_quantity_close_to Q[0.55372,"m"] }
  end
  describe Q[1,"hebrewcubit"] do
    it {should be_a_quantity_close_to Q[0.446532,"m"] }
  end
  describe Q[1,"li"] do
    it {should be_a_quantity_close_to Q[578.90072,"m"] }
  end
  describe Q[1,"liang"] do
    it {should be_a_quantity_close_to Q[0.10394825,"kg"] }
  end
  describe Q[1,"timepoint"] do
    it {should be_a_quantity_close_to Q[720,"s"] }
  end
  describe Q[1,"timeminute"] do
    it {should be_a_quantity_close_to Q[360,"s"] }
  end
  describe Q[1,"timeostent"] do
    it {should be_a_quantity_close_to Q[60,"s"] }
  end
  describe Q[1,"timeounce"] do
    it {should be_a_quantity_close_to Q[7.5,"s"] }
  end
  describe Q[1,"timeatom"] do
    it {should be_a_quantity_close_to Q[0.15957447,"s"] }
  end
  describe Q[1,"mite"] do
    it {should be_a_quantity_close_to Q[3.2399455e-06,"kg"] }
  end
  describe Q[1,"droit"] do
    it {should be_a_quantity_close_to Q[1.3499773e-07,"kg"] }
  end
  describe Q[1,"periot"] do
    it {should be_a_quantity_close_to Q[6.7498865e-09,"kg"] }
  end
  describe Q[1,"blanc"] do
    it {should be_a_quantity_close_to Q[2.8124527e-10,"kg"] }
  end
  describe Q[1,"hundredweight"] do
    it {should be_a_quantity_close_to Q[45.359237,"kg"] }
  end
  describe Q[1,"ton"] do
    it {should be_a_quantity_close_to Q[907.18474,"kg"] }
  end
  describe Q[1,"scruple"] do
    it {should be_a_quantity_close_to Q[0.0012959782,"kg"] }
  end
  describe Q[1,"fluidounce"] do
    it {should be_a_quantity_close_to Q[2.957353e-05,"m^3"] }
  end
  describe Q[1,"gallon"] do
    it {should be_a_quantity_close_to Q[0.0037854118,"m^3"] }
  end
  describe Q[1,"bushel"] do
    it {should be_a_quantity_close_to Q[0.03523907,"m^3"] }
  end
  describe Q[1,"quarter"] do
    it {should be_a_quantity_close_to Q[226.79619,"kg"] }
  end
  describe Q[1,"cup"] do
    it {should be_a_quantity_close_to Q[0.00023658824,"m^3"] }
  end
  describe Q[1,"tablespoon"] do
    it {should be_a_quantity_close_to Q[1.4786765e-05,"m^3"] }
  end
  describe Q[1,"teaspoon"] do
    it {should be_a_quantity_close_to Q[4.9289216e-06,"m^3"] }
  end
  describe Q[1,"dollar"] do
    it {should be_a_quantity_close_to Q[1,"US$"] }
  end
  describe Q[1,"cent"] do
    it {should be_a_quantity_close_to Q[0.01,"US$"] }
  end
  describe Q[1,"penny"] do
    it {should be_a_quantity_close_to Q[0.01,"US$"] }
  end
  describe Q[1,"minim"] do
    it {should be_a_quantity_close_to Q[6.161152e-08,"m^3"] }
  end
  describe Q[1,"pony"] do
    it {should be_a_quantity_close_to Q[2.957353e-05,"m^3"] }
  end
  describe Q[1,"grand"] do
    it {should be_a_quantity_close_to Q[1000,"US$"] }
  end
  describe Q[1,"firkin"] do
    it {should be_a_quantity_close_to Q[0.034068706,"m^3"] }
  end
  describe Q[1,"hogshead"] do
    it {should be_a_quantity_close_to Q[0.23848094,"m^3"] }
  end
  describe Q[1,"ångström"] do
    it {should be_a_quantity_close_to Q[1e-10,"m"] }
  end
  describe Q[1,"Å"] do
    it {should be_a_quantity_close_to Q[1e-10,"m"] }
  end
  describe Q[1,"Å"] do
    it {should be_a_quantity_close_to Q[1e-10,"m"] }
  end
  describe Q[1,"röntgen"] do
    it {should be_a_quantity_close_to Q[0.000258,"A s kg^-1"] }
  end
  describe Q[1,"°C"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"°F"] do
    it {should be_a_quantity_close_to Q[0.55555556,"K"] }
  end
  describe Q[1,"°K"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"°R"] do
    it {should be_a_quantity_close_to Q[0.55555556,"K"] }
  end
  describe Q[1,"°"] do
    it {should be_a_quantity_close_to Q[0.017453293] }
  end
  describe Q[1,"℃"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"℉"] do
    it {should be_a_quantity_close_to Q[0.55555556,"K"] }
  end
  describe Q[1,"K"] do
    it {should be_a_quantity_close_to Q[1,"K"] }
  end
  describe Q[1,"ℓ"] do
    it {should be_a_quantity_close_to Q[0.001,"m^3"] }
  end
  describe Q[1,"¢"] do
    it {should be_a_quantity_close_to Q[0.01,"US$"] }
  end
  describe Q[1,"Ω"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"Ω"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"℧"] do
    it {should be_a_quantity_close_to Q[1,"A^2 kg^-1 m^-2 s^3"] }
  end
  describe Q[1,"ʒ"] do
    it {should be_a_quantity_close_to Q[0.0017718452,"kg"] }
  end
  describe Q[1,"℈"] do
    it {should be_a_quantity_close_to Q[0.0012959782,"kg"] }
  end
  describe Q[1,"℥"] do
    it {should be_a_quantity_close_to Q[0.028349523,"kg"] }
  end
  describe Q[1,"℔"] do
    it {should be_a_quantity_close_to Q[0.45359237,"kg"] }
  end
  describe Q[1,"ℎ"] do
    it {should be_a_quantity_close_to Q[6.6260696e-34,"s^-1 kg m^2"] }
  end
  describe Q[1,"ℏ"] do
    it {should be_a_quantity_close_to Q[1.0545717e-34,"s^-1 kg m^2"] }
  end
  describe Q[1,"‰"] do
    it {should be_a_quantity_close_to Q[0.001] }
  end
  describe Q[1,"‱"] do
    it {should be_a_quantity_close_to Q[0.0001] }
  end
  describe Q[1,"′"] do
    it {should be_a_quantity_close_to Q[0.00029088821] }
  end
  describe Q[1,"″"] do
    it {should be_a_quantity_close_to Q[4.8481368e-06] }
  end
  describe Q[1,"㍱"] do
    it {should be_a_quantity_close_to Q[100,"kg m^-1 s^-2"] }
  end
  describe Q[1,"㍲"] do
    it {should be_a_quantity_close_to Q[86400,"s"] }
  end
  describe Q[1,"㍳"] do
    it {should be_a_quantity_close_to Q[1.4959787e+11,"m"] }
  end
  describe Q[1,"㍴"] do
    it {should be_a_quantity_close_to Q[100000,"kg m^-1 s^-2"] }
  end
  describe Q[1,"㍶"] do
    it {should be_a_quantity_close_to Q[3.0856776e+16,"m"] }
  end
  describe Q[1,"㍷"] do
    it {should be_a_quantity_close_to Q[0.1,"m"] }
  end
  describe Q[1,"㍸"] do
    it {should be_a_quantity_close_to Q[0.01,"m^2"] }
  end
  describe Q[1,"㍹"] do
    it {should be_a_quantity_close_to Q[0.001,"m^3"] }
  end
  describe Q[1,"㎀"] do
    it {should be_a_quantity_close_to Q[1e-12,"A"] }
  end
  describe Q[1,"㎁"] do
    it {should be_a_quantity_close_to Q[1e-09,"A"] }
  end
  describe Q[1,"㎂"] do
    it {should be_a_quantity_close_to Q[1e-06,"A"] }
  end
  describe Q[1,"㎃"] do
    it {should be_a_quantity_close_to Q[0.001,"A"] }
  end
  describe Q[1,"㎄"] do
    it {should be_a_quantity_close_to Q[1000,"A"] }
  end
  describe Q[1,"㎅"] do
    it {should be_a_quantity_close_to Q[8000,"bit"] }
  end
  describe Q[1,"㎆"] do
    it {should be_a_quantity_close_to Q[8000000,"bit"] }
  end
  describe Q[1,"㎇"] do
    it {should be_a_quantity_close_to Q[8e+09,"bit"] }
  end
  describe Q[1,"㎈"] do
    it {should be_a_quantity_close_to Q[4.1868,"kg m^2 s^-2"] }
  end
  describe Q[1,"㎉"] do
    it {should be_a_quantity_close_to Q[4186.8,"kg m^2 s^-2"] }
  end
  describe Q[1,"㎊"] do
    it {should be_a_quantity_close_to Q[1e-12,"A^2 s^4 kg^-1 m^-2"] }
  end
  describe Q[1,"㎋"] do
    it {should be_a_quantity_close_to Q[1e-09,"A^2 s^4 kg^-1 m^-2"] }
  end
  describe Q[1,"㎌"] do
    it {should be_a_quantity_close_to Q[1e-06,"A^2 s^4 kg^-1 m^-2"] }
  end
  describe Q[1,"㎍"] do
    it {should be_a_quantity_close_to Q[1e-09,"kg"] }
  end
  describe Q[1,"㎎"] do
    it {should be_a_quantity_close_to Q[1e-06,"kg"] }
  end
  describe Q[1,"㎏"] do
    it {should be_a_quantity_close_to Q[1,"kg"] }
  end
  describe Q[1,"㎐"] do
    it {should be_a_quantity_close_to Q[1,"s^-1"] }
  end
  describe Q[1,"㎑"] do
    it {should be_a_quantity_close_to Q[1000,"s^-1"] }
  end
  describe Q[1,"㎒"] do
    it {should be_a_quantity_close_to Q[1000000,"s^-1"] }
  end
  describe Q[1,"㎓"] do
    it {should be_a_quantity_close_to Q[1e+09,"s^-1"] }
  end
  describe Q[1,"㎔"] do
    it {should be_a_quantity_close_to Q[1e+12,"s^-1"] }
  end
  describe Q[1,"㎕"] do
    it {should be_a_quantity_close_to Q[1e-09,"m^3"] }
  end
  describe Q[1,"㎖"] do
    it {should be_a_quantity_close_to Q[1e-06,"m^3"] }
  end
  describe Q[1,"㎗"] do
    it {should be_a_quantity_close_to Q[0.0001,"m^3"] }
  end
  describe Q[1,"㎘"] do
    it {should be_a_quantity_close_to Q[1,"m^3"] }
  end
  describe Q[1,"㎙"] do
    it {should be_a_quantity_close_to Q[1e-15,"m"] }
  end
  describe Q[1,"㎚"] do
    it {should be_a_quantity_close_to Q[1e-09,"m"] }
  end
  describe Q[1,"㎛"] do
    it {should be_a_quantity_close_to Q[1e-06,"m"] }
  end
  describe Q[1,"㎜"] do
    it {should be_a_quantity_close_to Q[0.001,"m"] }
  end
  describe Q[1,"㎝"] do
    it {should be_a_quantity_close_to Q[0.01,"m"] }
  end
  describe Q[1,"㎞"] do
    it {should be_a_quantity_close_to Q[1000,"m"] }
  end
  describe Q[1,"㎟"] do
    it {should be_a_quantity_close_to Q[1e-06,"m^2"] }
  end
  describe Q[1,"㎠"] do
    it {should be_a_quantity_close_to Q[0.0001,"m^2"] }
  end
  describe Q[1,"㎡"] do
    it {should be_a_quantity_close_to Q[1,"m^2"] }
  end
  describe Q[1,"㎢"] do
    it {should be_a_quantity_close_to Q[1000000,"m^2"] }
  end
  describe Q[1,"㎣"] do
    it {should be_a_quantity_close_to Q[1e-09,"m^3"] }
  end
  describe Q[1,"㎤"] do
    it {should be_a_quantity_close_to Q[1e-06,"m^3"] }
  end
  describe Q[1,"㎥"] do
    it {should be_a_quantity_close_to Q[1,"m^3"] }
  end
  describe Q[1,"㎦"] do
    it {should be_a_quantity_close_to Q[1e+09,"m^3"] }
  end
  describe Q[1,"㎧"] do
    it {should be_a_quantity_close_to Q[1,"m s^-1"] }
  end
  describe Q[1,"㎨"] do
    it {should be_a_quantity_close_to Q[1,"m s^-2"] }
  end
  describe Q[1,"㎩"] do
    it {should be_a_quantity_close_to Q[1,"kg m^-1 s^-2"] }
  end
  describe Q[1,"㎪"] do
    it {should be_a_quantity_close_to Q[1000,"kg m^-1 s^-2"] }
  end
  describe Q[1,"㎫"] do
    it {should be_a_quantity_close_to Q[1000000,"kg m^-1 s^-2"] }
  end
  describe Q[1,"㎬"] do
    it {should be_a_quantity_close_to Q[1e+09,"kg m^-1 s^-2"] }
  end
  describe Q[1,"㎭"] do
    it {should be_a_quantity_close_to Q[0.01,"m^2 s^-2"] }
  end
  describe Q[1,"㎮"] do
    it {should be_a_quantity_close_to Q[0.01,"m^2 s^-3"] }
  end
  describe Q[1,"㎯"] do
    it {should be_a_quantity_close_to Q[0.01,"m^2 s^-4"] }
  end
  describe Q[1,"㎰"] do
    it {should be_a_quantity_close_to Q[1e-12,"s"] }
  end
  describe Q[1,"㎱"] do
    it {should be_a_quantity_close_to Q[1e-09,"s"] }
  end
  describe Q[1,"㎳"] do
    it {should be_a_quantity_close_to Q[0.001,"s"] }
  end
  describe Q[1,"㎴"] do
    it {should be_a_quantity_close_to Q[1e-12,"kg m^2 s^-3 A^-1"] }
  end
  describe Q[1,"㎵"] do
    it {should be_a_quantity_close_to Q[1e-09,"kg m^2 s^-3 A^-1"] }
  end
  describe Q[1,"㎶"] do
    it {should be_a_quantity_close_to Q[1e-06,"kg m^2 s^-3 A^-1"] }
  end
  describe Q[1,"㎷"] do
    it {should be_a_quantity_close_to Q[0.001,"kg m^2 s^-3 A^-1"] }
  end
  describe Q[1,"㎸"] do
    it {should be_a_quantity_close_to Q[1000,"kg m^2 s^-3 A^-1"] }
  end
  describe Q[1,"㎹"] do
    it {should be_a_quantity_close_to Q[1000000,"kg m^2 s^-3 A^-1"] }
  end
  describe Q[1,"㎺"] do
    it {should be_a_quantity_close_to Q[1e-12,"kg m^2 s^-3"] }
  end
  describe Q[1,"㎻"] do
    it {should be_a_quantity_close_to Q[1e-09,"kg m^2 s^-3"] }
  end
  describe Q[1,"㎼"] do
    it {should be_a_quantity_close_to Q[1e-06,"kg m^2 s^-3"] }
  end
  describe Q[1,"㎽"] do
    it {should be_a_quantity_close_to Q[0.001,"kg m^2 s^-3"] }
  end
  describe Q[1,"㎾"] do
    it {should be_a_quantity_close_to Q[1000,"kg m^2 s^-3"] }
  end
  describe Q[1,"㎿"] do
    it {should be_a_quantity_close_to Q[1000000,"kg m^2 s^-3"] }
  end
  describe Q[1,"㏀"] do
    it {should be_a_quantity_close_to Q[1000,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"㏁"] do
    it {should be_a_quantity_close_to Q[1000000,"kg m^2 s^-3 A^-2"] }
  end
  describe Q[1,"㏃"] do
    it {should be_a_quantity_close_to Q[1,"s^-1"] }
  end
  describe Q[1,"㏄"] do
    it {should be_a_quantity_close_to Q[1e-06,"m^3"] }
  end
  describe Q[1,"㏅"] do
    it {should be_a_quantity_close_to Q[1,"cd"] }
  end
  describe Q[1,"㏆"] do
    it {should be_a_quantity_close_to Q[1,"A s kg^-1"] }
  end
  describe Q[1,"㏉"] do
    it {should be_a_quantity_close_to Q[1,"m^2 s^-2"] }
  end
  describe Q[1,"㏊"] do
    it {should be_a_quantity_close_to Q[10000,"m^2"] }
  end
  describe Q[1,"㏌"] do
    it {should be_a_quantity_close_to Q[0.0254,"m"] }
  end
  describe Q[1,"㏏"] do
    it {should be_a_quantity_close_to Q[1000000,"kg"] }
  end
  describe Q[1,"㏐"] do
    it {should be_a_quantity_close_to Q[1,"cd"] }
  end
  describe Q[1,"㏓"] do
    it {should be_a_quantity_close_to Q[1,"cd m^-2"] }
  end
  describe Q[1,"㏔"] do
    it {should be_a_quantity_close_to Q[100,"kg m^-1 s^-2"] }
  end
  describe Q[1,"㏕"] do
    it {should be_a_quantity_close_to Q[2.54e-05,"m"] }
  end
  describe Q[1,"㏖"] do
    it {should be_a_quantity_close_to Q[1,"mol"] }
  end
  describe Q[1,"㏙"] do
    it {should be_a_quantity_close_to Q[1e-06] }
  end
  describe Q[1,"㏛"] do
    it {should be_a_quantity_close_to Q[1] }
  end
  describe Q[1,"㏜"] do
    it {should be_a_quantity_close_to Q[1,"m^2 s^-2"] }
  end
  describe Q[1,"㏝"] do
    it {should be_a_quantity_close_to Q[1,"kg m^2 s^-2 A^-1"] }
  end
  describe Q[1,"㏞"] do
    it {should be_a_quantity_close_to Q[1,"kg m s^-3 A^-1"] }
  end
  describe Q[1,"㏟"] do
    it {should be_a_quantity_close_to Q[1,"A m^-1"] }
  end
  describe Q[1,"㏿"] do
    it {should be_a_quantity_close_to Q[0.0037854118,"m^3"] }
  end
end
