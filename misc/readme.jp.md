    require 'phys/units/jp'
    q = Phys::Quantity
    q[1,"寸"].want("cm")    #=> Phys::Quantity[(1/0.33),"cm"]
    q[1,"坪"].want("m^2")   #=> Phys::Quantity[(1/0.3025),"m^2"]
    q[1,"升"].want("l")     #=> Phys::Quantity[(2401/1331),"l"]
    q[1,"貫"].want("kg")    #=> Phys::Quantity[3.75,"kg"]
