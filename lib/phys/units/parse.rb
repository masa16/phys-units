#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.14
# from Racc grammer file "".
#

require 'racc/parser.rb'


# parse.y, parse.rb
#
#   by Masahiro Tanaka <masa16.tanaka@gmail.com>
#
module Phys
class Unit
# @visibility private
class Parse < Racc::Parser

module_eval(<<'...end parse.y/module_eval...', 'parse.y', 63)

  def build_num(ov,ud,pw)
    if ud.nil? && pw.nil?
      #ov.to_i
      Rational(ov.to_i)
    else
      m1 = ud ? ud.size : 0
      pw = pw ? pw.to_i : 0
      m2 = pw-m1
      ov = ov ? ov.to_i : 0
      ud = ud ? ud.to_i : 0
      a = ov*10**m1 + ud
      b = 1
      a *= 10**m2 if m2>0
      b *= 10**(-m2) if m2<0
      Rational(a,b)
    end
  end

  def parse( str )
    return Unit.new(1) if str.empty?
    @q = []

    c = Unit.unit_exclude_chars

    while str.size > 0 do
      case str
      when /\A[\s]+/o
      when /\A(\d+)(?:(?:\.(\d*))?(?:[eE]([+-]?\d+))?)/o
        @q.push [:NUMBER, build_num($1,$2,$3)]
      when /\A(sin|cos|tan|log|ln|log2)\b/o
        @q.push [:UFUNC, $&]
      when /\A\//o
        @q.push [:DIV, $&]
      when /\Aper\b/o
        @q.push [:DIV, $&]
      when /\A[%'"$]'?/o
        @q.push [:WORD, $&]
      when /\A\^|\A\*\*/o
        @q.push [:POW, $&]
      when /\A[#{c}-]/o
        @q.push [$&,$&]
      when /\AUS\$/o
        @q.push [:WORD, $&]
      when /\A\p{Word}+/o
        a = $&
        str = $'
        case a
        when /\A(.*[^\d])([2-9])$/
          @q.push [:WORD, $1]
          @q.push [:POW, '']
          @q.push [:NUMBER, $2.to_i]
        else
          @q.push [:WORD, a]
        end
        next
      else
        raise Racc::ParseError,"fail to tokenize: #{str.inspect}"
      end
      str = $'
    end
    @q.push [false, '$end']

    do_parse
  end

  def next_token
    @q.shift
  end

...end parse.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
     8,    10,     6,    11,    12,    15,     3,    16,    21,     5,
     8,    10,     6,    11,     8,    10,     6,    11,    15,     5,
    16,     8,    24,     5,     8,    10,     6,    11,     8,    10,
     6,    11,     6,     5,    15,    19,    19,     5,     8,    10,
     6,    11,     8,    10,     6,    11,   nil,     5,    15,   nil,
    16,    30,    13,    14,    32,    15,   nil,    16,   nil,    13,
    14,    19,     8,    10,     6,    11,    19,     8,    10,     6,
    11,    19,     8,    10,     6,    11,    19,     8,    10,     6,
    11,     8,    10,     6,    11,     8,    10,     6,    11,     8,
    10,     6,    11 ]

racc_action_check = [
     0,     0,     0,     0,     1,    25,     0,    25,     7,     0,
     8,     8,     8,     8,    13,    13,    13,    13,    26,     8,
    26,    11,    12,    13,    14,    14,    14,    14,    15,    15,
    15,    15,    21,    14,    28,    29,    33,    15,    16,    16,
    16,    16,    19,    19,    19,    19,   nil,    16,    22,   nil,
    22,    19,    22,    22,    22,     2,   nil,     2,   nil,     2,
     2,     4,     4,     4,     4,     4,    17,    17,    17,    17,
    17,    18,    18,    18,    18,    18,    20,    20,    20,    20,
    20,     3,     3,     3,     3,     5,     5,     5,     5,    30,
    30,    30,    30 ]

racc_action_pointer = [
    -4,     4,    47,    77,    58,    81,   nil,     6,     6,   nil,
   nil,    17,    22,    10,    20,    24,    34,    63,    68,    38,
    73,    26,    40,   nil,   nil,    -3,    10,   nil,    26,    32,
    85,   nil,   nil,    33 ]

racc_action_default = [
   -19,   -19,    -1,   -19,    -3,   -19,    -9,   -12,   -19,   -13,
   -14,   -19,   -19,   -19,   -19,   -19,   -19,    -2,   -15,   -19,
    -4,   -19,   -19,   -18,    34,    -5,    -6,    -7,    -8,   -16,
   -19,   -10,   -11,   -17 ]

racc_goto_table = [
    17,    18,    20,     1,    31,     2,    23,   nil,   nil,   nil,
   nil,   nil,   nil,    22,    18,    18,    29,    18,    25,    26,
    27,    28,   nil,   nil,   nil,   nil,    18,    33,   nil,   nil,
    18 ]

racc_goto_check = [
     3,     3,     3,     1,     4,     2,     5,   nil,   nil,   nil,
   nil,   nil,   nil,     2,     3,     3,     3,     3,     2,     2,
     2,     2,   nil,   nil,   nil,   nil,     3,     3,   nil,   nil,
     3 ]

racc_goto_pointer = [
   nil,     3,     5,    -3,   -17,    -5 ]

racc_goto_default = [
   nil,   nil,   nil,     4,     7,     9 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 16, :_reduce_none,
  2, 16, :_reduce_2,
  1, 17, :_reduce_none,
  2, 17, :_reduce_4,
  3, 17, :_reduce_5,
  3, 17, :_reduce_6,
  3, 17, :_reduce_7,
  3, 17, :_reduce_8,
  1, 19, :_reduce_none,
  3, 19, :_reduce_10,
  3, 20, :_reduce_11,
  1, 18, :_reduce_none,
  1, 18, :_reduce_none,
  1, 18, :_reduce_14,
  2, 18, :_reduce_15,
  3, 18, :_reduce_16,
  4, 18, :_reduce_17,
  2, 18, :_reduce_18 ]

racc_reduce_n = 19

racc_shift_n = 34

racc_token_table = {
  false => 0,
  :error => 1,
  "|" => 2,
  :POW => 3,
  "(" => 4,
  :WORD => 5,
  :NUMBER => 6,
  :UFUNC => 7,
  "*" => 8,
  :MULTIPLY => 9,
  :DIV => 10,
  :UNARY => 11,
  "+" => 12,
  "-" => 13,
  ")" => 14 }

racc_nt_base = 15

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "\"|\"",
  "POW",
  "\"(\"",
  "WORD",
  "NUMBER",
  "UFUNC",
  "\"*\"",
  "MULTIPLY",
  "DIV",
  "UNARY",
  "\"+\"",
  "\"-\"",
  "\")\"",
  "$start",
  "target",
  "expr",
  "list",
  "numexpr",
  "pexpr" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

module_eval(<<'.,.,', 'parse.y', 23)
  def _reduce_2(val, _values, result)
     result = Unit.cast(val[1]).inverse 
    result
  end
.,.,

# reduce 3 omitted

module_eval(<<'.,.,', 'parse.y', 27)
  def _reduce_4(val, _values, result)
     result = -val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 28)
  def _reduce_5(val, _values, result)
     result = val[0] + val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 29)
  def _reduce_6(val, _values, result)
     result = val[0] - val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 30)
  def _reduce_7(val, _values, result)
     result = val[0] * val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 31)
  def _reduce_8(val, _values, result)
     result = val[0] / val[2] 
    result
  end
.,.,

# reduce 9 omitted

module_eval(<<'.,.,', 'parse.y', 35)
  def _reduce_10(val, _values, result)
     result = val[0] / val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 38)
  def _reduce_11(val, _values, result)
     result = val[1] 
    result
  end
.,.,

# reduce 12 omitted

# reduce 13 omitted

module_eval(<<'.,.,', 'parse.y', 43)
  def _reduce_14(val, _values, result)
     result = Unit.word(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 44)
  def _reduce_15(val, _values, result)
     result = val[0] * val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 45)
  def _reduce_16(val, _values, result)
     result = val[0]** val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 46)
  def _reduce_17(val, _values, result)
     result = val[0]**(-val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 47)
  def _reduce_18(val, _values, result)
     result = Unit.func(val[0],val[1]) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parse


end
end
