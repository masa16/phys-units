# parse.y
#
#   Copyright (c) 2001-2013 Masahiro Tanaka <masa16.tanaka@gmail.com>
#
#   This program is free software.
#   You can distribute/modify this program under the terms of
#   the GNU General Public License version 3 or later.

class Parse

  prechigh
    left '|'
    right POW
    nonassoc '(' WORD NUMBER UFUNC
    left '*' MULTIPLY
    left DIV
    left UNARY
    left '+' '-'
  preclow

rule

 target:  expr
       |  DIV list { result = Unit.cast(val[1]).inverse }
       ;

 expr: list
     | '-' list = UNARY { result = -val[1] }
     | expr '+' expr    { result = val[0] + val[2] }
     | expr '-' expr    { result = val[0] - val[2] }
     | expr '*' expr    { result = val[0] * val[2] }
     | expr DIV expr    { result = val[0] / val[2] }
     ;

 numexpr: NUMBER
        | numexpr '|' numexpr { result = val[0] / val[2] }
        ;

 pexpr: '(' expr ')'          { result = val[1] }
      ;

 list: numexpr
     | pexpr
     | WORD                    { result = Unit.word(val[0]) }
     | list list    = MULTIPLY { result = val[0] * val[1] }
     | list POW list           { result = val[0]** val[2] }
     | list POW '-' list = POW { result = val[0]**(-val[3]) }
     | UFUNC pexpr             { result = Unit.func(val[0],val[1]) }
     ;

end

---- header ----

# parse.y, parse.rb
#
#   by Masahiro Tanaka <masa16.tanaka@gmail.com>
#
module Phys
class Unit
# @visibility private
---- inner ----

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

---- footer ----

end
end
