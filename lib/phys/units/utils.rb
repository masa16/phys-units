#
# phys/units/unit.rb
#
#   Copyright (c) 2001-2013 Masahiro Tanaka <masa16.tanaka@gmail.com>
#
#   This program is free software.
#   You can distribute/modify this program under the terms of
#   the GNU General Public License version 3 or later.

module Phys
  class Unit
    # @visibility private
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
          x.to_numeric
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
        s = x.to_s
        if /^([+-]?\d*[1-9])(0*)$/ =~ s
          [$1.to_i, $2.size]
        else
          raise "cannot match with: '#{s}'"
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
            return x.to_f.inspect
          end
          if check_decimal(n)
            if n==1
              return "(1/"+int_inspect(d)+")"
            else
              return "(1/%s)" % Rational(d,n).to_f.inspect
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
