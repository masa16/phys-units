module Phys
  class Unit
    module Utils
      module_function

      def as_numeric(x)
	case x
	when Rational
	  if x.denominator==1
	    x.to_i
	  else
	    x
	  end
	when Numeric
	  x
	when Unit
	  x.to_num
	else
	  raise "Not Numric or #{self.class}: #{x.inspect}"
	end
      end

      def check_decimal(x)
	while x%5==0
	  x/=5
	end
	while x%2==0
	  x/=2
	end
	x==1
      end

      def int_inspect(x)
	if x.to_s.size > 5
	  "%g" % x.to_f
	else
	  x.inspect
	end
      end

      def n_trail_zero(x)
	if /^(\d*[1-9])(0*)$/ =~ x.to_s
	  [$1.to_i, $2.size]
	else
	  nil
	end
      end

      def num_inspect(x)
	if x.kind_of? Rational
	  d = x.denominator
	  n = x.numerator
	  if d==1
	    return int_inspect(n)
	  end
	  if check_decimal(d)
	    return "%g" % x.to_f
	  end
	  if check_decimal(n)
	    if n==1
	      return "(1/"+int_inspect(d)+")"
	    else
	      return "(1/%g)" % Rational(d,n).to_f
	    end
	  end
	  ud,nd = n_trail_zero(d)
	  if nd > 3
	    return Rational(n,ud).inspect + 
	      ("*%.0e"%10**(-nd))
	  end
	  un,nn = n_trail_zero(n)
	  if nn > 3
	    return Rational(un,d).inspect + 
	      ("*%.0e"%10**(nn))
	  end
	end
	x.inspect
      end
    end
  end
end
