SHELL = /bin/sh
RUBY = ruby
RACC = racc
RACCFLAGS = -E
INSTALL = $(RUBY) -r ftools -e 'File::install(ARGV[0], ARGV[1], 0644, true)'
MKDIR   = $(RUBY) -r ftools -e 'File::makedirs(*ARGV)'
RM      = $(RUBY) -r ftools -e 'File::rm_f(*Dir[ARGV.join(" ")])'

sitedir = $(DESTDIR)

parse = parse.rb
dump = lib/quanty/units.dump

all: $(parse) 

$(parse): parse.y
	$(RACC) $(RACCFLAGS) -o $(parse) parse.y

$(dump): units.dat
	$(RUBY) mkdump.rb $(dump)

clean: # $(parse) $(dump)
	@$(RM) $(parse) $(dump)

install: $(sitedir)/quanty/units.dump

site-install: $(sitedir)/quanty/units.dump

$(sitedir)/quanty/units.dump: $(dump)
	@$(MKDIR) $(sitedir)/
	@$(INSTALL) lib//quanty.rb $(sitedir)//quanty.rb
	@$(MKDIR) $(sitedir)/quanty
	@$(INSTALL) lib/quanty/main.rb $(sitedir)/quanty/main.rb
	@$(INSTALL) lib/quanty/fact.rb $(sitedir)/quanty/fact.rb
	@$(INSTALL) lib/quanty/parse.rb $(sitedir)/quanty/parse.rb
	@$(INSTALL) lib/quanty/units.dump $(sitedir)/quanty/units.dump

