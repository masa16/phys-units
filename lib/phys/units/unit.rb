# -*- coding: utf-8 -*-

module Phys
  LIST = {}
  PREFIX = {}

  class Unit

    def self.debug
      false
    end

    def initialize(arg,name=nil)
      case arg
      when Numeric
	@factor = arg
	alloc_dim
      when Hash
	@factor = 1
	alloc_dim arg
      when String
	replace(Unit.find_unit(arg))
      when Phys::Unit
	replace(arg)
      else
	raise "invalid type=#{arg.class} of arg=#{arg.inspect}"
      end
      @name = name if name
      if !@dim
	raise "@dim is undefined: arg=#{arg.inspect}"
      end
      #p self
    end

    def inspect
      a = [Utils.num_inspect(@factor), @dim.inspect]
      a.push "@name="+@name.inspect if @name
      a.push "@ofs="+@offset.inspect if @offset
      a.push "@dimless=true" if @dimensionless
      s = a.join(",")
      "#<#{self.class} #{s}>"
    end

    def replace(x)
      @name = x.name.dup if x.name
      @factor = x.factor
      alloc_dim x.dim
    end

    def alloc_dim(hash=nil)
      case hash
      when Hash
	@dim = hash.dup
      else
	@dim = {}
      end
      @dim.default = 0
    end

    attr_reader   :dim
    attr_accessor :name
    attr_accessor :factor

    alias dimension dim

    def dup
      Unit.new(self)
    end

    def get_factor
      r = @factor
      @dim.each do |k,d|
	if d != 0
	  u = LIST[k]
	  if u.dimensionless?
	    r *= u.irrational**d
	  end
	end
      end
      #p [:get_factor, @factor, @dim, r]
      r
    end

    def dimensionless_deleted
      hash = @dim.dup
      hash.delete_if{|k,v| LIST[k].dimensionless?}
    end

    def dimensionless?
      @dim.each_key.all?{|k| LIST[k].dimensionless?}
    end

    def same_dimension?(x)
      dimensionless_deleted == x.dimensionless_deleted
    end
    alias same_dim? same_dimension?

    def assert_dimensionless
      if !dimensionless?
	raise "#{self.inspect} : not dimensionless"
      end
    end

    def assert_same_unit(x)
      if !same_dimension?(x)
	raise "Different unit #{self.inspect} and #{x.inspect}"
      end
    end

    def convert(x,unit)
      assert_same_unit(unit)
      y = unit.convert_to_base(x)
      convert_from_base(y)
    end

    def convert_to_base(x)
      x * get_factor
    end

    def convert_from_base(x)
      x / get_factor
    end

    def convert_to_numeric(x)
      assert_dimensionless
      x * get_factor
    end

    def to_num
      assert_dimensionless
      get_factor
    end

    def convert_to_float(x)
      convert_to_numeric(x).to_f
    end

#--

    def +(x)
      dup.add!(x)
    end

    def add!(x)
      x = Unit.new(x) if !x.kind_of?(Unit)
      assert_same_unit(x)
      @factor += x.factor
      self
    end

    def -(x)
      dup.sbt!(x)
    end

    def sbt!(x)
      x = Unit.new(x) if !x.kind_of?(Unit)
      assert_same_unit(x)
      @factor -= x.factor
      self
    end

    def -@
      dup.neg!
    end

    def neg!
      @factor = -@factor
      self
    end

    def *(x)
      dup.mul!(x)
    end

    def mul!(x)
      x = Unit.new(x) if !x.kind_of?(Unit)
      x.dim.each{|k,v| @dim[k] += v }
      @dim.delete_if{|k,v| v == 0 }
      @factor *= x.factor
      self
    end

    def /(x)
      dup.div!(x)
    end

    def div!(x)
      x = Unit.new(x) if !x.kind_of?(Unit)
      x.dim.each{|k,v| @dim[k] -= v }
      if Integer===@factor && Integer===x.factor && x.factor.abs!=1
	@factor = Rational(@factor,x.factor)
      else
	@factor /= x.factor
      end
      self
    end

    def self.rdiv(x,y)
      self.new(x).rdiv!(y)
    end

    def rdiv!(x)
      x = Unit.new(x) if !x.kind_of?(Unit)
      x.dim.each{|k,v| @dim[k] += v }
      @factor = Rational(@factor,x.factor)
      self
    end

    def self.inv(x)
      self.new(x).inv!
    end

    def inv!
      @dim.each{|k,v| @dim[k] = -v }
      @factor = 1/@factor
      self
    end

    def **(x)
      dup.pow!(x)
    end

    def pow!(x)
      x = Utils.as_numeric(x)
      @dim.each{|k,v| @dim[k] *= x }
      @factor **= x
      self
    end

    def self.func(fn, x)
      if fn=='ln'
	fn = 'log'
      end
      z = Unit.new(x)
      z.factor = Math.send(fn,z.to_num)
      z
    end

    def coerce(x)
      [Unit.new(x), self]
    end

    def self.import_units(data=nil,locale=nil)
      str = ""
      locale = locale || ENV['LOCALE']
      data = self.units_dat if data.nil?
      skip = false

      data.each_line do |line|
	line.chomp!

	if /^!(end)?locale(?: (\S+))?/ =~ line
	  ed, lc = $1, $2
	  if ed.nil? && /^#{lc}/ !~ locale
	    skip = true
	  else
	    skip = false
	  end
	  next
	end

	next if skip

	if /([^#]*)\s*#?/ =~ line
	  line = $1
	end
	if /(.*)\\$/ =~ line
	  str.concat $1+" "
	  next
	else
	  str.concat line
	end

        if /^([A-Za-z_0-9À-ÿ%$"'-]+)\s+([^#]+)/ =~ str #"
	  name,repr = $1,$2.strip

	  if /^(.*)-$/ =~ name
	    name = $1
	    if PREFIX[name]
	      warn "multiply-defined prefix: #{name}"
	    end
	    PREFIX[name] = repr
	  else
	    if LIST[name]
	      warn "multiply-defined unit: #{name}"
	    end
	    LIST[name] = repr
	  end
	end
	str = ""
      end

      if true
	LIST["pi"] = BaseUnit.new("pi",true,Math::PI)
      end

      x = PREFIX.keys.sort{|a,b|
	s = b.size-a.size
	(s==0) ? (a<=>b) : s
      }.join("|")
      @@prefix_regex = /^(#{x})(.+)$/

      PREFIX.each do |k,v|
	if v.kind_of? String
	  begin
	    PREFIX[k] = Parse.new.parse(v)
	  rescue
	  end
	end
	p [k,PREFIX[k]] if debug
      end

      LIST.each do |k,v|
	if v.kind_of? String
	  v = self.find_unit(k)
	end
	p [k,v] if debug
      end

      OffsetUnit.import_temperature

      #puts "-- delete:" 
      LIST.delete_if {|k,v|
	v.nil? or v.kind_of? String
      }
      PREFIX.delete_if{|k,v|
	v.nil? or v.kind_of? String
      }

      puts "#{LIST.size} units, #{PREFIX.size} prefixes"
    end

    def self.prefix_regex
      @@prefix_regex
    end

    def self.find_prefix(arg)
      if Unit.prefix_regex =~ arg
	pfx,sfx = $1,$2
	if pfx and stem = Unit.find_unit_stem(sfx)
	  begin
	    if PREFIX[pfx].kind_of? String
	      PREFIX[pfx] = Parse.new.parse(pfx)
	    end
	    return PREFIX[pfx] * stem
	  rescue
	  end
	end
      end
      nil
    end

    def self.find_unit_stem(x)
      unit =  LIST[k=x] ||
	( /(.*(?:s|z|ch))es$/ =~ x && LIST[k=$1] ) ||
	( /(.*)s$/ =~ x && LIST[k=$1] )
      if unit.kind_of? String
	if /^!(\w*)/ =~ unit
	  flag = ($1 == "dimensionless")
	  # p [x,flag]
	  LIST[k] = BaseUnit.new(x,flag)
	else
	  begin
	    u = Parse.new.parse(unit)
	    LIST[k] = Unit.new(u,k)
	  rescue
	  end
	end
      end
      LIST[k]
    end

    def self.find_unit(x)
      prefix = nil
      unit = Unit.find_unit_stem(x)
      return unit if unit
      unit = PREFIX[x]
      return unit if unit
      unit = Unit.find_prefix(x)
      return unit if unit
      puts "!! no unit found: #{x} !!" if debug
      nil
    end

    def self.parse(str)
      return Parse.new.parse(str)
      u = Unit.find_unit(str)
      if !u
	u = Parse.new.parse(str)
      end
      return u
    end
  end

  class BaseUnit < Unit
    def initialize(s,dimless=false,v=1)
      case s
      when String
	@name = s
	@factor = 1
	@dim = {s=>1}
	@dim.default = 0
	@dimensionless = dimless
	@irrational = v
      else
	raise "argument must be String: #{s}"
      end
    end

    def dimensionless?
      @dimensionless
    end

    attr_reader :irrational
  end

  class OffsetUnit < Unit

    def self.import_temperature
      # K = C + 273.15
      # C = (F-32)*5/9
      # K = (F-32)*5/9 + 273.15 = F*5/9-32*5/9 + 273.15
      zero_degc = LIST["stdtemp"].get_factor
      LIST["tempC"] = OffsetUnit.new(LIST["K"],"tempC",zero_degc)
      p LIST["tempC"]  if debug
      LIST["tempF"] = OffsetUnit.new(LIST["K"]*Rational(5,9),"tempF",
				     zero_degc-32*Rational(5,9))
      p LIST["tempF"] if debug
    end

    def initialize(arg,name,offset)
      @offset = offset
      super(arg,name)
    end

    def convert_to_base(x)
      #puts "from#{@name}toB #{x} * #{@factor} + #{@offset}"
      x * get_factor + @offset
    end

    def convert_from_base(x)
      #puts "fromBto#{@name} (#{x} - #{@offset}) / #{@factor}"
      (x - @offset) / get_factor
    end

    def not_allowed(*a)
      raise "unit operation is not allowed"
    end

    def allowed_with_numeric(x)
      raise "to be implemented"
    end

    %w[+ - **].each do |x|
      alias_method x, :not_allowed
    end

    %w[* /].each do |x|
      alias_method x, :allowed_with_numeric
    end
  end
end
