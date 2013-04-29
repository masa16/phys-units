module Phys
  class UnitError < StandardError
  end
  class UnitParseError < UnitError
  end
  class UnitConversionError < UnitError
  end
  class UnitOperationError < UnitError
  end
end
