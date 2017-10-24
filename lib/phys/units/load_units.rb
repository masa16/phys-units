# -*- coding: utf-8 -*-

Phys::Unit.import_units <<EOL
#
# This file is the units database for use with GNU units, a units conversion
# program by Adrian Mariano adrianm@gnu.org
#
# March 2017 Version 2.16
#
# Copyright (C) 1996-2002, 2004-2017
# Free Software Foundation, Inc
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor,
# Boston, MA  02110-1301  USA
#
############################################################################
#
# Improvements and corrections are welcome.
#
# Fundamental constants in this file are the 2014 CODATA recommended values.
#
# Most units data was drawn from
#            1. NIST Special Publication 811, Guide for the
#                 Use of the International System of Units (SI).
#                 Barry N. Taylor. 1995
#            2. CRC Handbook of Chemistry and Physics 70th edition
#            3. Oxford English Dictionary
#            4. Websters New Universal Unabridged Dictionary
#            5. Units of Measure by Stephen Dresner
#            6. A Dictionary of English Weights and Measures by Ronald Zupko
#            7. British Weights and Measures by Ronald Zupko
#            8. Realm of Measure by Isaac Asimov
#            9. United States standards of weights and measures, their
#                   creation and creators by Arthur H. Frazier.
#           10. French weights and measures before the Revolution: a
#                   dictionary of provincial and local units by Ronald Zupko
#           11. Weights and Measures: their ancient origins and their
#                   development in Great Britain up to AD 1855 by FG Skinner
#           12. The World of Measurements by H. Arthur Klein
#           13. For Good Measure by William Johnstone
#           14. NTC's Encyclopedia of International Weights and Measures
#                   by William Johnstone
#           15. Sizes by John Lord
#           16. Sizesaurus by Stephen Strauss
#           17. CODATA Recommended Values of Physical Constants available at
#                   http://physics.nist.gov/cuu/Constants/index.html
#           18. How Many?  A Dictionary of Units of Measurement.  Available at
#                   http://www.unc.edu/~rowlett/units/index.html
#           19. Numericana.  http://www.numericana.com
#           20. UK history of measurement
#                   http://www.ukmetrication.com/history.htm
#           21. NIST Handbook 44, Specifications, Tolerances, and
#                 Other Technical Requirements for Weighing and Measuring
#                 Devices. 2011
#           22. NIST Special Publication 447, Weights and Measures Standards
#                 of the the United States: a brief history. Lewis V. Judson.
#                 1963; rev. 1976
#           23. CRC Handbook of Chemistry and Physics, 96th edition
#           24. Dictionary of Scientific Units, 6th ed.  H.G.  Jerrard and D.B.
#                 McNeill. 1992
#
# Thanks to Jeff Conrad for assistance in ferreting out unit definitions.
#
###########################################################################
#
# If units you use are missing or defined incorrectly, please contact me.
# If your country's local units are missing and you are willing to supply
# them, please send me a list.
#
# I added shoe size information but I'm not convinced that it's correct.
# If you know anything about shoe sizes please contact me.
#
###########################################################################

###########################################################################
#
# Brief Philosophy of this file
#
# Most unit definitions are made in terms of integers or simple fractions of
# other definitions.  The typical exceptions are when converting between two
# different unit systems, or the values of measured physical constants.  In
# this file definitions are given in the most natural and revealing way in
# terms of integer factors.
#
# If you make changes be sure to run 'units --check' to check your work.
#
# The file is USA-centric, but there is some modest effort to support other
# countries.  This file is now coded in UTF-8.  To support environments where
# UTF-8 is not available, definitions that require this character set are
# wrapped in !utf8 directives.
#
# When a unit name is used in different countries with the different meanings
# the system should be as follows:
#
# Suppose countries ABC and XYZ both use the "foo".  Then globally define
#
#   ABCfoo  <some value>
#   XYZfoo  <different value>
#
# Then, using the !locale directive, define the "foo" appropriately for each of
# the two countries with a definition like
#
# !locale ABC
#    foo  ABCfoo
# !endlocale
#
###########################################################################

!locale en_US
!  set UNITS_ENGLISH US
!endlocale

!locale en_GB
!  set UNITS_ENGLISH GB
!endlocale

!set UNITS_ENGLISH US   # Default setting for English units

###########################################################################
#                                                                         #
# Primitive units.  Any unit defined to contain a '!' character is a      #
# primitive unit which will not be reduced any further.  All units should #
# reduce to primitive units.                                              #
#                                                                         #
###########################################################################

#
# SI units
#

kg        !      # Mass of the international prototype
kilogram  kg

s         !      # Duration of 9192631770 periods of the radiation
second    s      #   corresponding to the transition between the two hyperfine
                 #   levels of the ground state of the cesium-133 atom

m         !      # Length of the path traveled by light in a vacuum
meter     m      #   during 1|299792458 seconds.  Originally meant to be
                 #   1e-7 of the length along a meridian from the equator
                 #   to a pole.

A         !      # The current which produces a force of 2e-7 N/m between two
ampere    A      #   infinitely long wires that are 1 meter apart
amp       ampere

cd        !      # Luminous intensity in a given direction of a source which
candela   cd     #   emits monochromatic radiation at 540e12 Hz with radiant
                 #   intensity 1|683 W/steradian.  (This differs from radiant
                 #   intensity (W/sr) in that it is adjusted for human
                 #   perceptual dependence on wavelength.  The frequency of
                 #   540e12 Hz (yellow) is where human perception is most
                 #   efficient.)

mol       !      # The amount of substance of a system which contains as many
mole      mol    #   elementary entities as there are atoms in 0.012 kg of
                 #   carbon 12.  The elementary entities must be specified and
                 #   may be atoms, molecules, ions, electrons, or other
                 #   particles or groups of particles.  It is understood that
                 #   unbound atoms of carbon 12, at rest and in the ground
                 #   state, are referred to.

K         !      # 1|273.16 of the thermodynamic temperature of the triple
kelvin    K      #   point of water

#
# The radian and steradian are defined as dimensionless primitive units.
# The radian is equal to m/m and the steradian to m^2/m^2 so these units are
# dimensionless.  Retaining them as named units is useful because it allows
# clarity in expressions and makes the meaning of unit definitions more clear.
# These units will reduce to 1 in conversions but not for sums of units or for
# arguments to functions.
#

radian    !dimensionless   # The angle subtended at the center of a circle by
                           #   an arc equal in length to the radius of the
                           #   circle
sr        !dimensionless   # Solid angle which cuts off an area of the surface
steradian sr               #   of the sphere equal to that of a square with
                           #   sides of length equal to the radius of the
                           #   sphere

#
# Some primitive non-SI units
#

US$       !      # The US dollar is chosen arbitrarily to be the primitive
                 #   unit of money.

bit       !      # Basic unit of information (entropy).  The entropy in bits
                 #   of a random variable over a finite alphabet is defined
                 #   to be the sum of -p(i)*log2(p(i)) over the alphabet where
                 #   p(i) is the probability that the random variable takes
                 #   on the value i.

###########################################################################
#                                                                         #
# Prefixes (longer names must come first)                                 #
#                                                                         #
###########################################################################

yotta-                  1e24     # Greek or Latin octo, "eight"
zetta-                  1e21     # Latin septem, "seven"
exa-                    1e18     # Greek hex, "six"
peta-                   1e15     # Greek pente, "five"
tera-                   1e12     # Greek teras, "monster"
giga-                   1e9      # Greek gigas, "giant"
mega-                   1e6      # Greek megas, "large"
myria-                  1e4      # Not an official SI prefix
kilo-                   1e3      # Greek chilioi, "thousand"
hecto-                  1e2      # Greek hekaton, "hundred"
deca-                   1e1      # Greek deka, "ten"
deka-                   deca
deci-                   1e-1     # Latin decimus, "tenth"
centi-                  1e-2     # Latin centum, "hundred"
milli-                  1e-3     # Latin mille, "thousand"
micro-                  1e-6     # Latin micro or Greek mikros, "small"
nano-                   1e-9     # Latin nanus or Greek nanos, "dwarf"
pico-                   1e-12    # Spanish pico, "a bit"
femto-                  1e-15    # Danish-Norwegian femten, "fifteen"
atto-                   1e-18    # Danish-Norwegian atten, "eighteen"
zepto-                  1e-21    # Latin septem, "seven"
yocto-                  1e-24    # Greek or Latin octo, "eight"

quarter-                1|4
semi-                   0.5
demi-                   0.5
hemi-                   0.5
half-                   0.5
double-                 2
triple-                 3
treble-                 3

kibi-                   2^10     # In response to the convention of illegally
mebi-                   2^20     # and confusingly using metric prefixes for
gibi-                   2^30     # powers of two, the International
tebi-                   2^40     # Electrotechnical Commission aproved these
pebi-                   2^50     # binary prefixes for use in 1998.  If you
exbi-                   2^60     # want to refer to "megabytes" using the
Ki-                     kibi     # binary definition, use these prefixes.
Mi-                     mebi
Gi-                     gibi
Ti-                     tebi
Pi-                     pebi
Ei-                     exbi

Y-                      yotta
Z-                      zetta
E-                      exa
P-                      peta
T-                      tera
G-                      giga
M-                      mega
k-                      kilo
h-                      hecto
da-                     deka
d-                      deci
c-                      centi
m-                      milli
u-                      micro   # it should be a mu but u is easy to type
n-                      nano
p-                      pico
f-                      femto
a-                      atto
z-                      zepto
y-                      yocto

#
# Names of some numbers
#

one                     1
two                     2
double                  2
couple                  2
three                   3
triple                  3
four                    4
quadruple               4
five                    5
quintuple               5
six                     6
seven                   7
eight                   8
nine                    9
ten                     10
eleven                  11
twelve                  12
thirteen                13
fourteen                14
fifteen                 15
sixteen                 16
seventeen               17
eighteen                18
nineteen                19
twenty                  20
thirty                  30
forty                   40
fifty                   50
sixty                   60
seventy                 70
eighty                  80
ninety                  90
hundred                 100
thousand                1000
million                 1e6

twoscore                two score
threescore              three score
fourscore               four score
fivescore               five score
sixscore                six score
sevenscore              seven score
eightscore              eight score
ninescore               nine score
tenscore                ten score
twelvescore             twelve score

# These number terms were described by N. Chuquet and De la Roche in the 16th
# century as being successive powers of a million.  These definitions are still
# used in most European countries.  The current US definitions for these
# numbers arose in the 17th century and don't make nearly as much sense.  These
# numbers are listed in the CRC Concise Encyclopedia of Mathematics by Eric
# W. Weisstein.

shortbillion               1e9
shorttrillion              1e12
shortquadrillion           1e15
shortquintillion           1e18
shortsextillion            1e21
shortseptillion            1e24
shortoctillion             1e27
shortnonillion             1e30
shortnoventillion          shortnonillion
shortdecillion             1e33
shortundecillion           1e36
shortduodecillion          1e39
shorttredecillion          1e42
shortquattuordecillion     1e45
shortquindecillion         1e48
shortsexdecillion          1e51
shortseptendecillion       1e54
shortoctodecillion         1e57
shortnovemdecillion        1e60
shortvigintillion          1e63

centillion              1e303
googol                  1e100

longbillion               million^2
longtrillion              million^3
longquadrillion           million^4
longquintillion           million^5
longsextillion            million^6
longseptillion            million^7
longoctillion             million^8
longnonillion             million^9
longnoventillion          longnonillion
longdecillion             million^10
longundecillion           million^11
longduodecillion          million^12
longtredecillion          million^13
longquattuordecillion     million^14
longquindecillion         million^15
longsexdecillion          million^16
longseptdecillion         million^17
longoctodecillion         million^18
longnovemdecillion        million^19
longvigintillion          million^20

# These numbers fill the gaps left by the long system above.

milliard                1000 million
billiard                1000 million^2
trilliard               1000 million^3
quadrilliard            1000 million^4
quintilliard            1000 million^5
sextilliard             1000 million^6
septilliard             1000 million^7
octilliard              1000 million^8
nonilliard              1000 million^9
noventilliard           nonilliard
decilliard              1000 million^10

# For consistency

longmilliard              milliard
longbilliard              billiard
longtrilliard             trilliard
longquadrilliard          quadrilliard
longquintilliard          quintilliard
longsextilliard           sextilliard
longseptilliard           septilliard
longoctilliard            octilliard
longnonilliard            nonilliard
longnoventilliard         noventilliard
longdecilliard            decilliard

# The long centillion would be 1e600.  The googolplex is another
# familiar large number equal to 10^googol.  These numbers give overflows.

#
# The short system prevails in English speaking countries
#

billion                 shortbillion
trillion                shorttrillion
quadrillion             shortquadrillion
quintillion             shortquintillion
sextillion              shortsextillion
septillion              shortseptillion
octillion               shortoctillion
nonillion               shortnonillion
noventillion            shortnoventillion
decillion               shortdecillion
undecillion             shortundecillion
duodecillion            shortduodecillion
tredecillion            shorttredecillion
quattuordecillion       shortquattuordecillion
quindecillion           shortquindecillion
sexdecillion            shortsexdecillion
septendecillion         shortseptendecillion
octodecillion           shortoctodecillion
novemdecillion          shortnovemdecillion
vigintillion            shortvigintillion

#
# Numbers used in India
#

lakh                    1e5
crore                   1e7
arab                    1e9
kharab                  1e11
neel                    1e13
padm                    1e15
shankh                  1e17

#############################################################################
#                                                                           #
# Derived units which can be reduced to the primitive units                 #
#                                                                           #
#############################################################################



#
# Named SI derived units (officially accepted)
#

newton                  kg m / s^2   # force
N                       newton
pascal                  N/m^2        # pressure or stress
Pa                      pascal
joule                   N m          # energy
J                       joule
watt                    J/s          # power
W                       watt
coulomb                 A s          # charge
C                       coulomb
volt                    W/A          # potential difference
V                       volt
ohm                     V/A          # electrical resistance
siemens                 A/V          # electrical conductance
S                       siemens
farad                   C/V          # capacitance
F                       farad
weber                   V s          # magnetic flux
Wb                      weber
henry                   Wb/A         # inductance
H                       henry
tesla                   Wb/m^2       # magnetic flux density
T                       tesla
hertz                   /s           # frequency
Hz                      hertz

#
# Dimensions.  These are here to help with dimensional analysis and
# because they will appear in the list produced by hitting '?' at the
# "You want:" prompt to tell the user the dimension of the unit.
#

LENGTH                  meter
AREA                    LENGTH^2
VOLUME                  LENGTH^3
MASS                    kilogram
CURRENT                 ampere
AMOUNT                  mole
ANGLE                   radian
SOLID_ANGLE             steradian
MONEY                   US$
FORCE                   newton
PRESSURE                FORCE / AREA
STRESS                  FORCE / AREA
CHARGE                  coulomb
CAPACITANCE             farad
RESISTANCE              ohm
CONDUCTANCE             siemens
INDUCTANCE              henry
FREQUENCY               hertz
VELOCITY                LENGTH / TIME
ACCELERATION            VELOCITY / TIME
DENSITY                 MASS / VOLUME
LINEAR_DENSITY          MASS / LENGTH
VISCOSITY               FORCE TIME / AREA
KINEMATIC_VISCOSITY     VISCOSITY / DENSITY


#
# units derived easily from SI units
#

gram                    millikg
gm                      gram
g                       gram
tonne                   1000 kg
t                       tonne
metricton               tonne
sthene                  tonne m / s^2
funal                   sthene
pieze                   sthene / m^2
quintal                 100 kg
bar                     1e5 Pa     # About 1 atm
b                       bar
vac                     millibar
micron                  micrometer # One millionth of a meter
bicron                  picometer  # One brbillionth of a meter
cc                      cm^3
are                     100 m^2
a                       are
liter                   1000 cc       # The liter was defined in 1901 as the
oldliter                1.000028 dm^3 # space occupied by 1 kg of pure water at
L                       liter         # the temperature of its maximum density
l                       liter         # under a pressure of 1 atm.  This was
                                      # supposed to be 1000 cubic cm, but it
                                      # was discovered that the original
                                      # measurement was off.  In 1964, the
                                      # liter was redefined to be exactly 1000
                                      # cubic centimeters.
mho                     siemens    # Inverse of ohm, hence ohm spelled backward
galvat                  ampere     # Named after Luigi Galvani
angstrom                1e-10 m    # Convenient for describing molecular sizes
xunit                   xunit_cu      # Used for measuring x-ray wavelengths.
siegbahn                xunit         # Originally defined to be 1|3029.45 of
xunit_cu             1.00207697e-13 m # the spacing of calcite planes at 18
xunit_mo             1.00209952e-13 m # degC.  It was intended to be exactly
                                      # 1e-13 m, but was later found to be
                                      # slightly off.  Current usage is with
                                      # reference to common x-ray lines, either
                                      # the K-alpha 1 line of copper or the
                                      # same line of molybdenum.
angstromstar            1.00001495 angstrom # Defined by JA Bearden in 1965
fermi                   1e-15 m    # Convenient for describing nuclear sizes
                                   #   Nuclear radius is from 1 to 10 fermis
barn                    1e-28 m^2  # Used to measure cross section for
                                   #   particle physics collision, said to
                                   #   have originated in the phrase "big as
                                   #   a barn".
shed                    1e-24 barn # Defined to be a smaller companion to the
                                   #   barn, but it's too small to be of
                                   #   much use.
brewster                micron^2/N # measures stress-optical coef
diopter                 /m         # measures reciprocal of lens focal length
fresnel                 1e12 Hz    # occasionally used in spectroscopy
shake                   1e-8 sec
svedberg                1e-13 s    # Used for measuring the sedimentation
                                   # coefficient for centrifuging.
gamma                   microgram  # Also used for 1e-9 tesla
lambda                  microliter
spat                    1e12 m     # Rarely used for astronomical measurements
preece                  1e13 ohm m # resistivity
planck                  J s        # action of one joule over one second
sturgeon                /henry     # magnetic reluctance
daraf                   1/farad    # elastance (farad spelled backwards)
leo                     10 m/s^2
poiseuille              N s / m^2  # viscosity
mayer                   J/g K      # specific heat
mired                   / microK   # reciprocal color temperature.  The name
                                   #   abbreviates micro reciprocal degree.
crocodile               megavolt   # used informally in UK physics labs
metricounce             25 g
mounce                  metricounce
finsenunit              1e5 W/m^2  # Measures intensity of ultraviolet light
                                   # with wavelength 296.7 nm.
fluxunit                1e-26 W/m^2 Hz # Used in radio astronomy to measure
                                       #   the energy incident on the receiving
                                       #   body across a specified frequency
                                       #   bandwidth.  [12]
jansky                  fluxunit   # K. G. Jansky identified radio waves coming
Jy                      jansky     # from outer space in 1931.
flick       W / cm^2 sr micrometer # Spectral radiance or irradiance
pfu                    / cm^2 sr s # particle flux unit -- Used to measure
                                   #   rate at which particles are received by
                                   #   a spacecraft as particles per solid
                                   #   angle per detector area per second. [18]
pyron            cal_IT / cm^2 min # Measures heat flow from solar radiation,
                                   #   from Greek work "pyr" for fire.
katal                   mol/sec    # Measure of the amount of a catalyst.  One
kat                     katal      #   katal of catalyst enables the reaction
                                   #   to consume or produce on mol/sec.
solarluminosity         384.6e24 W # A common yardstick for comparing the
                                   #   output of different stars.
                # http://nssdc.gsfc.nasa.gov/planetary/factsheet/sunfact.html

#
# time
#

sec                     s
minute                  60 s
min                     minute
hour                    60 min
hr                      hour
day                     24 hr
d                       day
da                      day
week                    7 day
wk                      week
sennight                7 day
fortnight               14 day
blink                   1e-5 day   # Actual human blink takes 1|3 second
ce                      1e-2 day
cron                    1e6 years
watch                   4 hours    # time a sentry stands watch or a ship's
                                   # crew is on duty.
bell                    1|8 watch  # Bell would be sounded every 30 minutes.

# French Revolutionary Time or Decimal Time.  It was Proposed during
# the French Revolution.  A few clocks were made, but it never caught
# on.  In 1998 Swatch defined a time measurement called ".beat" and
# sold some watches that displayed time in this unit.

decimalhour             1|10 day
decimalminute           1|100 decimalhour
decimalsecond           1|100 decimalminute
beat                    decimalminute          # Swatch Internet Time

#
# angular measure
#

circle                  2 pi radian
degree                  1|360 circle
deg                     degree
arcdeg                  degree
arcmin                  1|60 degree
arcminute               arcmin
'                       arcmin
arcsec                  1|60 arcmin
arcsecond               arcsec
"                       arcsec
''                      "
rightangle              90 degrees
quadrant                1|4 circle
quintant                1|5 circle
sextant                 1|6 circle

sign                    1|12 circle # Angular extent of one sign of the zodiac
turn                    circle
revolution              turn
rev                     turn
pulsatance              radian / sec
gon                     1|100 rightangle  # measure of grade
grade                   gon
centesimalminute        1|100 grade
centesimalsecond        1|100 centesimalminute
milangle                1|6400 circle     # Official NIST definition.
                                          # Another choice is 1e-3 radian.
pointangle              1|32 circle  # Used for reporting compass readings
centrad                 0.01 radian  # Used for angular deviation of light
                                     # through a prism.
mas                     milli arcsec # Used by astronomers
seclongitude            circle (seconds/day) # Astronomers measure longitude
                                     # (which they call right ascension) in
                                     # time units by dividing the equator into
                                     # 24 hours instead of 360 degrees.
#
# Some geometric formulas
#

circlearea(r)   units=[m;m^2] range=[0,) pi r^2 ; sqrt(circlearea/pi)
spherevolume(r) units=[m;m^3] range=[0,) 4|3 pi r^3 ; \
                                         cuberoot(spherevolume/4|3 pi)
spherevol()     spherevolume
square(x)       range=[0,)          x^2 ; sqrt(square)

#
# Solid angle measure
#

sphere                  4 pi sr
squaredegree            1|180^2 pi^2 sr
squareminute            1|60^2 squaredegree
squaresecond            1|60^2 squareminute
squarearcmin            squareminute
squarearcsec            squaresecond
sphericalrightangle     0.5 pi sr
octant                  0.5 pi sr

#
# Concentration measures
#

percent                 0.01
%                       percent
mill                    0.001     # Originally established by Congress in 1791
                                  # as a unit of money equal to 0.001 dollars,
                                  # it has come to refer to 0.001 in general.
                                  # Used by some towns to set their property
                                  # tax rate, and written with a symbol similar
                                  # to the % symbol but with two 0's in the
                                  # denominator.  [18]
proof                   1|200     # Alcohol content measured by volume at
                                  # 60 degrees Fahrenheit.  This is a USA
                                  # measure.  In Europe proof=percent.
ppm                     1e-6
partspermillion         ppm
ppb                     1e-9
partsperbillion         ppb       # USA billion
ppt                     1e-12
partspertrillion        ppt       # USA trillion
karat                   1|24      # measure of gold purity
caratgold               karat
gammil                  mg/l
basispoint              0.01 %    # Used in finance
fine                    1|1000    # Measure of gold purity

# The pH scale is used to measure the concentration of hydronium (H3O+) ions in
# a solution.  A neutral solution has a pH of 7 as a result of dissociated
# water molecules.

pH(x) units=[1;mol/liter] range=(0,) 10^(-x) mol/liter ; (-log(pH liters/mol))


#
# Temperature
#
# Two types of units are defined: units for converting temperature differences
# and functions for converting absolute temperatures.  Conversions for
# differences start with "deg" and conversions for absolute temperature start
# with "temp".
#

TEMPERATURE             kelvin
TEMPERATURE_DIFFERENCE  kelvin

# In 1741 Anders Celsius introduced a temperature scale with water boiling at
# 0 degrees and freezing at 100 degrees at standard pressure. After his death
# the fixed points were reversed and the scale was called the centigrade
# scale.  Due to the difficulty of accurately measuring the temperature of
# melting ice at standard pressure, the centigrade scale was replaced in 1954
# by the Celsius scale which is defined by subtracting 273.15 from the
# temperature in Kelvins.  This definition differed slightly from the old
# centigrade definition, but the Kelvin scale depends on the triple point of
# water rather than a melting point, so it can be measured accurately.

tempC(x) units=[1;K] domain=[-273.15,) range=[0,) \
                             x K + stdtemp ; (tempC +(-stdtemp))/K
tempcelsius() tempC
degcelsius              K
degC                    K

# Fahrenheit defined his temperature scale by setting 0 to the coldest
# temperature he could produce in his lab with a salt water solution and by
# setting 96 degrees to body heat.  In Fahrenheit's words:
#
#    Placing the thermometer in a mixture of sal ammoniac or sea
#    salt, ice, and water a point on the scale will be found which
#    is denoted as zero. A second point is obtained if the same
#    mixture is used without salt. Denote this position as 30. A
#    third point, designated as 96, is obtained if the thermometer
#    is placed in the mouth so as to acquire the heat of a healthy
#    man."  (D. G. Fahrenheit, Phil. Trans. (London) 33, 78, 1724)

tempF(x) units=[1;K] domain=[-459.67,) range=[0,) \
                (x+(-32)) degF + stdtemp ; (tempF+(-stdtemp))/degF + 32
tempfahrenheit() tempF
degfahrenheit           5|9 degC
degF                    5|9 degC


degreesrankine          degF              # The Rankine scale has the
degrankine              degreesrankine    # Fahrenheit degree, but its zero
degreerankine           degF              # is at absolute zero.
degR                    degrankine
tempR                   degrankine
temprankine             degrankine

tempreaumur(x)    units=[1;K] domain=[-218.52,) range=[0,) \
                  x degreaumur+stdtemp ; (tempreaumur+(-stdtemp))/degreaumur
degreaumur              10|8 degC # The Reaumur scale was used in Europe and
                                  # particularly in France.  It is defined
                                  # to be 0 at the freezing point of water
                                  # and 80 at the boiling point.  Reaumur
                                  # apparently selected 80 because it is
                                  # divisible by many numbers.

degK                    K         # "Degrees Kelvin" is forbidden usage.
tempK                   K         # For consistency

# Gas mark is implemented below but in a terribly ugly way.  There is
# a simple formula, but it requires a conditional which is not
# presently supported.
#
# The formula to convert to degrees Fahrenheit is:
#
# 25 log2(gasmark) + k_f   gasmark<=1
# 25 (gasmark-1) + k_f     gasmark>=1
#
# k_f = 275
#
gasmark[degR] \
  .0625    634.67 \
  .125     659.67 \
  .25      684.67 \
  .5       709.67 \
  1        734.67 \
  2        759.67 \
  3        784.67 \
  4        809.67 \
  5        834.67 \
  6        859.67 \
  7        884.67 \
  8        909.67 \
  9        934.67 \
  10       959.67

# Units cannot handle wind chill or heat index because they are two variable
# functions, but they are included here for your edification.  Clearly these
# equations are the result of a model fitting operation.
#
# wind chill index (WCI) a measurement of the combined cooling effect of low
#      air temperature and wind on the human body. The index was first defined
#      by the American Antarctic explorer Paul Siple in 1939. As currently used
#      by U.S. meteorologists, the wind chill index is computed from the
#      temperature T (in °F) and wind speed V (in mi/hr) using the formula:
#          WCI = 0.0817(3.71 sqrt(V) + 5.81 - 0.25V)(T - 91.4) + 91.4.
#      For very low wind speeds, below 4 mi/hr, the WCI is actually higher than
#      the air temperature, but for higher wind speeds it is lower than the air
#      temperature.
#
# heat index (HI or HX) a measure of the combined effect of heat and
#      humidity on the human body. U.S. meteorologists compute the index
#      from the temperature T (in °F) and the relative humidity H (as a
#      value from 0 to 1).
#        HI = -42.379 + 2.04901523 T + 1014.333127 H - 22.475541 TH
#             - .00683783 T^2 - 548.1717 H^2 + 0.122874 T^2 H + 8.5282 T H^2
#             - 0.0199 T^2 H^2.

#
# Physical constants
#

# Basic constants

pi                      3.14159265358979323846
c                       2.99792458e8 m/s # speed of light in vacuum (exact)
light                   c
mu0                     4 pi 1e-7 H/m    # permeability of vacuum (exact)
epsilon0                1/mu0 c^2        # permittivity of vacuum (exact)
energy                  c^2              # convert mass to energy
e                     1.6021766208e-19 C # electron charge
h                   4.135667662e-15 eV s # Planck constant
hbar                    h / 2 pi
spin                    hbar
G               6.67408e-11 N m^2 / kg^2 # Newtonian gravitational constant
                                         #    This is the NIST 2006 value.
                                         #    The relative uncertainty on this
                                         #    is 1e-4.
coulombconst            1/4 pi epsilon0  # listed as "k" sometimes

# Physico-chemical constants

atomicmassunit        1.660539040e-27 kg # atomic mass unit (defined to be
u                       atomicmassunit   #   1|12 of the mass of carbon 12)
amu                     atomicmassunit
amu_chem                1.66026e-27 kg   # 1|16 of the weighted average mass of
                                         #   the 3 naturally occuring neutral
                                         #   isotopes of oxygen
amu_phys                1.65981e-27 kg   # 1|16 of the mass of a neutral
                                         #   oxygen 16 atom
dalton                  u                # Maybe this should be amu_chem?
avogadro                grams/amu mol    # size of a mole
N_A                     avogadro
gasconstant             k N_A            # molar gas constant
R                       gasconstant
boltzmann             1.38064852e-23 J/K # Boltzmann constant
k                       boltzmann
kboltzmann              boltzmann
molarvolume         mol R stdtemp / atm  # Volume occupied by one mole of an
                                         #   ideal gas at STP.
loschmidt     avogadro mol / molarvolume # Molecules per cubic meter of an
                                         #   ideal gas at STP.  Loschmidt did
                                         #   work similar to Avogadro.
stefanboltzmann pi^2 k^4 / 60 hbar^3 c^2 # The power per area radiated by a
sigma                   stefanboltzmann  #   blackbody at temperature T is
                                         #   given by sigma T^4.
wiendisplacement        2.8977729e-3 m K # Wien's Displacement Law gives the
                                         #   frequency at which the the Planck
                                         #   spectrum has maximum intensity.
                                         #   The relation is lambda T = b where
                                         #   lambda is wavelength, T is
                                         #   temperature and b is the Wien
                                         #   displacement.  This relation is
                                         #   used to determine the temperature
                                         #   of stars.
K_J90 483597.9 GHz/V    # Direct measurement of the volt is difficult.  Until
K_J   483597.8525 GHz/V #   recently, laboratories kept Weston cadmium cells as
                        #   a reference, but they could drift.  In 1987 the
                        #   CGPM officially recommended the use of the
                        #   Josephson effect as a laboratory representation of
                        #   the volt.  The Josephson effect occurs when two
                        #   superconductors are separated by a thin insulating
                        #   layer.  A "supercurrent" flows across the insulator
                        #   with a frequency that depends on the potential
                        #   applied across the superconductors.  This frequency
                        #   can be very accurately measured.  The Josephson
                        #   constant K_J, which is equal to 2e/h, relates the
                        #   measured frequency to the potential.  Two values
                        #   given, the conventional (exact) value from 1990 and
                        #   the current CODATA measured value.
R_K90 25812.807 ohm     # Measurement of the ohm also presents difficulties.
R_K   25812.8074555 ohm #   The old approach involved maintaining resistances
                        #   that were subject to drift.  The new standard is
                        #   based on the Hall effect.  When a current carrying
                        #   ribbon is placed in a magnetic field, a potential
                        #   difference develops across the ribbon.  The ratio
                        #   of the potential difference to the current is
                        #   called the Hall resistance.  Klaus von Klitzing
                        #   discovered in 1980 that the Hall resistance varies
                        #   in discrete jumps when the magnetic field is very
                        #   large and the temperature very low.  This enables
                        #   accurate realization of the resistance h/e^2 in the
                        #   lab.  Two values given, the conventional (exact)
                        #   value from 1990 and the current CODATA measured
                        #   value.

# Various conventional values

gravity                 9.80665 m/s^2    # std acceleration of gravity (exact)
force                   gravity          # use to turn masses into forces
atm                     101325 Pa        # Standard atmospheric pressure
atmosphere              atm
Hg             13.5951 gram force / cm^3 # Standard weight of mercury (exact)
water                   gram force/cm^3  # Standard weight of water (exact)
waterdensity            gram / cm^3      # Density of water
H2O                     water
wc                      water            # water column
mach                    331.46 m/s       # speed of sound in dry air at STP
standardtemp            273.15 K         # standard temperature
stdtemp                 standardtemp
#normaltemp              tempF(70)        # for gas density, from NIST
#normtemp                normaltemp       # Handbook 44

# Weight of mercury and water at different temperatures using the standard
# force of gravity.

Hg10C         13.5708 force gram / cm^3  # These units, when used to form
Hg20C         13.5462 force gram / cm^3  # pressure measures, are not accurate
Hg23C         13.5386 force gram / cm^3  # because of considerations of the
Hg30C         13.5217 force gram / cm^3  # revised practical temperature scale.
Hg40C         13.4973 force gram / cm^3
Hg60F         13.5574 force gram / cm^3
H2O0C         0.99987 force gram / cm^3
H2O5C         0.99999 force gram / cm^3
H2O10C        0.99973 force gram / cm^3
H2O15C        0.99913 force gram / cm^3
H2O18C        0.99862 force gram / cm^3
H2O20C        0.99823 force gram / cm^3
H2O25C        0.99707 force gram / cm^3
H2O50C        0.98807 force gram / cm^3
H2O100C       0.95838 force gram / cm^3

# Atomic constants

Rinfinity            10973731.568539 /m  # The wavelengths of a spectral series
R_H                     10967760 /m      #   can be expressed as
                                         #     1/lambda = R (1/m^2 - 1/n^2).
                                         #   where R is a number that various
                                         #   slightly from element to element.
                                         #   For hydrogen, R_H is the value,
                                         #   and for heavy elements, the value
                                         #   approaches Rinfinity, which can be
                                         #   computed from
                                         #        m_e c alpha^2 / 2 h
                                         #   with a loss of 4 digits
                                         #   of precision.
alpha                   7.2973525664e-3  # The fine structure constant was
                                         #   introduced to explain fine
                                         #   structure visible in spectral
                                         #   lines.  It can be computed from
                                         #         mu0 c e^2 / 2 h
                                         #   with a loss of 3 digits precision
                                         #   and loss of precision in derived
                                         #   values which use alpha.
bohrradius              alpha / 4 pi Rinfinity
prout                   185.5 keV        # nuclear binding energy equal to 1|12
                                         #   binding energy of the deuteron
# Planck constants

planckmass              2.17651e-8 kg     # sqrt(hbar c / G)
m_P                     planckmass
plancktime              hbar / planckmass c^2
t_P                     plancktime
plancklength            plancktime c
l_P                     plancklength

# Particle radius

electronradius    (1/4 pi epsilon0) e^2 / electronmass c^2   # Classical
deuteronchargeradius    2.1413e-15 m
protonchargeradius      0.8751e-15 m

# Masses of elementary particles

electronmass            5.48579909070e-4 u
m_e                     electronmass
protonmass              1.007276466879 u
m_p                     protonmass
neutronmass             1.00866491588 u
m_n                     neutronmass
muonmass                0.1134289257 u
m_mu                    muonmass
deuteronmass            2.013553212745 u
m_d                     deuteronmass
alphaparticlemass       4.001506179127 u
m_alpha                 alphaparticlemass
taumass                 1.90749 u
m_tau                   taumass
tritonmass              3.01550071632 u
m_t                     tritonmass
helionmass              3.01493224673 u
m_h                     helionmass



# particle wavelengths: the compton wavelength of a particle is
# defined as h / m c where m is the mass of the particle.

electronwavelength      h / m_e c
lambda_C                electronwavelength
protonwavelength        h / m_p c
lambda_C,p              protonwavelength
neutronwavelength       h / m_n c
lambda_C,n              neutronwavelength

# Magnetic moments

bohrmagneton            e hbar / 2 electronmass
mu_B                    bohrmagneton
nuclearmagneton         e hbar /  2 protonmass
mu_N                    nuclearmagneton
mu_mu                  -4.49044826e-26 J/T   # Muon magnetic moment
mu_p                    1.4106067873e-26 J/T # Proton magnetic moment
mu_e                   -928.4764620e-26 J/T  # Electron magnetic moment
mu_n                   -0.96623650e-26 J/T   # Neutron magnetic moment
mu_d                    0.4330735040e-26 J/T # Deuteron magnetic moment
mu_t                    1.504609503e-26 J/T  # Triton magnetic moment
mu_h                   -1.074617522e-26 J/T  # Helion magnetic moment


#
# Units derived from physical constants
#

kgf                     kg force
technicalatmosphere     kgf / cm^2
at                      technicalatmosphere
hyl                     kgf s^2 / m   # Also gram-force s^2/m according to [15]
mmHg                    mm Hg
torr                    atm / 760  # The torr, named after Evangelista
                                   # Torricelli, and is very close to the mm Hg
tor                     Pa         # Suggested in 1913 but seldom used [24].
                                   # Eventually renamed the Pascal.  Don't
                                   # confuse the tor with the torr.
inHg                    inch Hg
inH2O                   inch water
mmH2O                   mm water
eV                      e V      # Energy acquired by a particle with charge e
electronvolt            eV       #   when it is accelerated through 1 V
lightyear               c julianyear # The 365.25 day year is specified in
ly                      lightyear    # NIST publication 811
lightsecond             c s
lightminute             c min
parsec                  au / tan(arcsec)    # Unit of length equal to distance
pc                      parsec              #   from the sun to a point having
                                            #   heliocentric parallax of 1
                                            #   arcsec (derived from parallax
                                            #   second).  A distant object with
                                            #   paralax theta will be about
                                            #   (arcsec/theta) parsecs from the
                                            #   sun (using the approximation
                                            #   that tan(theta) = theta).
rydberg                 h c Rinfinity       # Rydberg energy
crith                   0.089885 gram       # The crith is the mass of one
                                            #   liter of hydrogen at standard
                                            #   temperature and pressure.
amagatvolume            molarvolume
amagat                  mol/amagatvolume    # Used to measure gas densities
lorentz                 bohrmagneton / h c  # Used to measure the extent
                                            #   that the frequency of light
                                            #   is shifted by a magnetic field.
cminv                   h c / cm            # Unit of energy used in infrared
invcm                   cminv               #   spectroscopy.
wavenumber              cminv
kcal_mol                kcal_th / mol N_A   # kcal/mol is used as a unit of
                                            #   energy by physical chemists.
#
# CGS system based on centimeter, gram and second
#

dyne                    cm gram / s^2   # force
dyn                     dyne
erg                     cm dyne         # energy
poise                   gram / cm s     # viscosity, honors Jean Poiseuille
P                       poise
rhe                     /poise          # reciprocal viscosity
stokes                  cm^2 / s        # kinematic viscosity
St                      stokes
stoke                   stokes
lentor                  stokes          # old name
Gal                     cm / s^2        # acceleration, used in geophysics
galileo                 Gal             # for earth's gravitational field
                                        # (note that "gal" is for gallon
                                        # but "Gal" is the standard symbol
                                        # for the gal which is evidently a
                                        # shortened form of "galileo".)
barye                   dyne/cm^2       # pressure
barad                   barye           # old name
kayser                  1/cm            # Proposed as a unit for wavenumber
balmer                  kayser          # Even less common name than "kayser"
kine                    cm/s            # velocity
bole                    g cm / s        # momentum
pond                    gram force
glug                gram force s^2 / cm # Mass which is accelerated at
                                        #   1 cm/s^2 by 1 gram force
darcy           centipoise cm^2 / s atm # Measures permeability to fluid flow.

                                        #   One darcy is the permeability of a
                                        #   medium that allows a flow of cc/s
                                        #   of a liquid of centipoise viscosity
                                        #   under a pressure gradient of
                                        #   atm/cm.  Named for H. Darcy.

mobileohm               cm / dyn s      # mobile ohm, measure of mechanical
                                        #   mobility
mechanicalohm           dyn s / cm      # mechanical resistance
acousticalohm           dyn s / cm^5    # ratio of the sound pressure of
                                        #   1 dyn/cm^2 to a source of strength
                                        #   1 cm^3/s
ray                     acousticalohm
rayl                    dyn s / cm^3    # Specific acoustical resistance
eotvos                  1e-9 Gal/cm     # Change in gravitational acceleration
                                        #   over horizontal distance

# Electromagnetic units derived from the abampere

abampere                10 A            # Current which produces a force of
abamp                   abampere        #   2 dyne/cm between two infinitely
aA                      abampere        #   long wires that are 1 cm apart
biot                    aA              # alternative name for abamp
Bi                      biot
abcoulomb               abamp sec
abcoul                  abcoulomb
abfarad                 abampere sec / abvolt
abhenry                 abvolt sec / abamp
abvolt                  dyne cm  / abamp sec
abohm                   abvolt / abamp
abmho                   /abohm
gauss                   abvolt sec / cm^2
Gs                      gauss
maxwell                 abvolt sec      # Also called the "line"
Mx                      maxwell
oersted                 gauss / mu0
Oe                      oersted
gilbert                 gauss cm / mu0
Gb                      gilbert
Gi                      gilbert
unitpole                4 pi maxwell
emu                     erg/gauss  # "electro-magnetic unit", a measure of
                                   # magnetic moment, often used as emu/cm^3
                                   # to specify magnetic moment density.

# Gaussian system: electromagnetic units derived from statampere.
#
# Note that the Gaussian units are often used in such a way that Coulomb's law
# has the form F= q1 * q2 / r^2.  The constant 1|4*pi*epsilon0 is incorporated
# into the units.  From this, we can get the relation force=charge^2/dist^2.
# This means that the simplification esu^2 = dyne cm^2 can be used to simplify
# units in the Gaussian system, with the curious result that capacitance can be
# measured in cm, resistance in sec/cm, and inductance in sec^2/cm.  These
# units are given the names statfarad, statohm and stathenry below.

statampere              10 A cm / s c
statamp                 statampere
statvolt                dyne cm / statamp sec
statcoulomb             statamp s
esu                     statcoulomb
statcoul                statcoulomb
statfarad               statamp sec / statvolt
cmcapacitance           statfarad
stathenry               statvolt sec / statamp
statohm                 statvolt / statamp
statmho                 /statohm
statmaxwell             statvolt sec
franklin                statcoulomb
debye                   1e-18 statcoul cm # unit of electrical dipole moment
helmholtz               debye/angstrom^2  # Dipole moment per area
jar                     1000 statfarad    # approx capacitance of Leyden jar

#
# Some historical electromagnetic units
#

intampere               0.999835 A    # Defined as the current which in one
intamp                  intampere     #   second deposits .001118 gram of
                                      #   silver from an aqueous solution of
                                      #   silver nitrate.
intfarad                0.999505 F
intvolt                 1.00033 V
intohm                  1.000495 ohm  # Defined as the resistance of a
                                      #   uniform column of mercury containing
                                      #   14.4521 gram in a column 1.063 m
                                      #   long and maintained at 0 degC.
daniell                 1.042 V       # Meant to be electromotive force of a
                                      #   Daniell cell, but in error by .04 V
faraday                 N_A e mol     # Charge that must flow to deposit or
faraday_phys            96521.9 C     #   liberate one gram equivalent of any
faraday_chem            96495.7 C     #   element.  (The chemical and physical
                                      #   values are off slightly from what is
                                      #   obtained by multiplying by amu_chem
                                      #   or amu_phys.  These values are from
                                      #   a 1991 NIST publication.)  Note that
                                      #   there is a Faraday constant which is
                                      #   equal to N_A e and hence has units of
                                      #   C/mol.
kappline                6000 maxwell  # Named by and for Gisbert Kapp
siemensunit             0.9534 ohm    # Resistance of a meter long column of
                                      #   mercury with a 1 mm cross section.
#
# Printed circuit board units.
#
# http://www.ndt-ed.org/GeneralResources/IACS/IACS.htm.
#
# Conductivity is often expressed as a percentage of IACS.  A copper wire a
# meter long with a 1 mm^2 cross section has a resistance of 1|58 ohm at
# 20 deg C.  Copper density is also standarized at that temperature.
#

copperconductivity      58 siemens m / mm^2     # A wire a meter long with
IACS                    copperconductivity      #   a 1 mm^2 cross section
copperdensity           8.89 g/cm^3             # The "ounce" measures the
ouncecopper             oz / ft^2 copperdensity #   thickness of copper used
ozcu                    ouncecopper             #   in circuitboard fabrication

#
# Photometric units
#

LUMINOUS_INTENSITY      candela
LUMINOUS_FLUX           lumen
LUMINOUS_ENERGY         talbot
ILLUMINANCE             lux
EXITANCE                lux

candle                  1.02 candela  # Standard unit for luminous intensity
hefnerunit              0.9 candle    #   in use before candela
hefnercandle            hefnerunit    #
violle                  20.17 cd      # luminous intensity of 1 cm^2 of
                                      #   platinum at its temperature of
                                      #   solidification (2045 K)

lumen                   cd sr         # Luminous flux (luminous energy per
lm                      lumen         #    time unit)

talbot                  lumen s       # Luminous energy
lumberg                 talbot        # References give these values for
lumerg                  talbot        #    lumerg and lumberg both.  Note that
                                      #    a paper from 1948 suggests that
                                      #    lumerg should be 1e-7 talbots so
                                      #    that lumergs/erg = talbots/joule.
                                      #    lumerg = luminous erg
lux                     lm/m^2        # Illuminance or exitance (luminous
lx                      lux           #   flux incident on or coming from
phot                    lumen / cm^2  #   a surface)
ph                      phot          #
footcandle              lumen/ft^2    # Illuminance from a 1 candela source
                                      #    at a distance of one foot
metercandle             lumen/m^2     # Illuminance from a 1 candela source
                                      #    at a distance of one meter

mcs                     metercandle s # luminous energy per area, used to
                                      #    measure photographic exposure

nox                     1e-3 lux      # These two units were proposed for
skot                    1e-3 apostilb # measurements relating to dark adapted
                                      # eyes.
# Luminance measures

LUMINANCE               nit

nit                     cd/m^2        # Luminance: the intensity per projected
stilb                   cd / cm^2     # area of an extended luminous source.
sb                      stilb         # (nit is from latin nitere = to shine.)

apostilb                cd/pi m^2
asb                     apostilb
blondel                 apostilb      # Named after a French scientist.

# Equivalent luminance measures.  These units are units which measure
# the luminance of a surface with a specified exitance which obeys
# Lambert's law.  (Lambert's law specifies that luminous intensity of
# a perfectly diffuse luminous surface is proportional to the cosine
# of the angle at which you view the luminous surface.)

equivalentlux           cd / pi m^2   # luminance of a 1 lux surface
equivalentphot          cd / pi cm^2  # luminance of a 1 phot surface
lambert                 cd / pi cm^2
footlambert             cd / pi ft^2

# The bril is used to express "brilliance" of a source of light on a
# logarithmic scale to correspond to subjective perception.  An increase of 1
# bril means doubling the luminance.  A luminance of 1 lambert is defined to
# have a brilliance of 1 bril.

bril(x) units=[1;lambert]  2^(x+-100) lamberts ;log2(bril/lambert)+100

# Some luminance data from the IES Lighting Handbook, 8th ed, 1993

sunlum                  1.6e9 cd/m^2  # at zenith
sunillum                100e3 lux     # clear sky
sunillum_o              10e3 lux      # overcast sky
sunlum_h                6e6 cd/m^2    # value at horizon
skylum                  8000 cd/m^2   # average, clear sky
skylum_o                2000 cd/m^2   # average, overcast sky
moonlum                 2500 cd/m^2

#
# Photographic Exposure Value
# This section by Jeff Conrad (jeff_conrad@msn.com)
#
# The Additive system of Photographic EXposure (APEX) proposed in ASA
# PH2.5-1960 was an attempt to simplify exposure determination for people who
# relied on exposure tables rather than exposure meters.  Shortly thereafter,
# nearly all cameras incorporated exposure meters, so the APEX system never
# caught on, but the concept of exposure value remains in use.  Though given as
# 'Ev' in ASA PH2.5-1960, it is now more commonly indicated by 'EV'.  EV is
# related to exposure parameters by
#
#            A^2   LS   ES
#     2^EV = --- = -- = --
#             t    K    C
#
# Where
#     A = Relative aperture (f-number)
#     t = Exposure time in seconds
#     L = Scene luminance in cd/m2
#     E = Scene illuminance in lux
#     S = Arithmetic ISO speed
#     K = Reflected-light meter calibration constant
#     C = Incident-light meter calibration constant
#
# Strictly, an exposure value is a combination of aperture and exposure time,
# but it's also commonly used to indicate luminance (or illuminance).
# Conversion to luminance or illuminance units depends on the ISO speed and the
# meter calibration constant.  Common practice is to use an ISO speed of 100.
# Calibration constants vary among camera and meter manufacturers: Canon,
# Nikon, and Sekonic use a value of 12.5 for reflected-light meters, while
# Kenko (formerly Minolta) and Pentax use a value of 14.  Kenko and Sekonic use
# a value of 250 for incident-light meters with flat receptors.
#
# The values for in-camera meters apply only averaging, weighted-averaging, or
# spot metering--the multi-segment metering incorporated in most current
# cameras uses proprietary algorithms that evaluate many factors related to the
# luminance distribution of what is being metered; they are not amenable to
# simple conversions, and are usually not disclosed by the manufacturers.

s100                    100 / lx s            # ISO 100 speed
iso100                  s100

# Reflected-light meter calibration constant with ISO 100 speed

k1250                   12.5 (cd/m2) / lx s   # For Canon, Nikon, and Sekonic
k1400                   14   (cd/m2) / lx s   # For Kenko (Minolta) and Pentax

# Incident-light meter calibration constant with ISO 100 film

c250                    250 lx / lx s         # flat-disc receptor

# Exposure value to scene luminance with ISO 100 imaging media

# For Kenko (Minolta) or Pentax
#ev100(x) units=[;cd/m^2] range=(0,) 2^x k1400 / s100; log2(ev100 s100/k1400)
# For Canon, Nikon, or Sekonic
ev100(x) units=[1;cd/m^2] range=(0,) 2^x k1250 / s100; log2(ev100 s100/k1250)
EV100()  ev100

# Exposure value to scene illuminance with ISO 100 imaging media

iv100(x) units=[1;lx] range=(0,) 2^x c250 / s100; log2(iv100 s100 / c250)

# Other Photographic Exposure Conversions
#
# As part of APEX, ASA PH2.5-1960 proposed several logarithmic quantities
# related by
#
#    Ev = Av + Tv = Bv + Sv
#
# where
#  Av = log2(A^2)       Aperture value
#  Tv = log2(1/t)       Time value
#  Sv = log2(N Sx)      Speed value
#  Bv = log2(B S / K)   Luminance ("brightness") value
#  Iv = log2(I S / C)   Illuminance value
#
# and
#  A  = Relative aperture (f-number)
#  t  = Exposure time in seconds
#  Sx = Arithmetic ISO speed in 1/lux s
#  B  = luminance in cd/m2
#  I  = luminance in lux

# The constant N derives from the arcane relationship between arithmetic
# and logarithmic speed given in ASA PH2.5-1960.  That relationship
# apparently was not obvious--so much so that it was thought necessary
# to explain it in PH2.12-1961.  The constant has had several values
# over the years, usually without explanation for the changes.  Although
# APEX had little impact on consumer cameras, it has seen a partial
# resurrection in the Exif standards published by the Camera & Imaging
# Products Association of Japan.

#N_apex         2^-1.75 lx s    # precise value implied in ASA PH2.12-1961,
                                # derived from ASA PH2.5-1960.
#N_apex         0.30 lx s       # rounded value in ASA PH2.5-1960,
                                # ASA PH2.12-1961, and ANSI PH2.7-1986
#N_apex         0.3162 lx s     # value in ANSI PH2.7-1973
N_exif          1|3.125 lx s    # value in Exif 2.3 (2010), making Sv(5) = 100
K_apex1961      11.4 (cd/m2) / lx s    # value in ASA PH2.12-1961
K_apex1971      12.5 (cd/m2) / lx s    # value in ANSI PH3.49-1971; more common
C_apex1961      224 lx / lx s   # value in PH2.12-1961 (20.83 for I in
                                #   footcandles; flat sensor?)
C_apex1971      322 lx / lx s   # mean value in PH3.49-1971 (30 +/- 5 for I in
                                # footcandles; hemispherical sensor?)
N_speed         N_exif
K_lum           K_apex1971
C_illum         C_apex1961

# Units for Photographic Exposure Variables
#
# Practical photography sometimes pays scant attention to units for exposure
# variables.  In particular, the "speed" of the imaging medium is treated as if
# it were dimensionless when it should have units of reciprocal lux seconds;
# this practice works only because "speed" is almost invariably given in
# accordance with international standards (or similar ones used by camera
# manufacturers)--so the assumed units are invariant.  In calculating
# logarithmic quantities--especially the time value Tv and the exposure value
# EV--the units for exposure time ("shutter speed") are often ignored; this
# practice works only because the units of exposure time are assumed to be in
# seconds, and the missing units that make the argument to the logarithmic
# function dimensionless are silently provided.
#
# In keeping with common practice, the definitions that follow treat "speeds"
# as dimensionless, so ISO 100 speed is given simply as '100'.  When
# calculating the logarithmic APEX quantities Av and Tv, the definitions
# provide the missing units, so the times can be given with any appropriate
# units.  For example, giving an exposure time of 1 minute as either '1 min' or
# '60 s' will result in Tv of -5.9068906.
#
# Exposure Value from f-number and Exposure Time
#
# Because nonlinear unit conversions only accept a single quantity,
# there is no direct conversion from f-number and exposure time to
# exposure value EV.  But the EV can be obtained from a combination of
# Av and Tv.  For example, the "sunny 16" rule states that correct
# exposure for a sunlit scene can achieved by using f/16 and an exposure
# time equal to the reciprocal of the ISO speed in seconds; this can be
# calculated as
#
#    ~Av(16) + ~Tv(1|100 s),
#
# which gives 14.643856.  These conversions may be combined with the
# ev100 conversion:
#
#    ev100(~Av(16) + ~Tv(1|100 s))
#
# to yield the assumed average scene luminance of 3200 cd/m^2.

# convert relative aperture (f-number) to aperture value
Av(A)           units=[1;1] domain=[-2,) range=[0.5,)  2^(A/2); 2 log2(Av)
# convert exposure time to time value
Tv(t)           units=[1;s] range=(0,)  2^(-t) s; log2(s / Tv)
# convert logarithmic speed Sv in ASA PH2.5-1960 to ASA/ISO arithmetic speed;
# make arithmetic speed dimensionless
# 'Sv' conflicts with the symbol for sievert; you can uncomment this function
# definition if you don't need that symbol
#Sv(S)    units=[1;1] range=(0,) 2^S / (N_speed/lx s); log2((N_speed/lx s) Sv)
Sval(S)   units=[1;1] range=(0,) 2^S / (N_speed/lx s); log2((N_speed/lx s) Sval)

# convert luminance value Bv in ASA PH2.12-1961 to luminance
Bv(x)           units=[1;cd/m^2] range=(0,) \
                2^x K_lum N_speed ; log2(Bv / (K_lum N_speed))

# convert illuminance value Iv in ASA PH2.12-1961 to illuminance
Iv(x)           units=[1;lx] range=(0,) \
                2^x C_illum N_speed ; log2(Iv / (C_illum N_speed))

# convert ASA/ISO arithmetic speed Sx to ASA logarithmic speed in
# ASA PH2.5-1960; make arithmetic speed dimensionless
Sx(S)           units=[1;1] domain=(0,) \
                log2((N_speed/lx s) S); 2^Sx / (N_speed/lx s)

# convert DIN speed/ISO logarithmic speed in ISO 6:1993 to arithmetic speed
# for convenience, speed is treated here as if it were dimensionless
Sdeg(S)         units=[1;1] range=(0,) 10^((S - 1) / 10) ; (1 + 10 log(Sdeg))
Sdin()          Sdeg

# Numerical Aperture and f-Number of a Lens
#
# The numerical aperture (NA) is given by
#
#   NA = n sin(theta)
#
# where n is the index of refraction of the medium and theta is half
# of the angle subtended by the aperture stop from a point in the image
# or object plane. For a lens in air, n = 1, and
#
#   NA = 0.5 / f-number
#
# convert NA to f-number
numericalaperture(x) units=[1;1] domain=(0,1] range=[0.5,) \
                     0.5 / x ; 0.5 / numericalaperture
NA()            numericalaperture
#
# convert f-number to itself; restrict values to those possible
fnumber(x)      units=[1;1] domain=[0.5,) range=[0.5,) x ; fnumber

# Referenced Photographic Standards
#
# ASA PH-2.5-1960. USA Standard, Method for Determining (Monochrome,
#    Continuous-Tone) Speed of Photographic Negative Materials.
# ASA PH2.12-1961. American Standard, General-Purpose Photographic
#    Exposure Meters (photoelectric type).
# ANSI PH3.49-1971. American National Standard for general-purpose
#    photographic exposure meters (photoelectric type).
# ANSI PH2.7-1973. American National Standard Photographic Exposure Guide.
# ANSI PH2.7-1986. American National Standard for Photography --
#    Photographic Exposure Guide.
# CIPA DC-008-2010. Exchangeable image file format for digital still
#    cameras: Exif Version 2.3
# ISO 6:1993.  International Standard, Photography -- Black-and-white
#    pictorial still camera negative film/process systems --
#    Determination of ISO Speed.


#
# Astronomical time measurements
#
# Astronomical time measurement is a complicated matter.  The length of the
# true day at a given place can be 21 seconds less than 24 hours or 30 seconds
# over 24 hours.  The two main reasons for this are the varying speed of the
# earth in its elliptical orbit and the fact that the sun moves on the ecliptic
# instead of along the celestial equator.  To devise a workable system for time
# measurement, Simon Newcomb (1835-1909) used a fictitious "mean sun".
# Consider a first fictitious sun traveling along the ecliptic at a constant
# speed and coinciding with the true sun at perigee and apogee.  Then
# considering a second fictitious sun traveling along the celestial equator at
# a constant speed and coinciding with the first fictitious sun at the
# equinoxes.  The second fictitious sun is the "mean sun".  From this equations
# can be written out to determine the length of the mean day, and the tropical
# year.  The length of the second was determined based on the tropical year
# from such a calculation and was officially used from 1960-1967 until atomic
# clocks replaced astronomical measurements for a standard of time.  All of the
# values below give the mean time for the specified interval.
#
# See "Mathematical Astronomy Morsels" by Jean Meeus for more details
# and a description of how to compute the correction to mean time.
#

TIME                    second

anomalisticyear         365.2596 days       # The time between successive
                                            #   perihelion passages of the
                                            #   earth.
siderealyear            365.256360417 day   # The time for the earth to make
                                            #   one revolution around the sun
                                            #   relative to the stars.
tropicalyear            365.242198781 day   # The time needed for the mean sun
                                            #   as defined above to increase
                                            #   its longitude by 360 degrees.
                                            #   Most references defined the
                                            #   tropical year as the interval
                                            #   between vernal equinoxes, but
                                            #   this is misleading.  The length
                                            #   of the season changes over time
                                            #   because of the eccentricity of
                                            #   the earth's orbit.  The time
                                            #   between vernal equinoxes is
                                            #   approximately 365.24237 days
                                            #   around the year 2000.  See
                                            #   "Mathematical Astronomy
                                            #   Morsels" for more details.
eclipseyear             346.62 days         # The line of nodes is the
                                            #   intersection of the plane of
                                            #   Earth's orbit around the sun
                                            #   with the plane of the moon's
                                            #   orbit around earth.  Eclipses
                                            #   can only occur when the moon
                                            #   and sun are close to this
                                            #   line.  The line rotates and
                                            #   appearances of the sun on the
                                            #   line of nodes occur every
                                            #   eclipse year.
saros                   223 synodicmonth    # The earth, moon and sun appear in
                                            #   the same arrangement every
                                            #   saros, so if an eclipse occurs,
                                            #   then one saros later, a similar
                                            #   eclipse will occur.  (The saros
                                            #   is close to 19 eclipse years.)
                                            #   The eclipse will occur about
                                            #   120 degrees west of the
                                            #   preceeding one because the
                                            #   saros is not an even number of
                                            #   days.  After 3 saros, an
                                            #   eclipse will occur at
                                            #   approximately the same place.
siderealday             86164.09054 s       # The sidereal day is the interval
siderealhour            1|24 siderealday    #   between two successive transits
siderealminute          1|60 siderealhour   #   of a star over the meridian,
siderealsecond          1|60 siderealminute #   or the time required  for the
                                            #   earth to make one rotation
                                            #   relative to the stars.  The
                                            #   more usual solar day is the
                                            #   time required to make a
                                            #   rotation relative to the sun.
                                            #   Because the earth moves in its
                                            #   orbit, it has to turn a bit
                                            #   extra to face the sun again,
                                            #   hence the solar day is slightly
                                            #   longer.
anomalisticmonth        27.55454977 day     # Time for the moon to travel from
                                            #   perigee to perigee
nodicalmonth            27.2122199 day      # The nodes are the points where
draconicmonth           nodicalmonth        #   an orbit crosses the ecliptic.
draconiticmonth         nodicalmonth        #   This is the time required to
                                            #   travel from the ascending node
                                            #   to the next ascending node.
siderealmonth           27.321661 day       # Time required for the moon to
                                            #   orbit the earth
lunarmonth              29 days + 12 hours + 44 minutes + 2.8 seconds
                                            # Mean time between full moons.
synodicmonth            lunarmonth          #   Full moons occur when the sun
lunation                synodicmonth        #   and moon are on opposite sides
lune                    1|30 lunation       #   of the earth.  Since the earth
lunour                  1|24 lune           #   moves around the sun, the moon
                                            #   has to revolve a bit extra to
                                            #   get into the full moon
                                            #   configuration.
year                    tropicalyear
yr                      year
month                   1|12 year
mo                      month
lustrum                 5 years             # The Lustrum was a Roman
                                            #   purification ceremony that took
                                            #   place every five years.
                                            #   Classically educated Englishmen
                                            #   used this term.
decade                  10 years
century                 100 years
millennium              1000 years
millennia               millennium
solaryear               year
lunaryear               12 lunarmonth
calendaryear            365 day
commonyear              365 day
leapyear                366 day
julianyear              365.25 day
gregorianyear           365.2425 day
islamicyear             354 day          # A year of 12 lunar months. They
islamicleapyear         355 day          # began counting on July 16, AD 622
                                         # when Muhammad emigrated to Medina
                                         # (the year of the Hegira).  They need
                                         # 11 leap days in 30 years to stay in
                                         # sync with the lunar year which is a
                                         # bit longer than the 29.5 days of the
                                         # average month.  The months do not
                                         # keep to the same seasons, but
                                         # regress through the seasons every
                                         # 32.5 years.
islamicmonth            1|12 islamicyear # They have 29 day and 30 day months.

# The Hewbrew year is also based on lunar months, but synchronized to the solar
# calendar.  The months vary irregularly between 29 and 30 days in length, and
# the years likewise vary.  The regular year is 353, 354, or 355 days long.  To
# keep up with the solar calendar, a leap month of 30 days is inserted every
# 3rd, 6th, 8th, 11th, 14th, 17th, and 19th years of a 19 year cycle.  This
# gives leap years that last 383, 384, or 385 days.


# Sidereal days

mercuryday              58.6462 day
venusday                243.01 day        # retrograde
earthday                siderealday
marsday                 1.02595675 day
jupiterday              0.41354 day
saturnday               0.4375 day
uranusday               0.65 day          # retrograde
neptuneday              0.768 day
plutoday                6.3867 day

# Sidereal years from http://ssd.jpl.nasa.gov/phys_props_planets.html.  Data
# was updated in May 2001 based on the 1992 Explanatory Supplement to the
# Astronomical Almanac and the mean longitude rates.  Apparently the table of
# years in that reference is incorrect.

mercuryyear             0.2408467 julianyear
venusyear               0.61519726 julianyear
earthyear               siderealyear
marsyear                1.8808476 julianyear
jupiteryear             11.862615 julianyear
saturnyear              29.447498 julianyear
uranusyear              84.016846 julianyear
neptuneyear             164.79132 julianyear
plutoyear               247.92065 julianyear

# Objects on the earth are charted relative to a perfect ellipsoid whose
# dimensions are specified by different organizations.  The ellipsoid is
# specified by an equatorial radius and a flattening value which defines the
# polar radius.  These values are the 1996 values given by the International
# Earth Rotation Service (IERS) whose reference documents can be found at
# http://maia.usno.navy.mil/

earthflattening         1|298.25642
earthradius_equatorial  6378136.49 m
earthradius_polar       (-earthflattening+1) earthradius_equatorial

landarea                148.847e6 km^2
oceanarea               361.254e6 km^2

moonradius              1738 km         # mean value
sunradius               6.96e8 m

# Many astronomical values can be measured most accurately in a system of units
# using the astronomical unit and the mass of the sun as base units.  The
# uncertainty in the gravitational constant makes conversion to SI units
# significantly less accurate.

# The astronomical unit was defined to be the length of the of the semimajor
# axis of a massless object with the same year as the earth.  With such a
# definition in force, and with the mass of the sun set equal to one, Kepler's
# third law can be used to solve for the value of the gravitational constant.

# Kepler's third law says that (2 pi / T)^2 a^3 = G M where T is the orbital
# period, a is the size of the semimajor axis, G is the gravitational constant
# and M is the mass.  With M = 1 and T and a chosen for the earth's orbit, we
# find sqrt(G) = (2 pi / T) sqrt(AU^3).  This constant is called the Gaussian
# gravitational constant, apparently because Gauss originally did the
# calculations.  However, when the original calculation was done, the value
# for the length of the earth's year was inaccurate.  The value used is called
# the Gaussian year.  Changing the astronomical unit to bring it into
# agreement with more accurate values for the year would have invalidated a
# lot of previous work, so instead the astronomical unit has been kept equal
# to this original value.  This is accomplished by using a standard value for
# the Gaussian gravitational constant.  This constant is called k.
# Many values below are from http://ssd.jpl.nasa.gov/?constants

gauss_k                 0.01720209895   # This beast has dimensions of
                                        # au^(3|2) / day and is exact.
gaussianyear      (2 pi / gauss_k) days # Year that corresponds to the Gaussian
                                        # gravitational constant. This is a
                                        # fictional year, and doesn't
                                        # correspond to any celestial event.
astronomicalunit         149597870700 m # IAU definition from 2012, exact
au                     astronomicalunit # ephemeris for the above described
                                        # astronomical unit.  (See the NASA
                                        # site listed above.)
solarmass                  1.9891e30 kg
sunmass                       solarmass


sundist                 1.0000010178 au # mean earth-sun distance
moondist                3.844e8 m       # mean earth-moon distance
sundist_near            1.471e11 m      # earth-sun distance at perihelion
sundist_far             1.521e11 m      # earth-sun distance at aphelion

# The following are masses for planetary systems, not just the planet itself.
# The comments give the uncertainty in the denominators.  As noted above,
# masses are given relative to the solarmass because this is more accurate.
# The conversion to SI is uncertain because of uncertainty in G, the
# gravitational constant.
#
# Values are from http://ssd.jpl.nasa.gov/astro_constants.html

mercurymass             solarmass / 6023600   # 250
venusmass               solarmass / 408523.71 # 0.06
earthmoonmass           solarmass / 328900.56 # 0.02
marsmass                solarmass / 3098708   # 9
jupitermass             solarmass / 1047.3486 # 0.0008
saturnmass              solarmass / 3497.898  # 0.018
uranusmass              solarmass / 22902.98  # 0.03
neptunemass             solarmass / 19412.24  # 0.04
plutomass               solarmass / 1.35e8    # 0.07e8

moonearthmassratio      0.012300034 # uncertainty 3 x 10-9
earthmass               earthmoonmass / ( 1 + moonearthmassratio)
moonmass                moonearthmassratio earthmass

# These are the old values for the planetary masses.  They may give
# the masses of the planets alone.

oldmercurymass             0.33022e24 kg
oldvenusmass               4.8690e24 kg
oldmarsmass                0.64191e24 kg
oldjupitermass             1898.8e24 kg
oldsaturnmass              568.5e24 kg
olduranusmass              86.625e24 kg
oldneptunemass             102.78e24 kg
oldplutomass               0.015e24 kg

# Mean radius from http://ssd.jpl.nsaa.gov/phys_props_planets.html which in
# turn cites Global Earth Physics by CF Yoder, 1995.

mercuryradius           2440 km
venusradius             6051.84 km
earthradius             6371.01 km
marsradius              3389.92 km
jupiterradius           69911 km
saturnradius            58232 km
uranusradius            25362 km
neptuneradius           24624 km
plutoradius             1151 km

moongravity             1.62 m/s^2

#
# The Hartree system of atomic units, derived from fundamental units
# of mass (of electron), action (planck's constant), charge, and
# the coulomb constant.

# Fundamental units

atomicmass              electronmass
atomiccharge            e
atomicaction            hbar

# derived units (Warning: accuracy is lost from deriving them this way)

atomiclength            bohrradius
atomictime              hbar^3/coulombconst^2 atomicmass e^4 # Period of first
                                                             # bohr orbit
atomicvelocity          atomiclength / atomictime
atomicenergy            hbar / atomictime
hartree                 atomicenergy

#
# These thermal units treat entropy as charge, from [5]
#

thermalcoulomb          J/K        # entropy
thermalampere           W/K        # entropy flow
thermalfarad            J/K^2
thermalohm              K^2/W      # thermal resistance
fourier                 thermalohm
thermalhenry            J K^2/W^2  # thermal inductance
thermalvolt             K          # thermal potential difference


#
# United States units
#

# linear measure

# The US Metric Law of 1866 legalized the metric system in the USA and
# defined the meter in terms of the British system with the exact
# 1 meter = 39.37 inches.  On April 5, 1893 Thomas Corwin Mendenhall,
# Superintendent of Weights and Measures, decided, in what has become
# known as the "Mendenhall Order" that the meter and kilogram would be the
# fundamental standards in the USA.  The definition from 1866 was turned
# around to give an exact definition of the yard as 3600|3937 meters This
# definition was used until July of 1959 when the definition was changed
# to bring the US and other English-speaking countries into agreement; the
# Canadian value of 1 yard = 0.9144 meter (exactly) was chosen because it
# was approximately halfway between the British and US values; it had the
# added advantage of making 1 inch = 25.4 mm (exactly).  Since 1959, the
# "international" foot has been exactly 0.3048 meters.  At the same time,
# it was decided that any data expressed in feet derived from geodetic
# surveys within the US would continue to use the old definition and call
# the old unit the "survey foot." The US continues to define the statute
# mile, furlong, chain, rod, link, and fathom in terms of the US survey
# foot.
# Sources:
# NIST Special Publication 447, Sects. 5, 7, and 8.
# NIST Handbook 44, 2011 ed., Appendix C.
# Canadian Journal of Physics, 1959, 37:(1) 84, 10.1139/p59-014.

US                      1200|3937 m/ft   # These four values will convert
US-                     US               #   international measures to
survey-                 US               #   US Survey measures
geodetic-               US
int                     3937|1200 ft/m   # Convert US Survey measures to
int-                    int              #   international measures

inch                    2.54 cm
in                      inch
foot                    12 inch
feet                    foot
ft                      foot
yard                    3 ft
yd                      yard
mile                    5280 ft          # The mile was enlarged from 5000 ft
                                         # to this number in order to make
                                         # it an even number of furlongs.
                                         # (The Roman mile is 5000 romanfeet.)
line                    1|12 inch  # Also defined as '.1 in' or as '1e-8 Wb'
rod                     5.5 yard
perch                   rod
furlong                 40 rod           # From "furrow long"
statutemile             mile
league                  3 mile           # Intended to be an an hour's walk

# surveyor's measure

surveyorschain          66 surveyft
surveychain             surveyorschain
surveyorspole           1|4 surveyorschain
surveyorslink           1|100 surveyorschain
chain                   66 ft
link                    1|100 chain
ch                      chain
USacre                  10 surveychain^2
intacre                 10 chain^2       # Acre based on international ft
intacrefoot             acre foot
USacrefoot              USacre surveyfoot
acrefoot                intacrefoot
acre                    intacre
section                 mile^2
township                36 section
homestead               160 acre # Area of land granted by the 1862 Homestead
                                 # Act of the United States Congress
gunterschain            surveyorschain

engineerschain          100 ft
engineerslink           1|100 engineerschain
ramsdenschain           engineerschain
ramsdenslink            engineerslink

gurleychain             33 feet           # Andrew Ellicott chain is the
gurleylink              1|50 gurleychain  # same length

wingchain               66 feet           # Chain from 1664, introduced by
winglink                1|80 wingchain    # Vincent Wing, also found in a
                                          # 33 foot length with 40 links.
# early US length standards

# The US has had four standards for the yard: one by Troughton of London
# (1815); bronze yard #11 (1856); the Mendhall yard (1893), consistent
# with the definition of the meter in the metric joint resolution of
# Congress in 1866, but defining the yard in terms of the meter; and the
# international yard (1959), which standardized definitions for Australia,
# Canada, New Zealand, South Africa, the UK, and the US.
# Sources: Pat Naughtin (2009), Which Inch?, www.metricationmatters.com;
# Lewis E.  Barbrow and Lewis V.  Judson (1976).  NBS Special Publication
# 447, Weights and Measures Standards of the United States: A Brief
# History.

troughtonyard           914.42190 mm
bronzeyard11            914.39980 mm
mendenhallyard          surveyyard
internationalyard       yard

# nautical measure

fathom                  6 ft     # Originally defined as the distance from
                                 #   fingertip to fingertip with arms fully
                                 #   extended.
nauticalmile            1852 m   # Supposed to be one minute of latitude at
                                 # the equator.  That value is about 1855 m.
                                 # Early estimates of the earth's circumference
                                 # were a bit off.  The value of 1852 m was
                                 # made the international standard in 1929.
                                 # The US did not accept this value until
                                 # 1954.  The UK switched in 1970.

cable                   1|10 nauticalmile
intcable                cable              # international cable
cablelength             cable
UScable                 100 USfathom
navycablelength         720 USft           # used for depth in water
marineleague            3 nauticalmile
geographicalmile        brnauticalmile
knot                    nauticalmile / hr
click                   km       # US military slang
klick                   click

# Avoirdupois weight

pound                   0.45359237 kg   # The one normally used
lb                      pound           # From the latin libra
grain                   1|7000 pound    # The grain is the same in all three
                                        # weight systems.  It was originally
                                        # defined as the weight of a barley
                                        # corn taken from the middle of the
                                        # ear.
ounce                   1|16 pound
oz                      ounce
dram                    1|16 ounce
dr                      dram
ushundredweight         100 pounds
cwt                     hundredweight
shorthundredweight      ushundredweight
uston                   shortton
shortton                2000 lb
quarterweight           1|4 uston
shortquarterweight      1|4 shortton
shortquarter            shortquarterweight

# Troy Weight.  In 1828 the troy pound was made the first United States
# standard weight.  It was to be used to regulate coinage.

troypound               5760 grain
troyounce               1|12 troypound
ozt                     troyounce
pennyweight             1|20 troyounce  # Abbreviated "d" in reference to a
dwt                     pennyweight     #   Frankish coin called the "denier"
                                        #   minted in the late 700's.  There
                                        #   were 240 deniers to the pound.
assayton                mg ton / troyounce  # mg / assayton = troyounce / ton
usassayton              mg uston / troyounce
brassayton              mg brton / troyounce
fineounce               troyounce       # A troy ounce of 99.5% pure gold

# Some other jewelers units

metriccarat             0.2 gram        # Defined in 1907
metricgrain             50 mg
carat                   metriccarat
ct                      carat
jewelerspoint           1|100 carat
silversmithpoint        1|4000 inch
momme                   3.75 grams      # Traditional Japanese unit based
                                        # on the chinese mace.  It is used for
                                        # pearls in modern times and also for
                                        # silk density.  The definition here
                                        # was adopted in 1891.
# Apothecaries' weight

appound                 troypound
apounce                 troyounce
apdram                  1|8 apounce
apscruple               1|3 apdram

# Liquid measure

usgallon                231 in^3        # US liquid measure is derived from
gal                     gallon          # the British wine gallon of 1707.
quart                   1|4 gallon      # See the "winegallon" entry below
pint                    1|2 quart       # more historical information.
gill                    1|4 pint
usquart                 1|4 usgallon
uspint                  1|2 usquart
usgill                  1|4 uspint
usfluidounce            1|16 uspint
fluiddram               1|8 usfloz
minimvolume             1|60 fluiddram
qt                      quart
pt                      pint
floz                    fluidounce
usfloz                  usfluidounce
fldr                    fluiddram
liquidbarrel            31.5 usgallon
usbeerbarrel            2 beerkegs
beerkeg                 15.5 usgallon   # Various among brewers
ponykeg                 1|2 beerkeg
winekeg                 12 usgallon
petroleumbarrel         42 usgallon     # Originated in Pennsylvania oil
barrel                  petroleumbarrel # fields, from the winetierce
bbl                     barrel
ushogshead              2 liquidbarrel
usfirkin                9 usgallon

# Dry measures: The Winchester Bushel was defined by William III in 1702 and
# legally adopted in the US in 1836.

usbushel                2150.42 in^3  # Volume of 8 inch cylinder with 18.5
bu                      bushel        # inch diameter (rounded)
peck                    1|4 bushel
uspeck                  1|4 usbushel
brpeck                  1|4 brbushel
pk                      peck
drygallon               1|2 uspeck
dryquart                1|4 drygallon
drypint                 1|2 dryquart
drybarrel               7056 in^3     # Used in US for fruits, vegetables,
                                      #   and other dry commodities except for
                                      #   cranberries.
cranberrybarrel         5826 in^3     # US cranberry barrel
heapedbushel            1.278 usbushel# The following explanation for this
                                      #   value was provided by Wendy Krieger
                                      #   <os2fan2@yahoo.com> based on
                                      #   guesswork.  The cylindrical vessel is
                                      #   18.5 inches in diameter and 1|2 inch
                                      #   thick.  A heaped bushel includes the
                                      #   contents of this cylinder plus a heap
                                      #   on top.  The heap is a cone 19.5
                                      #   inches in diameter and 6 inches
                                      #   high.  With these values, the volume
                                      #   of the bushel is 684.5 pi in^3 and
                                      #   the heap occupies 190.125 pi in^3.
                                      #   Therefore, the heaped bushel is
                                      #   874.625|684.5 bushels.  This value is
                                      #   approximately 1.2777575 and it rounds
                                      #   to the value listed for the size of
                                      #   the heaped bushel.  Sometimes the
                                      #   heaped bushel is reported as 1.25
                                      #   bushels.  This same explanation gives
                                      #   that value if the heap is taken to
                                      #   have an 18.5 inch diameter.

# Grain measures.  The bushel as it is used by farmers in the USA is actually
# a measure of mass which varies for different commodities.  Canada uses the
# same bushel masses for most commodities, but not for oats.

wheatbushel             60 lb
soybeanbushel           60 lb
cornbushel              56 lb
ryebushel               56 lb
barleybushel            48 lb
oatbushel               32 lb
ricebushel              45 lb
canada_oatbushel        34 lb

# Wine and Spirits measure

ponyvolume              1 usfloz
jigger                  1.5 usfloz   # Can vary between 1 and 2 usfloz
shot                    jigger     # Sometimes 1 usfloz
eushot                  25 ml      # EU standard spirits measure
fifth                   1|5 usgallon
winebottle              750 ml     # US industry standard, 1979
winesplit               1|4 winebottle
magnum                  1.5 liter  # Standardized in 1979, but given
                                   # as 2 qt in some references
metrictenth             375 ml
metricfifth             750 ml
metricquart             1 liter

# Old British bottle size

reputedquart            1|6 brgallon
reputedpint             1|2 reputedquart
brwinebottle            reputedquart       # Very close to 1|5 winegallon

# French champagne bottle sizes

split                   200 ml
jeroboam                2 magnum
rehoboam                3 magnum
methuselah              4 magnum
salmanazar              6 magnum
balthazar               8 magnum
nebuchadnezzar          10 magnum

# The wine glass doesn't seem to have an official standard, but the same value
# is suggested by several organization.

# https://www.rethinkingdrinking.niaaa.nih.gov/
# http://www.rethinkyourdrinking.ca/what-is-a-standard-drink/
# https://www.drinkaware.co.uk/
# https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/545937/UK_CMOs__report.pdf
# http://www.alcohol.gov.au/internet/alcohol/publishing.nsf/content/drinksguide-cnt

wineglass               150 mL     # the size of a "typical" serving

# A unit of alcohol is a specified mass of pure ethyl alcohol.
# The term is used officially in the UK, but other countries use the same
# concept but with different values.  For example, the UK value of 8 g is
# nominally the amount of alcohol that a typical adult can metabolize in
# one hour.  Values for several countries, converted to a volumetric basis:

alcoholunitus           14 g   / ethanoldensity
alcoholunitca           13.6 g / ethanoldensity
alcoholunituk            8 g   / ethanoldensity
alcoholunitau           10 g   / ethanoldensity

# Example: for 12% ABV (alcohol by volume)
# alcoholunitus / 12% = 147.8 mL, close to the “standard” serving of 150 mL.


# Coffee
#
# The recommended ratio of coffee to water. Values vary considerably;
# one is from the  Specialty Coffee Association of America
# http://scaa.org/?page=resources&d=brewing-best-practices

coffeeratio             55 g/L  # ± 10%

# other recommendations are more loose, e.g.,
# http://www.ncausa.org/About-Coffee/How-to-Brew-Coffee


#
# Water is "hard" if it contains various minerals, expecially calcium
# carbonate.
#

clarkdegree     grains/brgallon # Content by weigh of calcium carbonate
gpg             grains/usgallon # Divide by water's density to convert to
                                #   a dimensionless concentration measure
#
# Shoe measures
#

shoeiron                1|48 inch    # Used to measure leather in soles
shoeounce               1|64 inch    # Used to measure non-sole shoe leather

# USA shoe sizes.  These express the length of the shoe or the length
# of the "last", the form that the shoe is made on.  But note that
# this only captures the length.  It appears that widths change 1/4
# inch for each letter within the same size, and if you change the
# length by half a size then the width changes between 1/8 inch and
# 1/4 inch.  But this may not be standard.  If you know better, please
# contact me.

shoesize_delta          1|3 inch     # USA shoe sizes differ by this amount
shoe_men0               8.25 inch
shoe_women0             (7+11|12) inch
shoe_boys0              (3+11|12) inch
shoe_girls0             (3+7|12) inch

shoesize_men(n) units=[1;inch]   shoe_men0 + n shoesize_delta ; \
                                (shoesize_men+(-shoe_men0))/shoesize_delta
shoesize_women(n) units=[1;inch] shoe_women0 + n shoesize_delta ; \
                                (shoesize_women+(-shoe_women0))/shoesize_delta
shoesize_boys(n) units=[1;inch]  shoe_boys0 + n shoesize_delta ; \
                                (shoesize_boys+(-shoe_boys0))/shoesize_delta
shoesize_girls(n) units=[1;inch] shoe_girls0 + n shoesize_delta ; \
                                (shoesize_girls+(-shoe_girls0))/shoesize_delta

# European shoe size.  According to
#      http://www.shoeline.com/footnotes/shoeterm.shtml
# shoe sizes in Europe are measured with Paris points which simply measure
# the length of the shoe.

europeshoesize          2|3 cm

#
# USA slang units
#

buck                    US$
fin                     5 US$
sawbuck                 10 US$
usgrand                 1000 US$
greenback               US$
key                     kg           # usually of marijuana, 60's
lid                     1 oz         # Another 60's weed unit
footballfield           usfootballfield
usfootballfield         100 yards
canadafootballfield     110 yards    # And 65 yards wide
marathon                26 miles + 385 yards

#
# British
#

# The length measure in the UK was defined by a bronze bar manufactured in
# 1844.  Various conversions were sanctioned for convenience at different
# times, which makes conversions before 1963 a confusing matter.  Apparently
# previous conversions were never explicitly revoked.  Four different
# conversion factors appear below.  Multiply them times an imperial length
# units as desired.  The Weights and Measures Act of 1963 switched the UK away
# from their bronze standard and onto a definition of the yard in terms of the
# meter.  This happened after an international agreement in 1959 to align the
# world's measurement systems.

UK                      UKlength_SJJ
UK-                     UK
british-                UK

UKlength_B            0.9143992 meter / yard  # Benoit found the yard to be
                                              #   0.9143992 m at a weights and
                                              #   measures conference around
                                              #   1896.   Legally sanctioned
                                              #   in 1898.
UKlength_SJJ          0.91439841 meter / yard # In 1922, Seers, Jolly and
                                              #   Johnson found the yard to be
                                              #   0.91439841 meters.
                                              #   Used starting in the 1930's.
UKlength_K              meter / 39.37079 inch # In 1816 Kater found this ratio
                                              #   for the meter and inch.  This
                                              #   value was used as the legal
                                              #   conversion ratio when the
                                              #   metric system was legalized
                                              #   for contract in 1864.
UKlength_C            meter / 1.09362311 yard # In 1866 Clarke found the meter
                                              #   to be 1.09362311 yards.  This
                                              #   conversion was legalized
                                              #   around 1878.
brnauticalmile          6080 ft               # Used until 1970 when the UK
brknot                  brnauticalmile / hr   #   switched to the international
brcable                 1|10 brnauticalmile   #   nautical mile.
admiraltymile           brnauticalmile
admiraltyknot           brknot
admiraltycable          brcable
seamile                 6000 ft
shackle                 15 fathoms            # Adopted 1949 by British navy

# British Imperial weight is mostly the same as US weight.  A few extra
# units are added here.

clove                   7 lb
stone                   14 lb
tod                     28 lb
brquarterweight         1|4 brhundredweight
brhundredweight         8 stone
longhundredweight       brhundredweight
longton                 20 brhundredweight
brton                   longton

# British Imperial volume measures

brminim                 1|60 brdram
brscruple               1|3 brdram
fluidscruple            brscruple
brdram                  1|8 brfloz
brfluidounce            1|20 brpint
brfloz                  brfluidounce
brgill                  1|4 brpint
brpint                  1|2 brquart
brquart                 1|4 brgallon
brgallon                4.54609 l      # The British Imperial gallon was
                                       # defined in 1824 to be the volume of
                                       # water which weighed 10 pounds at 62
                                       # deg F with a pressure of 30 inHg.
                                       # It was also defined as 277.274 in^3,
                                       # Which is slightly in error.  In
                                       # 1963 it was defined to be the volume
                                       # occupied by 10 pounds of distilled
                                       # water of density 0.998859 g/ml weighed
                                       # in air of density 0.001217 g/ml
                                       # against weights of density 8.136 g/ml.
                                       # This gives a value of approximately
                                       # 4.5459645 liters, but the old liter
                                       # was in force at this time.  In 1976
                                       # the definition was changed to exactly
                                       # 4.54609 liters using the new
                                       # definition of the liter (1 dm^3).
brbarrel                36 brgallon    # Used for beer
brbushel                8 brgallon
brheapedbushel          1.278 brbushel
brquarter               8 brbushel
brchaldron              36 brbushel

# Obscure British volume measures.  These units are generally traditional
# measures whose definitions have fluctuated over the years.  Often they
# depended on the quantity being measured.  They are given here in terms of
# British Imperial measures.  For example, the puncheon may have historically
# been defined relative to the wine gallon or beer gallon or ale gallon
# rather than the British Imperial gallon.

bag                     4 brbushel
bucket                  4 brgallon
kilderkin               2 brfirkin
last                    40 brbushel
noggin                  brgill
pottle                  0.5 brgallon
pin                     4.5 brgallon
puncheon                72 brgallon
seam                    8 brbushel
coomb                   4 brbushel
boll                    6 brbushel
firlot                  1|4 boll
brfirkin                9 brgallon     # Used for ale and beer
cran                    37.5 brgallon  # measures herring, about 750 fish
brwinehogshead          52.5 brgallon  # This value is approximately equal
brhogshead              brwinehogshead #   to the old wine hogshead of 63
                                       #   wine gallons.  This adjustment
                                       #   is listed in the OED and in
                                       #   "The Weights and Measures of
                                       #   England" by R. D. Connor
brbeerhogshead          54 brgallon
brbeerbutt              2 brbeerhogshead
registerton             100 ft^3  # Used for internal capacity of ships
shippington             40 ft^3   # Used for ship's cargo freight or timber
brshippington           42 ft^3   #
freightton            shippington # Both register ton and shipping ton derive
                                  # from the "tun cask" of wine.
displacementton         35 ft^3   # Approximate volume of a longton weight of
                                  # sea water.  Measures water displaced by
                                  # ships.
waterton                224 brgallon
strike                  70.5 l    # 16th century unit, sometimes
                                  #   defined as .5, 2, or 4 bushels
                                  #   depending on the location.  It
                                  #   probably doesn't make a lot of
                                  #   sense to define in terms of imperial
                                  #   bushels.  Zupko gives a value of
                                  #   2 Winchester grain bushels or about
                                  #   70.5 liters.
amber                   4 brbushel# Used for dry and liquid capacity [18]

# British volume measures with "imperial"

imperialminim           brminim
imperialscruple         brscruple
imperialdram            brdram
imperialfluidounce      brfluidounce
imperialfloz            brfloz
imperialgill            brgill
imperialpint            brpint
imperialquart           brquart
imperialgallon          brgallon
imperialbarrel          brbarrel
imperialbushel          brbushel
imperialheapedbushel    brheapedbushel
imperialquarter         brquarter
imperialchaldron        brchaldron
imperialwinehogshead    brwinehogshead
imperialhogshead        brhogshead
imperialbeerhogshead    brbeerhogshead
imperialbeerbutt        brbeerbutt
imperialfirkin          brfirkin

# obscure British lengths

barleycorn              1|3 UKinch   # Given in Realm of Measure as the
                                     # difference between successive shoe sizes
nail                    1|16 UKyard  # Originally the width of the thumbnail,
                                     #   or 1|16 ft.  This took on the general
                                     #   meaning of 1|16 and settled on the
                                     #   nail of a yard or 1|16 yards as its
                                     #   final value.  [12]
pole                    16.5 UKft    # This was 15 Saxon feet, the Saxon
rope                    20 UKft      #   foot (aka northern foot) being longer
englishell              45 UKinch
flemishell              27 UKinch
ell                     englishell   # supposed to be measure from elbow to
                                     #   fingertips
span                    9 UKinch     # supposed to be distance from thumb
                                     #   to pinky with full hand extension
goad                    4.5 UKft     # used for cloth, possibly named after the
                                     #   stick used for prodding animals.

# misc obscure British units

hide                    120 acre  # English unit of land area dating to the 7th
                                  #   century, originally the amount of land
                                  #   that a single plowman could cultivate,
                                  #   which varied from 60-180 acres regionally.
                                  #   Standardized at Normon conquest.
virgate                 1|4 hide
nook                    1|2 virgate
rood                    furlong rod  # Area of a strip a rod by a furlong
englishcarat            troyounce/151.5 # Originally intended to be 4 grain
                                        #   but this value ended up being
                                        #   used in the London diamond market
mancus                  2 oz
mast                    2.5 lb
nailkeg                 100 lbs
basebox                 31360 in^2      # Used in metal plating

# alternate spellings

metre                   meter
gramme                  gram
litre                   liter
dioptre                 diopter
aluminium               aluminum
sulphur                 sulfur

#
# Units derived the human body (may not be very accurate)
#

geometricpace           5 ft   # distance between points where the same
                               # foot hits the ground
pace                    2.5 ft # distance between points where alternate
                               # feet touch the ground
USmilitarypace          30 in  # United States official military pace
USdoubletimepace        36 in  # United States official doubletime pace
fingerbreadth           7|8 in # The finger is defined as either the width
fingerlength            4.5 in #   or length of the finger
finger                  fingerbreadth
palmwidth               hand   # The palm is a unit defined as either the width
palmlength              8 in   #   or the length of the hand
hand                    4 inch # width of hand
shaftment               6 inch # Distance from tip of outstretched thumb to the
                               #   opposite side of the palm of the hand.  The
                               #   ending -ment is from the old English word
                               #   for hand. [18]
smoot              5 ft + 7 in # Created as part of an MIT fraternity prank.
                               #   In 1958 Oliver Smoot was used to measure
                               #   the length of the Harvard Bridge, which was
                               #   marked off in Smoot lengths.  These
                               #   markings have been maintained on the bridge
                               #   since then and repainted by subsequent
                               #   incoming fraternity members.  During a
                               #   bridge renovation the new sidewalk was
                               #   scored every Smoot rather than at the
                               #   customary 6 ft spacing.
#
# Cooking measures
#

# Common abbreviations

tbl                     tablespoon
tbsp                    tablespoon
tblsp                   tablespoon
Tb                      tablespoon
tsp                     teaspoon
saltspoon               1|4 tsp

# US measures

uscup                   8 usfloz
ustablespoon            1|16 uscup
usteaspoon              1|3 ustablespoon
ustbl                   ustablespoon
ustbsp                  ustablespoon
ustblsp                 ustablespoon
ustsp                   usteaspoon
metriccup               250 ml
stickbutter             1|4 lb            # Butter in the USA is sold in one
                                          # pound packages that contain four
                                          # individually wrapped pieces.  The
                                          # pieces are marked into tablespoons,
                                          # making it possible to measure out
                                          # butter by volume by slicing the
                                          # butter.

legalcup                240 ml            # The cup used on nutrition labeling
legaltablespoon         1|16 legalcup
legaltbsp               legaltablespoon

# Scoop size.  Ice cream scoops in the US are marked with numbers
# indicating the number of scoops requird to fill a US quart.

scoop(n)  units=[1;cup] domain=[4,100] range=[0.04,1] \
           32 usfloz / n ; 32 usfloz / scoop


# US can sizes.

number1can              10 usfloz
number2can              19 usfloz
number2.5can            3.5 uscups
number3can              4 uscups
number5can              7 uscups
number10can             105 usfloz

# British measures

brcup                   1|2 brpint
brteacup                1|3 brpint
brtablespoon            15 ml             # Also 5|8 brfloz, approx 17.7 ml
brteaspoon              1|3 brtablespoon  # Also 1|4 brtablespoon
brdessertspoon          2 brteaspoon
dessertspoon            brdessertspoon
dsp                     dessertspoon
brtsp                   brteaspoon
brtbl                   brtablespoon
brtbsp                  brtablespoon
brtblsp                 brtablespoon

# Australian

australiatablespoon     20 ml
austbl                  australiatablespoon
austbsp                 australiatablespoon
austblsp                australiatablespoon
australiateaspoon       1|4 australiatablespoon
austsp                  australiateaspoon

# Italian

etto                    100 g          # Used for buying items like meat and
etti                    etto           #   cheese.

# Chinese

catty                   0.5 kg
oldcatty                4|3 lbs        # Before metric conversion.
tael                    1|16 oldcatty  # Should the tael be defined both ways?
mace                    0.1 tael
oldpicul                100 oldcatty
picul                   100 catty      # Chinese usage

# Indian

seer                    14400 grain    # British Colonial standard
ser                     seer
maund                   40 seer
pakistanseer            1 kg
pakistanmaund           40 pakistanseer
chittak                 1|16 seer
tola                    1|5 chittak
ollock                  1|4 liter      # Is this right?

# Japanese

japancup                200 ml

# densities of cooking ingredients from The Cake Bible by Rose Levy Beranbaum
# so you can convert '2 cups sugar' to grams, for example, or in the other
# direction grams could be converted to 'cup flour_scooped'.

butter                  8 oz/uscup
butter_clarified        6.8 oz/uscup
cocoa_butter            9 oz/uscup
shortening              6.75 oz/uscup   # vegetable shortening
oil                     7.5 oz/uscup
cakeflour_sifted        3.5 oz/uscup    # The density of flour depends on the
cakeflour_spooned       4 oz/uscup      # measuring method.  "Scooped",  or
cakeflour_scooped       4.5 oz/uscup    # "dip and sweep" refers to dipping a
flour_sifted            4 oz/uscup      # measure into a bin, and then sweeping
flour_spooned           4.25 oz/uscup   # the excess off the top.  "Spooned"
flour_scooped           5 oz/uscup      # means to lightly spoon into a measure
breadflour_sifted       4.25 oz/uscup   # and then sweep the top.  Sifted means
breadflour_spooned      4.5 oz/uscup    # sifting the flour directly into a
breadflour_scooped      5.5 oz/uscup    # measure and then sweeping the top.
cornstarch              120 grams/uscup
dutchcocoa_sifted       75 g/uscup      # These are for Dutch processed cocoa
dutchcocoa_spooned      92 g/uscup
dutchcocoa_scooped      95 g/uscup
cocoa_sifted            75 g/uscup      # These are for nonalkalized cocoa
cocoa_spooned           82 g/uscup
cocoa_scooped           95 g/uscup
heavycream              232 g/uscup
milk                    242 g/uscup
sourcream               242 g/uscup
molasses                11.25 oz/uscup
cornsyrup               11.5 oz/uscup
honey                   11.75 oz/uscup
sugar                   200 g/uscup
powdered_sugar          4 oz/uscup
brownsugar_light        217 g/uscup     # packed
brownsugar_dark         239 g/uscup

baking_powder           4.6 grams / ustsp
salt                    6 g / ustsp
koshersalt              2.8 g / ustsp   # Diamond Crystal kosher salt
koshersalt_morton       4.8 g / ustsp   # Morton kosher salt
                                        # Values are from the nutrition info
                                        # on the packages


# Egg weights and volumes for a USA large egg

egg                     50 grams        # without shell
eggwhite                30 grams
eggyolk                 18.6 grams
eggvolume               3 ustablespoons + 1|2 ustsp
eggwhitevolume          2 ustablespoons
eggyolkvolume           3.5 ustsp

# Alcohol density

ethanoldensity          0.7893 g/cm^3   # From CRC Handbook, 91st Edition
alcoholdensity          ethanoldensity

#
# Density measures.  Density has traditionally been measured on a variety of
# bizarre nonlinear scales.
#

# Density of a sugar syrup is frequently measured in candy making procedures.
# In the USA the boiling point of the syrup is measured.  Some recipes instead
# specify the density using degrees Baume.  Conversion between degrees Baume
# and the boiling point measure has proved elusive.  This table appeared in one
# text, and provides a fragmentary relationship to the concentration.
#
# temp(C)  conc (%)
#   100      30
#   101      40
#   102      50
#   103      60
#   106      70
#   112      80
#   123      90
#   140      95
#   151      97
#   160      98.2
#   166      99.5
#   171      99.6
#
# The best source identified to date came from "Boiling point elevation of
# technical sugarcane solutions and its use in automatic pan boiling" by
# Michael Saska.  International Sugar Journal, 2002, 104, 1247, pp 500-507.
#
# But I'm using equation (3) which is credited to Starzak and Peacock,
# "Water activity coefficient in aqueous solutions of sucrose--A comprehensive
# data analyzis.  Zuckerindustrie, 122, 380-387.  (I couldn't find this
# document.)
#
# Note that the range of validity is uncertain, but answers are in agreement
# with the above table all the way to 99.6.
#
# The original equation has a parameter for the boiling point of water, which
# of course varies with altitude.  It also includes various other model
# parameters.  The input is the molar concentration of sucrose in the solution,
# (moles sucrose) / (total moles).
#
# Bsp 3797.06 degC
# Csp 226.28 degC
# QQ -17638 J/mol
# asp -1.0038
# bsp -0.24653
# tbw 100 degC     # boiling point of water
# sugar_bpe_orig(x) ((1-QQ/R Bsp * x^2 (1+asp x + bsp x^2) (tbw + Csp) \
#           /(tbw+stdtemp)) /  (1+(tbw + Csp)/Bsp *ln(1-x))-1) * (tbw + Csp)
#
# To convert mass concentration (brix) to molar concentration
#
# sc(x)  (x / 342.3) / (( x/342.3) + (100-x)/18.02); \
#        100 sc 342.3|18.02 / (sc (342.3|18.02-1)+1)
#
# Here is a simplfied version of this equation where the temperature of boiling
# water has been fixed at 100 degrees Celcius and the argument is now the
# concentration (brix).
#
# sugar_bpe(x) ((1+ 0.48851085 * sc(x)^2 (1+ -1.0038 sc(x) + -0.24653 sc(x)^2)) \
#                   / (1+0.08592964 ln(1-sc(x)))-1) 326.28 K
#
#
# The formula is not invertible, so to implement it in units we unfortunately
# must turn it into a table.

# This table gives the boiling point elevation as a function of the sugar syrup
# concentration expressed as a percentage.

sugar_conc_bpe[K] \
 0 0.0000   5 0.0788  10 0.1690  15 0.2729  20 0.3936  25 0.5351  \
30 0.7027  35 0.9036  40 1.1475  42 1.2599  44 1.3825  46 1.5165  \
48 1.6634  50 1.8249  52 2.0031  54 2.2005  56 2.4200  58 2.6651  \
60 2.9400  61 3.0902  62 3.2499  63 3.4198  64 3.6010  65 3.7944  \
66 4.0012  67 4.2227  68 4.4603  69 4.7156  70 4.9905  71 5.2870  \
72 5.6075  73 5.9546  74 6.3316  75 6.7417  76 7.1892  77 7.6786  \
78.0  8.2155  79.0  8.8061  80.0  9.4578  80.5  9.8092  81.0 10.1793  \
81.5 10.5693  82.0 10.9807  82.5 11.4152  83.0 11.8743  83.5 12.3601  \
84.0 12.8744  84.5 13.4197  85.0 13.9982  85.5 14.6128  86.0 15.2663  \
86.5 15.9620  87.0 16.7033  87.5 17.4943  88.0 18.3391  88.5 19.2424  \
89.0 20.2092  89.5 21.2452  90.0 22.3564  90.5 23.5493  91.0 24.8309  \
91.5 26.2086  92.0 27.6903  92.5 29.2839  93.0 30.9972  93.5 32.8374  \
94.0 34.8104  94.5 36.9195  95.0 39.1636  95.5 41.5348  96.0 44.0142  \
96.5 46.5668  97.0 49.1350  97.5 51.6347  98.0 53.9681  98.1 54.4091  \
98.2 54.8423  98.3 55.2692  98.4 55.6928  98.5 56.1174  98.6 56.5497  \
98.7 56.9999  98.8 57.4828  98.9 58.0206  99.0 58.6455  99.1 59.4062  \
99.2 60.3763  99.3 61.6706  99.4 63.4751  99.5 66.1062  99.6 70.1448  \
99.7 76.7867

# Using the brix table we can use this to produce a mapping from boiling point
# to density which makes all of the units interconvertible.  Because the brix
# table stops at 95 this approach works up to a boiling point elevation of 39 K
# or a boiling point of 139 C / 282 F, which is the "soft crack" stage in candy
# making.  The "hard crack" stage continues up to 310 F.

# Boiling point elevation
sugar_bpe(T) units=[K;g/cm^3] domain=[0,39.1636] range=[0.99717,1.5144619] \
               brix(~sugar_conc_bpe(T)); sugar_conc_bpe(~brix(sugar_bpe))
# Absolute boiling point (produces an absolute temperature)
sugar_bp(T) units=[K;g/cm^3] domain=[373.15,412.3136] \
                                         range=[0.99717,1.5144619] \
                        brix(~sugar_conc_bpe(T-tempC(100))) ;\
                        sugar_conc_bpe(~brix(sugar_bp))+tempC(100)

# In practice dealing with the absolute temperature is annoying because it is
# not possible to convert to a nested function, so you're stuck retyping the
# absolute temperature in Kelvins to convert to celsius or Fahrenheit.  To
# prevent this we supply definitions that build in the temperature conversion
# and produce results in the Fahrenheit and Celcius scales.  So using these
# measures, to convert 46 degrees Baume to a Fahrenheit boiling point:
#
#      You have: baume(45)
#      You want: sugar_bpF
#              239.05647
#
sugar_bpF(T) units=[1;g/cm^3] domain=[212,282.49448] range=[0.99717,1.5144619]\
                        brix(~sugar_conc_bpe(tempF(T)+-tempC(100))) ;\
                        ~tempF(sugar_conc_bpe(~brix(sugar_bpF))+tempC(100))
sugar_bpC(T) units=[1;g/cm^3] domain=[100,139.1636] range=[0.99717,1.5144619]\
                        brix(~sugar_conc_bpe(tempC(T)+-tempC(100))) ;\
                        ~tempC(sugar_conc_bpe(~brix(sugar_bpC))+tempC(100))

# Degrees Baume is used in European recipes to specify the density of a sugar
# syrup.  An entirely different definition is used for densities below
# 1 g/cm^3.  An arbitrary constant appears in the definition.  This value is
# equal to 145 in the US, but was according to [], the old scale used in
# Holland had a value of 144, and the new scale or Gerlach scale used 146.78.

baumeconst 145      # US value
baume(d) units=[1;g/cm^3] domain=[0,145) range=[1,) \
                          (baumeconst/(baumeconst+-d)) g/cm^3 ; \
                          (baume+((-g)/cm^3)) baumeconst / baume

# It's not clear if this value was ever used with negative degrees.
twaddell(x) units=[1;g/cm^3] domain=[-200,) range=[0,) \
                             (1 + 0.005 x) g / cm^3 ; \
                             200 (twaddell / (g/cm^3) +- 1)

# The degree quevenne is a unit for measuring the density of milk.
# Similarly it's unclear if negative values were allowed here.
quevenne(x) units=[1;g/cm^3] domain=[-1000,) range=[0,) \
                             (1 + 0.001 x) g / cm^3 ; \
                             1000 (quevenne / (g/cm^3) +- 1)

# Degrees brix measures sugar concentration by weigh as a percentage, so a
# solution that is 3 degrees brix is 3% sugar by weight.  This unit was named
# after Adolf Brix who invented a hydrometer that read this percentage
# directly.  This data is from Table 114 of NIST Circular 440, "Polarimetry,
# Saccharimetry and the Sugars".  It gives apparent specific gravity at 20
# degrees Celsius of various sugar concentrations.  As rendered below this
# data is converted to apparent density at 20 degrees Celsius using the
# density figure for water given in the same NIST reference.  They use the
# word "apparent" to refer to measurements being made in air with brass
# weights rather than vacuum.

brix[0.99717g/cm^3]\
    0 1.00000  1 1.00390  2 1.00780  3 1.01173  4 1.01569  5 1.01968 \
    6 1.02369  7 1.02773  8 1.03180  9 1.03590 10 1.04003 11 1.04418 \
   12 1.04837 13 1.05259 14 1.05683 15 1.06111 16 1.06542 17 1.06976 \
   18 1.07413 19 1.07853 20 1.08297 21 1.08744 22 1.09194 23 1.09647 \
   24 1.10104 25 1.10564 26 1.11027 27 1.11493 28 1.11963 29 1.12436 \
   30 1.12913 31 1.13394 32 1.13877 33 1.14364 34 1.14855 35 1.15350 \
   36 1.15847 37 1.16349 38 1.16853 39 1.17362 40 1.17874 41 1.18390 \
   42 1.18910 43 1.19434 44 1.19961 45 1.20491 46 1.21026 47 1.21564 \
   48 1.22106 49 1.22652 50 1.23202 51 1.23756 52 1.24313 53 1.24874 \
   54 1.25439 55 1.26007 56 1.26580 57 1.27156 58 1.27736 59 1.28320 \
   60 1.28909 61 1.29498 62 1.30093 63 1.30694 64 1.31297 65 1.31905 \
   66 1.32516 67 1.33129 68 1.33748 69 1.34371 70 1.34997 71 1.35627 \
   72 1.36261 73 1.36900 74 1.37541 75 1.38187 76 1.38835 77 1.39489 \
   78 1.40146 79 1.40806 80 1.41471 81 1.42138 82 1.42810 83 1.43486 \
   84 1.44165 85 1.44848 86 1.45535 87 1.46225 88 1.46919 89 1.47616 \
   90 1.48317 91 1.49022 92 1.49730 93 1.50442 94 1.51157 95 1.51876

# Density measure invented by the American Petroleum Institute.  Lighter
# petroleum products are more valuable, and they get a higher API degree.
#
# The intervals of range and domain should be open rather than closed.
#
apidegree(x) units=[1;g/cm^3] domain=[-131.5,) range=[0,) \
                              141.5 g/cm^3 / (x+131.5) ; \
                              141.5 (g/cm^3) / apidegree + (-131.5)

#
# Units derived from imperial system
#

ouncedal                oz ft / s^2     # force which accelerates an ounce
                                        #    at 1 ft/s^2
poundal                 lb ft / s^2     # same thing for a pound
tondal                  longton ft / s^2    # and for a ton
pdl                     poundal
osi                     ounce force / inch^2   # used in aviation
psi                     pound force / inch^2
psia                    psi             # absolute pressure
                                        #   Note that gauge pressure can be given
                                        #   using the gaugepressure() and
                                        #   psig() nonlinear unit definitions
tsi                     ton force / inch^2
reyn                    psi sec
slug                    lbf s^2 / ft
slugf                   slug force
slinch                  lbf s^2 / inch  # Mass unit derived from inch second
slinchf                 slinch force    #   pound-force system.  Used in space
                                        #   applications where in/sec^2 was a
                                        #   natural acceleration measure.
geepound                slug
lbf                     lb force
tonf                    ton force
lbm                     lb
kip                     1000 lbf     # from kilopound
ksi                     kip / in^2
mil                     0.001 inch
thou                    0.001 inch
tenth                   0.0001 inch  # one tenth of one thousandth of an inch
millionth               1e-6 inch    # one millionth of an inch
circularinch            1|4 pi in^2  # area of a one-inch diameter circle
circleinch              circularinch #    A circle with diameter d inches has
                                     #    an area of d^2 circularinches
cylinderinch         circleinch inch # Cylinder h inch tall, d inches diameter
                                     #    has volume d^2 h cylinder inches
circularmil             1|4 pi mil^2 # area of one-mil diameter circle
cmil                    circularmil

cental                  100 pound
centner                 cental
caliber                 0.01 inch    # for measuring bullets
duty                    ft lbf
celo                    ft / s^2
jerk                    ft / s^3
australiapoint          0.01 inch    # The "point" is used to measure rainfall
                                     #   in Australia
sabin                   ft^2         # Measure of sound absorption equal to the
                                     #   absorbing power of one square foot of
                                     #   a perfectly absorbing material.  The
                                     #   sound absorptivity of an object is the
                                     #   area times a dimensionless
                                     #   absorptivity coefficient.
standardgauge          4 ft + 8.5 in # Standard width between railroad track
flag                   5 ft^2        # Construction term referring to sidewalk.
rollwallpaper          30 ft^2       # Area of roll of wall paper
fillpower              in^3 / ounce  # Density of down at standard pressure.
                                     #   The best down has 750-800 fillpower.
pinlength              1|16 inch     # A #17 pin is 17/16 in long in the USA.
buttonline             1|40 inch     # The line was used in 19th century USA
                                     #   to measure width of buttons.
beespace               1|4 inch      # Bees will fill any space that is smaller
                                     #   than the bee space and leave open
                                     #   spaces that are larger.  The size of
                                     #   the space varies with species.
diamond                8|5 ft        # Marking on US tape measures that is
                                     #   useful to carpenters who wish to place
                                     #   five studs in an 8 ft distance.  Note
                                     #   that the numbers appear in red every
                                     #   16 inches as well, giving six
                                     #   divisions in 8 feet.
retmaunit              1.75 in       # Height of rack mountable equipment.
U                      retmaunit     #   Equipment should be 1|32 inch narrower
RU                     U             #   than its U measurement indicates to
                                     #   allow for clearance, so 4U=(6+31|32)in
                                     #   RETMA stands for the former name of
                                     #   the standardizing organization, Radio
                                     #   Electronics Television Manufacturers
                                     #   Association.  This organization is now
                                     #   called the Electronic Industries
                                     #   Alliance (EIA) and the rack standard
                                     #   is specified in EIA RS-310-D.
count                  per pound     # For measuring the size of shrimp

#
# Other units of work, energy, power, etc
#

ENERGY                  joule
WORK                    joule

# Calorie: approximate energy to raise a gram of water one degree celsius

calorie                 cal_th       # Default is the thermochemical calorie
cal                     calorie
calorie_th              4.184 J      # Thermochemical calorie, defined in 1930
thermcalorie            calorie_th   #   by Frederick Rossini as 4.1833 J to
cal_th                  calorie_th   #   avoid difficulties associated with the
                                     #   uncertainty in the heat capacity of
                                     #   water.  In 1948 the value of the joule
                                     #   was changed, so the thermochemical
                                     #   calorie was redefined to 4.184 J.
                                     #   This kept the energy measured by this
                                     #   unit the same.
calorie_IT              4.1868 J     # International (Steam) Table calorie,
cal_IT                  calorie_IT   #   defined in 1929 as watt-hour/860 or
                                     #   equivalently 180|43 joules.  At this
                                     #   time the international joule had a
                                     #   different value than the modern joule,
                                     #   and the values were different in the
                                     #   USA and in Europe.  In 1956 at the
                                     #   Fifth International Conference on
                                     #   Properties of Steam the exact
                                     #   definition given here was adopted.
calorie_15              4.18580 J    # Energy to go from 14.5 to 15.5 degC
cal_15                  calorie_15
calorie_fifteen         cal_15
calorie_20              4.18190 J    # Energy to go from 19.5 to 20.5 degC
cal_20                  calorie_20
calorie_twenty          calorie_20
cal_mean                4.19002 J    # 1|100 energy to go from 0 to 100 degC
Calorie                 kilocalorie  # the food Calorie
thermie              1e6 cal_15      # Heat required to raise the
                                     # temperature of a tonne of
                                     # water from 14.5 to 15.5 degC.

# btu definitions: energy to raise a pound of water 1 degF

btu                     btu_IT       # International Table BTU is the default
britishthermalunit      btu
btu_IT                  cal_IT lb degF / gram K
btu_th                  cal_th lb degF / gram K
btu_mean                cal_mean lb degF / gram K
quad                    quadrillion btu

ECtherm                 1.05506e8 J    # Exact definition, close to 1e5 btu
UStherm                 1.054804e8 J   # Exact definition
therm                   UStherm

# Water latent heat from [23]

water_fusion_heat       6.01 kJ/mol / (18.015 g/mol) # At 0 deg C
water_vaporization_heat 2256.4 J/g  # At saturation, 100 deg C, 101.42 kPa

# Specific heat capacities of various substances

specificheat_water      calorie / g K
water_specificheat      specificheat_water
     # Values from www.engineeringtoolbox.com/specific-heat-metals-d_152.html
specificheat_aluminum   0.91 J/g K
specificheat_antimony   0.21 J/g K
specificheat_barium     0.20 J/g K
specificheat_beryllium  1.83 J/g K
specificheat_bismuth    0.13 J/g K
specificheat_cadmium    0.23 J/g K
specificheat_cesium     0.24 J/g K
specificheat_chromium   0.46 J/g K
specificheat_cobalt     0.42 J/g K
specificheat_copper     0.39 J/g K
specificheat_gallium    0.37 J/g K
specificheat_germanium  0.32 J/g K
specificheat_gold       0.13 J/g K
specificheat_hafnium    0.14 J/g K
specificheat_indium     0.24 J/g K
specificheat_iridium    0.13 J/g K
specificheat_iron       0.45 J/g K
specificheat_lanthanum  0.195 J/g K
specificheat_lead       0.13 J/g K
specificheat_lithium    3.57 J/g K
specificheat_lutetium   0.15 J/g K
specificheat_magnesium  1.05 J/g K
specificheat_manganese  0.48 J/g K
specificheat_mercury    0.14 J/g K
specificheat_molybdenum 0.25 J/g K
specificheat_nickel     0.44 J/g K
specificheat_osmium     0.13 J/g K
specificheat_palladium  0.24 J/g K
specificheat_platinum   0.13 J/g K
specificheat_plutonum   0.13 J/g K
specificheat_potassium  0.75 J/g K
specificheat_rhenium    0.14 J/g K
specificheat_rhodium    0.24 J/g K
specificheat_rubidium   0.36 J/g K
specificheat_ruthenium  0.24 J/g K
specificheat_scandium   0.57  J/g K
specificheat_selenium   0.32 J/g K
specificheat_silicon    0.71 J/g K
specificheat_silver     0.23 J/g K
specificheat_sodium     1.21 J/g K
specificheat_strontium  0.30 J/g K
specificheat_tantalum   0.14 J/g K
specificheat_thallium   0.13 J/g K
specificheat_thorium    0.13 J/g K
specificheat_tin        0.21 J/g K
specificheat_titanium   0.54 J/g K
specificheat_tungsten   0.13 J/g K
specificheat_uranium    0.12 J/g K
specificheat_vanadium   0.39 J/g K
specificheat_yttrium    0.30 J/g K
specificheat_zinc       0.39 J/g K
specificheat_zirconium  0.27 J/g K
specificheat_ethanol    2.3  J/g K
specificheat_ammonia    4.6 J/g K
specificheat_freon      0.91 J/g K   # R-12 at 0 degrees Fahrenheit
specificheat_gasoline   2.22 J/g K
specificheat_iodine     2.15 J/g K
specificheat_oliveoil   1.97 J/g K

#  en.wikipedia.org/wiki/Heat_capacity#Table_of_specific_heat_capacities
specificheat_hydrogen   14.3 J/g K
specificheat_helium     5.1932 J/g K
specificheat_argon      0.5203 J/g K
specificheat_tissue     3.5 J/g K
specificheat_diamond    0.5091 J/g K
specificheat_granite    0.79 J/g K
specificheat_graphite   0.71 J/g K
specificheat_ice        2.11 J/g K
specificheat_asphalt    0.92 J/g K
specificheat_brick      0.84 J/g K
specificheat_concrete   0.88 J/g K
specificheat_glass_silica 0.84 J/g K
specificheat_glass_flint  0.503 J/g K
specificheat_glass_pyrex  0.753 J/g K
specificheat_gypsum     1.09 J/g K
specificheat_marble     0.88 J/g K
specificheat_sand       0.835 J/g K
specificheat_soil       0.835 J/g K
specificheat_wood       1.7 J/g K

specificheat_sucrose    1.244 J/g K #www.sugartech.co.za/heatcapacity/index.php


# Energy densities of various fuels
#
# Most of these fuels have varying compositions or qualities and hence their
# actual energy densities vary.  These numbers are hence only approximate.
#
# E1. http://bioenergy.ornl.gov/papers/misc/energy_conv.html
# E2. http://www.aps.org/policy/reports/popa-reports/energy/units.cfm
# E3. http://www.ior.com.au/ecflist.html

tonoil                  1e10 cal_IT    # Ton oil equivalent.  A conventional
                                       # value for the energy released by
toe                     tonoil         # burning one metric ton of oil. [18,E2]
                                       # Note that energy per mass of petroleum
                                       # products is fairly constant.
                                       # Variations in volumetric energy
                                       # density result from variations in the
                                       # density (kg/m^3) of different fuels.
                                       # This definition is given by the
                                       # IEA/OECD.
toncoal                 7e9 cal_IT     # Energy in metric ton coal from [18].
                                       # This is a nominal value which
                                       # is close to the heat content
                                       # of coal used in the 1950's
barreloil               5.8 Mbtu       # Conventional value for barrel of crude
                                       # oil [E2].  Actual range is 5.6 - 6.3.
naturalgas_HHV          1027 btu/ft3   # Energy content of natural gas.  HHV
naturalgas_LHV          930 btu/ft3    # is for Higher Heating Value and
naturalgas              naturalgas_HHV # includes energy from condensation
                                       # combustion products.  LHV is for Lower
                                       # Heating Value and excludes these.
                                       # American publications typically report
                                       # HHV whereas European ones report LHV.
charcoal                30 GJ/tonne
woodenergy_dry          20 GJ/tonne    # HHV, a cord weights about a tonne
woodenergy_airdry       15 GJ/tonne    # 20% moisture content
coal_bituminous         27 GJ / tonne
coal_lignite            15 GJ / tonne
coal_US                 22 GJ / uston  # Average for US coal (short ton), 1995
ethanol_HHV         84000 btu/usgallon
ethanol_LHV         75700 btu/usgallon
diesel             130500 btu/usgallon
gasoline_LHV       115000 btu/usgallon
gasoline_HHV       125000 btu/usgallon
gasoline                gasoline_HHV
heating                 37.3 MJ/liter
fueloil                 39.7 MJ/liter  # low sulphur
propane                 93.3 MJ/m^3
butane                  124 MJ/m^3

# These values give total energy from uranium fission.  Actual efficiency
# of nuclear power plants is around 30%-40%.  Note also that some reactors
# use enriched uranium around 3% U-235.  Uranium during processing or use
# may be in a compound of uranium oxide or uranium hexafluoride, in which
# case the energy density would be lower depending on how much uranium is
# in the compound.

uranium_pure     200 MeV avogadro / (235.0439299 g/mol)  # Pure U-235
uranium_natural         0.7% uranium_pure        # Natural uranium: 0.7% U-235

# Celsius heat unit: energy to raise a pound of water 1 degC

celsiusheatunit         cal lb degC / gram K
chu                     celsiusheatunit

POWER                   watt

# "Apparent" average power in an AC circuit, the product of rms voltage
# and rms current, equal to the true power in watts when voltage and
# current are in phase.  In a DC circuit, always equal to the true power.

VA                      volt ampere

kWh                     kilowatt hour

# The horsepower is supposedly the power of one horse pulling.   Obviously
# different people had different horses.

horsepower              550 foot pound force / sec    # Invented by James Watt
mechanicalhorsepower    horsepower
hp                      horsepower
metrichorsepower        75 kilogram force meter / sec # PS=Pferdestaerke in
electrichorsepower      746 W                         # Germany
boilerhorsepower        9809.50 W
waterhorsepower         746.043 W
brhorsepower            745.70 W
donkeypower             250 W
chevalvapeur            metrichorsepower

#
# Heat Transfer
#
# Thermal conductivity, K, measures the rate of heat transfer across
# a material.  The heat transfered is
#     Q = K dT A t / L
# where dT is the temperature difference across the material, A is the
# cross sectional area, t is the time, and L is the length (thickness).
# Thermal conductivity is a material property.

THERMAL_CONDUCTIVITY    POWER / AREA (TEMPERATURE_DIFFERENCE/LENGTH)
THERMAL_RESISTIVITY     1/THERMAL_CONDUCTIVITY

# Thermal conductance is the rate at which heat flows across a given
# object, so the area and thickness have been fixed.  It depends on
# the size of the object and is hence not a material property.

THERMAL_CONDUCTANCE     POWER / TEMPERATURE_DIFFERENCE
THERMAL_RESISTANCE      1/THERMAL_CONDUCTANCE

# Thermal admittance is the rate of heat flow per area across an
# object whose thickness has been fixed.  Its reciprocal, thermal
# insulation, is used to for measuring the heat transfer per area
# of sheets of insulation or cloth that are of specified thickness.

THERMAL_ADMITTANCE      THERMAL_CONDUCTIVITY / LENGTH
THERMAL_INSULANCE       THERMAL_RESISTIVITY LENGTH
THERMAL_INSULATION      THERMAL_RESISTIVITY LENGTH

Rvalue                  degF ft^2 hr / btu
Uvalue                  1/Rvalue
europeanUvalue          watt / m^2 K
RSI                     degC m^2 / W
clo                     0.155 degC m^2 / W # Supposed to be the insulance
                                           # required to keep a resting person
                                           # comfortable indoors.  The value
                                           # given is from NIST and the CRC,
                                           # but [5] gives a slightly different
                                           # value of 0.875 ft^2 degF hr / btu.
tog                     0.1 degC m^2 / W   # Also used for clothing.


# The bel was defined by engineers of Bell Laboratories to describe the
# reduction in audio level over a length of one mile. It was originally
# called the transmission unit (TU) but was renamed around 1923 to honor
# Alexander Graham Bell. The bel proved inconveniently large so the decibel
# has become more common.  The decibel is dimensionless since it reports a
# ratio, but it is used in various contexts to report a signal's power
# relative to some reference level.

bel(x)     units=[1;1] range=(0,) 10^(x);    log(bel)    # Basic bel definition
decibel(x) units=[1;1] range=(0,) 10^(x/10); 10 log(decibel) # Basic decibel
dB()       decibel                                           # Abbreviation
dBW(x)     units=[1;W] range=(0,) dB(x) W ;  ~dB(dBW/W)      # Reference = 1 W
dBk(x)     units=[1;W] range=(0,) dB(x) kW ; ~dB(dBk/kW)     # Reference = 1 kW
dBf(x)     units=[1;W] range=(0,) dB(x) fW ; ~dB(dBf/fW)     # Reference = 1 fW
dBm(x)     units=[1;W] range=(0,) dB(x) mW ; ~dB(dBm/mW)     # Reference = 1 mW
dBmW(x)    units=[1;W] range=(0,) dBm(x) ;   ~dBm(dBmW)      # Reference = 1 mW
dBJ(x)     units=[1;J] range=(0,) dB(x) J; ~dB(dBJ/J)        # Energy relative
                                     # to 1 joule.  Used for power spectral
                                     # density since W/Hz = J

# When used to measure amplitude, voltage, or current the signal is squared
# because power is proportional to the square of these measures.  The root
# mean square (RMS) voltage is typically used with these units.

dBV(x)  units=[1;V] range=(0,) dB(0.5 x) V;~dB(dBV^2 / V^2) # Reference = 1 V
dBmV(x) units=[1;V] range=(0,) dB(0.5 x) mV;~dB(dBmV^2/mV^2)# Reference = 1 mV
dBuV(x) units=[1;V] range=(0,) dB(0.5 x) microV ; ~dB(dBuV^2 / microV^2)
                                   # Reference = 1 microvolt

# Referenced to the voltage that causes 1 mW dissipation in a 600 ohm load.
# Originally defined as dBv but changed to prevent confusion with dBV.
# The "u" is for unloaded.
dBu(x) units=[1;V] range=(0,) dB(0.5 x) sqrt(mW 600 ohm) ; \
                              ~dB(dBu^2 / mW 600 ohm)
dBv(x) units=[1;V] range=(0,) dBu(x) ; ~dBu(dBv)  # Synonym for dBu


# Measurements for sound in air, referenced to the threshold of human hearing
# Note that sound in other media typically uses 1 micropascal as a reference
# for sound pressure.  Units dBA, dBB, dBC, refer to different frequency
# weightings meant to approximate the human ear's response.

dBSPL(x) units=[1;Pa] range=(0,) dB(0.5 x) 20 microPa ;  \
                                 ~dB(dBSPL^2 / (20 microPa)^2) # pressure
dBSIL(x) units=[1;W/m^2] range=(0,) dB(x) 1e-12 W/m^2; \
                                    ~dB(dBSIL / (1e-12 W/m^2)) # intensity
dBSWL(x) units=[1;W] range=(0,) dB(x) 1e-12 W; ~dB(dBSWL/1e-12 W)


# Misc other measures

ENTROPY                 ENERGY / TEMPERATURE
clausius                1e3 cal/K       # A unit of physical entropy
langley                 thermcalorie/cm^2    # Used in radiation theory
poncelet                100 kg force m / s
tonrefrigeration        uston 144 btu / lb day # One ton refrigeration is
                                        # the rate of heat extraction required
                                        # turn one ton of water to ice in
                                        # a day.  Ice is defined to have a
                                        # latent heat of 144 btu/lb.
tonref                  tonrefrigeration
refrigeration           tonref / ton
frigorie                1000 cal_15     # Used in refrigeration engineering.
tnt                     1e9 cal_th / ton# So you can write tons tnt. This
                                        # is a defined, not measured, value.
airwatt                 8.5 (ft^3/min) inH2O # Measure of vacuum power as
                                             # pressure times air flow.

# Nuclear weapon yields

davycrocket             10 ton tnt         # lightest US tactical nuclear weapon
hiroshima               15.5 kiloton tnt   # Uranium-235 fission bomb
nagasaki                21 kiloton tnt     # Plutonium-239 fission bomb
fatman                  nagasaki
littleboy               hiroshima
ivyking                 500 kiloton tnt    # most powerful fission bomb
castlebravo             15 megaton tnt     # most powerful US test
b53bomb                 9 megaton tnt
                 # http://rarehistoricalphotos.com/gadget-first-atomic-bomb/
trinity                 18 kiloton tnt     # July 16, 1945
gadget                  trinity

#
# Permeability: The permeability or permeance, n, of a substance determines
# how fast vapor flows through the substance.  The formula W = n A dP
# holds where W is the rate of flow (in mass/time), n is the permeability,
# A is the area of the flow path, and dP is the vapor pressure difference.
#

perm_0C                 grain / hr ft^2 inHg
perm_zero               perm_0C
perm_0                  perm_0C
perm                    perm_0C
perm_23C                grain / hr ft^2 in Hg23C
perm_twentythree        perm_23C

#
# Counting measures
#

pair                    2
brace                   2
nest                    3     # often used for items like bowls that
                              #   nest together
hattrick                3     # Used in sports, especially cricket and ice
                              #   hockey to report the number of goals.
dicker                  10
dozen                   12
bakersdozen             13
score                   20
flock                   40
timer                   40
shock                   60
toncount                100   # Used in sports in the UK
longhundred             120   # From a germanic counting system
gross                   144
greatgross              12 gross
tithe                   1|10  # From Anglo-Saxon word for tenth

# Paper counting measure

shortquire              24
quire                   25
shortream               480
ream                    500
perfectream             516
bundle                  2 reams
bale                    5 bundles

#
# Paper measures
#

# USA paper sizes

lettersize              8.5 inch 11 inch
legalsize               8.5 inch 14 inch
ledgersize              11 inch 17 inch
executivesize           7.25 inch 10.5 inch
Apaper                  8.5 inch 11 inch
Bpaper                  11 inch 17 inch
Cpaper                  17 inch 22 inch
Dpaper                  22 inch 34 inch
Epaper                  34 inch 44 inch

# Correspondence envelope sizes.  #10 is the standard business
# envelope in the USA.

envelope6_25size        3.5 inch 6 inch
envelope6_75size        3.625 inch 6.5 inch
envelope7size           3.75 inch 6.75 inch
envelope7_75size        3.875 inch 7.5 inch
envelope8_625size       3.625 inch 8.625 inch
envelope9size           3.875 inch 8.875 inch
envelope10size          4.125 inch 9.5 inch
envelope11size          4.5 inch 10.375 inch
envelope12size          4.75 inch 11 inch
envelope14size          5 inch 11.5 inch
envelope16size          6 inch 12 inch

# Announcement envelope sizes (no relation to metric paper sizes like A4)

envelopeA1size          3.625 inch 5.125 inch  # same as 4bar
envelopeA2size          4.375 inch 5.75 inch
envelopeA6size          4.75 inch 6.5 inch
envelopeA7size          5.25 inch 7.25 inch
envelopeA8size          5.5 inch 8.125 inch
envelopeA9size          5.75 inch 8.75 inch
envelopeA10size         6 inch 9.5 inch

# Baronial envelopes

envelope4bar            3.625 inch 5.125 inch  # same as A1
envelope5_5bar          4.375 inch 5.75 inch
envelope6bar            4.75 inch 6.5 inch

# Coin envelopes

envelope1baby           2.25 inch 3.5 inch     # same as #1 coin
envelope00coin          1.6875 inch 2.75 inch
envelope1coin           2.25 inch 3.5 inch
envelope3coin           2.5 inch 4.25 inch
envelope4coin           3 inch 4.5 inch
envelope4_5coin         3 inch 4.875 inch
envelope5coin           2.875 inch 5.25 inch
envelope5_5coin         3.125 inch 5.5 inch
envelope6coin           3.375 inch 6 inch
envelope7coin           3.5 inch 6.5 inch

# The metric paper sizes are defined so that if a sheet is cut in half
# along the short direction, the result is two sheets which are
# similar to the original sheet.  This means that for any metric size,
# the long side is close to sqrt(2) times the length of the short
# side.  Each series of sizes is generated by repeated cuts in half,
# with the values rounded down to the nearest millimeter.

A0paper                 841 mm 1189 mm   # The basic size in the A series
A1paper                 594 mm  841 mm   # is defined to have an area of
A2paper                 420 mm  594 mm   # one square meter.
A3paper                 297 mm  420 mm
A4paper                 210 mm  297 mm
A5paper                 148 mm  210 mm
A6paper                 105 mm  148 mm
A7paper                  74 mm  105 mm
A8paper                  52 mm   74 mm
A9paper                  37 mm   52 mm
A10paper                 26 mm   37 mm

B0paper                1000 mm 1414 mm   # The basic B size has an area
B1paper                 707 mm 1000 mm   # of sqrt(2) square meters.
B2paper                 500 mm  707 mm
B3paper                 353 mm  500 mm
B4paper                 250 mm  353 mm
B5paper                 176 mm  250 mm
B6paper                 125 mm  176 mm
B7paper                  88 mm  125 mm
B8paper                  62 mm   88 mm
B9paper                  44 mm   62 mm
B10paper                 31 mm   44 mm

C0paper                 917 mm 1297 mm   # The basic C size has an area
C1paper                 648 mm  917 mm   # of sqrt(sqrt(2)) square meters.
C2paper                 458 mm  648 mm
C3paper                 324 mm  458 mm   # Intended for envelope sizes
C4paper                 229 mm  324 mm
C5paper                 162 mm  229 mm
C6paper                 114 mm  162 mm
C7paper                  81 mm  114 mm
C8paper                  57 mm   81 mm
C9paper                  40 mm   57 mm
C10paper                 28 mm   40 mm

# gsm (Grams per Square Meter), a sane, metric paper weight measure

gsm                     grams / meter^2

# In the USA, a collection of crazy historical paper measures are used.  Paper
# is measured as a weight of a ream of that particular type of paper.  This is
# sometimes called the "substance" or "basis" (as in "substance 20" paper).
# The standard sheet size or "basis size" varies depending on the type of
# paper.  As a result, 20 pound bond paper and 50 pound text paper are actually
# about the same weight.  The different sheet sizes were historically the most
# convenient for printing or folding in the different applications.  These
# different basis weights are standards maintained by American Society for
# Testing Materials (ASTM) and the American Forest and Paper Association
# (AF&PA).

poundbookpaper          lb / 25 inch 38 inch ream
lbbook                  poundbookpaper
poundtextpaper          poundbookpaper
lbtext                  poundtextpaper
poundoffsetpaper        poundbookpaper    # For offset printing
lboffset                poundoffsetpaper
poundbiblepaper         poundbookpaper    # Designed to be lightweight, thin,
lbbible                 poundbiblepaper   # strong and opaque.
poundtagpaper           lb / 24 inch 36 inch ream
lbtag                   poundtagpaper
poundbagpaper           poundtagpaper
lbbag                   poundbagpaper
poundnewsprintpaper     poundtagpaper
lbnewsprint             poundnewsprintpaper
poundposterpaper        poundtagpaper
lbposter                poundposterpaper
poundtissuepaper        poundtagpaper
lbtissue                poundtissuepaper
poundwrappingpaper      poundtagpaper
lbwrapping              poundwrappingpaper
poundwaxingpaper        poundtagpaper
lbwaxing                poundwaxingpaper
poundglassinepaper      poundtagpaper
lbglassine              poundglassinepaper
poundcoverpaper         lb / 20 inch 26 inch ream
lbcover                 poundcoverpaper
poundindexpaper         lb / 25.5 inch 30.5 inch ream
lbindex                 poundindexpaper
poundindexbristolpaper  poundindexpaper
lbindexbristol          poundindexpaper
poundbondpaper          lb / 17 inch 22 inch ream  # Bond paper is stiff and
lbbond                  poundbondpaper             # durable for repeated
poundwritingpaper       poundbondpaper             # filing, and it resists
lbwriting               poundwritingpaper          # ink penetration.
poundledgerpaper        poundbondpaper
lbledger                poundledgerpaper
poundcopypaper          poundbondpaper
lbcopy                  poundcopypaper
poundblottingpaper      lb / 19 inch 24 inch ream
lbblotting              poundblottingpaper
poundblankspaper        lb / 22 inch 28 inch ream
lbblanks                poundblankspaper
poundpostcardpaper      lb / 22.5 inch 28.5 inch ream
lbpostcard              poundpostcardpaper
poundweddingbristol     poundpostcardpaper
lbweddingbristol        poundweddingbristol
poundbristolpaper       poundweddingbristol
lbbristol               poundbristolpaper
poundboxboard           lb / 1000 ft^2
lbboxboard              poundboxboard
poundpaperboard         poundboxboard
lbpaperboard            poundpaperboard

# When paper is marked in units of M, it means the weight of 1000 sheets of the
# given size of paper.  To convert this to paper weight, divide by the size of
# the paper in question.

paperM                  lb / 1000

# In addition paper weight is reported in "caliper" which is simply the
# thickness of one sheet, typically in inches.  Thickness is also reported in
# "points" where a point is 1|1000 inch.  These conversions are supplied to
# convert these units roughly (using an approximate density) into the standard
# paper weight values.

pointthickness          0.001 in
paperdensity            0.8 g/cm^3        # approximate--paper densities vary!
papercaliper            in paperdensity
paperpoint              pointthickness paperdensity

#
# Printing
#

fournierpoint           0.1648 inch / 12  # First definition of the printers
                                          # point made by Pierre Fournier who
                                          # defined it in 1737 as 1|12 of a
                                          # cicero which was 0.1648 inches.
olddidotpoint           1|72 frenchinch   # François Ambroise Didot, one of
                                          # a family of printers, changed
                                          # Fournier's definition around 1770
                                          # to fit to the French units then in
                                          # use.
bertholdpoint           1|2660 m          # H. Berthold tried to create a
                                          # metric version of the didot point
                                          # in 1878.
INpoint                 0.4 mm            # This point was created by a
                                          # group directed by Fermin Didot in
                                          # 1881 and is associated with the
                                          # imprimerie nationale.  It doesn't
                                          # seem to have been used much.
germandidotpoint        0.376065 mm       # Exact definition appears in DIN
                                          # 16507, a German standards document
                                          # of 1954.  Adopted more broadly  in
                                          # 1966 by ???
metricpoint             3|8 mm            # Proposed in 1977 by Eurograf
oldpoint                1|72.27 inch      # The American point was invented
printerspoint           oldpoint          # by Nelson Hawks in 1879 and
texpoint                oldpoint          # dominates USA publishing.
                                          # It was standardized by the American
                                          # Typefounders Association at the
                                          # value of 0.013837 inches exactly.
                                          # Knuth uses the approximation given
                                          # here (which is very close).  The
                                          # comp.fonts FAQ claims that this
                                          # value is supposed to be 1|12 of a
                                          # pica where 83 picas is equal to 35
                                          # cm.  But this value differs from
                                          # the standard.
texscaledpoint          1|65536 texpoint  # The TeX typesetting system uses
texsp                   texscaledpoint    # this for all computations.
computerpoint           1|72 inch         # The American point was rounded
point                   computerpoint
computerpica            12 computerpoint  # to an even 1|72 inch by computer
postscriptpoint         computerpoint     # people at some point.
pspoint                 postscriptpoint
twip                    1|20 point        # TWentieth of an Imperial Point
Q                       1|4 mm            # Used in Japanese phototypesetting
                                          # Q is for quarter
frenchprinterspoint     olddidotpoint
didotpoint              germandidotpoint  # This seems to be the dominant value
europeanpoint           didotpoint        # for the point used in Europe
cicero                  12 didotpoint

stick                   2 inches

# Type sizes

excelsior               3 oldpoint
brilliant               3.5 oldpoint
diamondtype             4 oldpoint
pearl                   5 oldpoint
agate                   5.5 oldpoint  # Originally agate type was 14 lines per
                                      #   inch, giving a value of 1|14 in.
ruby                    agate         # British
nonpareil               6 oldpoint
mignonette              6.5 oldpoint
emerald                 mignonette    # British
minion                  7 oldpoint
brevier                 8 oldpoint
bourgeois               9 oldpoint
longprimer              10 oldpoint
smallpica               11 oldpoint
pica                    12 oldpoint
english                 14 oldpoint
columbian               16 oldpoint
greatprimer             18 oldpoint
paragon                 20 oldpoint
meridian                44 oldpoint
canon                   48 oldpoint

# German type sizes

nonplusultra            2 didotpoint
brillant                3 didotpoint
diamant                 4 didotpoint
perl                    5 didotpoint
nonpareille             6 didotpoint
kolonel                 7 didotpoint
petit                   8 didotpoint
borgis                  9 didotpoint
korpus                  10 didotpoint
corpus                  korpus
garamond                korpus
mittel                  14 didotpoint
tertia                  16 didotpoint
text                    18 didotpoint
kleine_kanon            32 didotpoint
kanon                   36 didotpoint
grobe_kanon             42 didotpoint
missal                  48 didotpoint
kleine_sabon            72 didotpoint
grobe_sabon             84 didotpoint

#
# Information theory units.  Note that the name "entropy" is used both
# to measure information and as a physical quantity.
#

INFORMATION             bit

nat                     (1/ln(2)) bits       # Entropy measured base e
hartley                 log2(10) bits        # Entropy of a uniformly
ban                     hartley              #   distributed random variable
                                             #   over 10 symbols.
dit                     hartley              # from Decimal digIT

#
# Computer
#

bps                     bit/sec              # Sometimes the term "baud" is
                                             #   incorrectly used to refer to
                                             #   bits per second.  Baud refers
                                             #   to symbols per second.  Modern
                                             #   modems transmit several bits
                                             #   per symbol.
byte                    8 bit                # Not all machines had 8 bit
B                       byte                 #   bytes, but these days most of
                                             #   them do.  But beware: for
                                             #   transmission over modems, a
                                             #   few extra bits are used so
                                             #   there are actually 10 bits per
                                             #   byte.
octet                   8 bits               # The octet is always 8 bits
nybble                  4 bits               # Half of a byte. Sometimes
                                             #   equal to different lengths
                                             #   such as 3 bits.
nibble                  nybble
nyp                     2 bits               # Donald Knuth asks in an exercise
                                             #   for a name for a 2 bit
                                             #   quantity and gives the "nyp"
                                             #   as a solution due to Gregor
                                             #   Purdy.  Not in common use.
meg                     megabyte             # Some people consider these
                                             # units along with the kilobyte
gig                     gigabyte             # to be defined according to
                                             # powers of 2 with the kilobyte
                                             # equal to 2^10 bytes, the
                                             # megabyte equal to 2^20 bytes and
                                             # the gigabyte equal to 2^30 bytes
                                             # but these usages are forbidden
                                             # by SI.  Binary prefixes have
                                             # been defined by IEC to replace
                                             # the SI prefixes.  Use them to
                                             # get the binary values: KiB, MiB,
                                             # and GiB.
jiffy                   0.01 sec     # This is defined in the Jargon File
jiffies                 jiffy        # (http://www.jargon.org) as being the
                                     # duration of a clock tick for measuring
                                     # wall-clock time.  Supposedly the value
                                     # used to be 1|60 sec or 1|50 sec
                                     # depending on the frequency of AC power,
                                     # but then 1|100 sec became more common.
                                     # On linux systems, this term is used and
                                     # for the Intel based chips, it does have
                                     # the value of .01 sec.  The Jargon File
                                     # also lists two other definitions:
                                     # millisecond, and the time taken for
                                     # light to travel one foot.
cdaudiospeed      44.1 kHz 2*16 bits # CD audio data rate at 44.1 kHz with 2
                                     # samples of sixteen bits each.
cdromspeed       75 2048 bytes / sec # For data CDs (mode1) 75 sectors are read
                                     # each second with 2048 bytes per sector.
                                     # Audio CDs do not have sectors, but
                                     # people sometimes divide the bit rate by
                                     # 75 and claim a sector length of 2352.
                                     # Data CDs have a lower rate due to
                                     # increased error correction overhead.
                                     # There is a rarely used mode (mode2) with
                                     # 2336 bytes per sector that has fewer
                                     # error correction bits than mode1.
dvdspeed                 1385 kB/s   # This is the "1x" speed of a DVD using
                                     # constant linear velocity (CLV) mode.
                                     # Modern DVDs may vary the linear velocity
                                     # as they go from the inside to the
                                     # outside of the disc.
                       # See http://www.osta.org/technology/dvdqa/dvdqa4.htm
#
# The IP address space is divided into subnets.  The number of hosts
# in a subnet depends on the length of the subnet prefix.  This is
# often written as /N where N is the number of bits in the prefix.
#
# https://en.wikipedia.org/wiki/Subnetwork
#
# These definitions gives the number of hosts for a subnet whose
# prefix has the specified length in bits.
#

ipv4subnetsize(prefix_len) units=[1;1]  domain=[0,32] range=[1,4294967296] \
                         2^(32-prefix_len) ; 32-log2(ipv4subnetsize)
#ipv4classA               ipv4subnetsize(8)
#ipv4classB               ipv4subnetsize(16)
#ipv4classC               ipv4subnetsize(24)

ipv6subnetsize(prefix_len) units=[1;1] domain=[0,128] \
                         range=[1,340282366920938463463374607431768211456] \
                         2^(128-prefix_len) ; 128-log2(ipv6subnetsize)

#
# Musical measures.  Musical intervals expressed as ratios.  Multiply
# two intervals together to get the sum of the interval.  The function
# musicalcent can be used to convert ratios to cents.
#

# Perfect intervals

octave                  2
majorsecond             musicalfifth^2 / octave
majorthird              5|4
minorthird              6|5
musicalfourth           4|3
musicalfifth            3|2
majorsixth              musicalfourth majorthird
minorsixth              musicalfourth minorthird
majorseventh            musicalfifth majorthird
minorseventh            musicalfifth minorthird

pythagoreanthird        majorsecond musicalfifth^2 / octave
syntoniccomma           pythagoreanthird / majorthird
pythagoreancomma        musicalfifth^12 / octave^7

# Equal tempered definitions

semitone                octave^(1|12)
musicalcent(x) units=[1;1] range=(0,) semitone^(x/100) ; \
                                      100 log(musicalcent)/log(semitone)

#
# Musical note lengths.
#

wholenote               !
MUSICAL_NOTE_LENGTH     wholenote
halfnote                1|2 wholenote
quarternote             1|4 wholenote
eighthnote              1|8 wholenote
sixteenthnote           1|16 wholenote
thirtysecondnote        1|32 wholenote
sixtyfourthnote         1|64 wholenote
dotted                  3|2
doubledotted            7|4
breve                   doublewholenote
semibreve               wholenote
minimnote               halfnote
crotchet                quarternote
quaver                  eighthnote
semiquaver              sixteenthnote
demisemiquaver          thirtysecondnote
hemidemisemiquaver      sixtyfourthnote
semidemisemiquaver      hemidemisemiquaver

#
# yarn and cloth measures
#

# yarn linear density

woolyarnrun             1600 yard/pound # 1600 yds of "number 1 yarn" weighs
                                        # a pound.
yarncut                 300 yard/pound  # Less common system used in
                                        # Pennsylvania for wool yarn
cottonyarncount         840 yard/pound
linenyarncount          300 yard/pound  # Also used for hemp and ramie
worstedyarncount        1680 ft/pound
metricyarncount         meter/gram
denier                  1|9 tex            # used for silk and rayon
manchesteryarnnumber    drams/1000 yards   # old system used for silk
pli                     lb/in
typp                    1000 yd/lb   # abbreviation for Thousand Yard Per Pound
asbestoscut             100 yd/lb    # used for glass and asbestos yarn

tex                     gram / km    # rational metric yarn measure, meant
drex                    0.1 tex      # to be used for any kind of yarn
poumar                  lb / 1e6 yard

# yarn and cloth length

skeincotton             80*54 inch   # 80 turns of thread on a reel with a
                                     #  54 in circumference (varies for other
                                     #  kinds of thread)
cottonbolt              120 ft       # cloth measurement
woolbolt                210 ft
bolt                    cottonbolt
heer                    600 yards
cut                     300 yards    # used for wet-spun linen yarn
lea                     300 yards

sailmakersyard          28.5 in
sailmakersounce         oz / sailmakersyard 36 inch

silkmomme               momme / 25 yards 1.49 inch  # Traditional silk weight
silkmm                  silkmomme        # But it is also defined as
                                         # lb/100 yd 45 inch.  The two
                                         # definitions are slightly different
                                         # and neither one seems likely to be
                                         # the true source definition.

#
# drug dosage
#

mcg                     microgram        # Frequently used for vitamins
iudiptheria             62.8 microgram   # IU is for international unit
iupenicillin            0.6 microgram
iuinsulin               41.67 microgram
drop                    1|20 ml          # The drop was an old "unit" that was
                                         # replaced by the minim.  But I was
                                         # told by a pharmacist that in his
                                         # profession, the conversion of 20
                                         # drops per ml is actually used.
bloodunit               450 ml           # For whole blood.  For blood
                                         # components, a blood unit is the
                                         # quanity of the component found in a
                                         # blood unit of whole blood.  The
                                         # human body contains about 12 blood
                                         # units of whole blood.

#
# misc medical measure
#

frenchcathetersize      1|3 mm           # measure used for the outer diameter
                                         # of a catheter
charriere               frenchcathetersize


#
# fixup units for times when prefix handling doesn't do the job
#

hectare                 hectoare
megohm                  megaohm
kilohm                  kiloohm
microhm                 microohm
megalerg                megaerg    # 'L' added to make it pronounceable [18].

#
# Money
#
# Note that US$ is the primitive unit so other currencies are
# generally given in US$.
#

unitedstatesdollar      US$
usdollar                US$
$                       dollar
#mark                    germanymark
#bolivar                 venezuelabolivar
#venezuelanbolivarfuerte venezuelabolivar
#bolivarfuerte           bolivar        # The currency was revalued by
#oldbolivar              1|1000 bolivar # a factor of 1000.
#peseta                  spainpeseta
#rand                    southafricarand
#escudo                  portugalescudo
#guilder                 netherlandsguilder
#hollandguilder          netherlandsguilder
#peso                    mexicopeso
#yen                     japanyen
#lira                    italylira
#rupee                   indiarupee
#drachma                 greecedrachma
#franc                   francefranc
#markka                  finlandmarkka
#britainpound            unitedkingdompound
#greatbritainpound       unitedkingdompound
#unitedkingdompound      ukpound
#poundsterling           britainpound
#yuan                    chinayuan

# Some European currencies have permanent fixed exchange rates with
# the Euro.  These rates were taken from the EC's web site:
# http://ec.europa.eu/economy_finance/euro/adoption/conversion/index_en.htm

#austriaschilling        1|13.7603 euro
#belgiumfranc            1|40.3399 euro
#estoniakroon            1|15.6466 euro # Equal to 1|8 germanymark
#finlandmarkka           1|5.94573 euro
#francefranc             1|6.55957 euro
#germanymark             1|1.95583 euro
#greecedrachma           1|340.75 euro
#irelandpunt             1|0.787564 euro
#italylira               1|1936.27 euro
#luxembourgfranc         1|40.3399 euro
#netherlandsguilder      1|2.20371 euro
#portugalescudo          1|200.482 euro
#spainpeseta             1|166.386 euro
#cypruspound             1|0.585274 euro
#maltalira               1|0.429300 euro
#sloveniatolar           1|239.640 euro
#slovakiakoruna          1|30.1260 euro

#UKP                     GBP        # Not an ISO code, but looks like one, and
#                                   # sometimes used on usenet.
#VEB                     1|1000 VEF # old venezuelan bolivar

!include currency.units

# Money on the gold standard, used in the late 19th century and early
# 20th century.

#olddollargold           23.22 grains goldprice  # Used until 1934
#newdollargold           96|7 grains goldprice   # After Jan 31, 1934
#dollargold              newdollargold
#poundgold               113 grains goldprice
#goldounce               goldprice troyounce
#silverounce             silverprice troyounce
#platinumounce           platinumprice troyounce
#XAU                     goldounce
#XPT                     platinumounce
#XAG                     silverounce

# Nominal masses of US coins.  Note that dimes, quarters and half dollars
# have weight proportional to value.  Before 1965 it was $40 / kg.

USpennyweight           2.5 grams         # Since 1982, 48 grains before
USnickelweight          5 grams
USdimeweight            US$ 0.10 / (20 US$ / lb)   # Since 1965
USquarterweight         US$ 0.25 / (20 US$ / lb)   # Since 1965
UShalfdollarweight      US$ 0.50 / (20 US$ / lb)   # Since 1971
USdollarmass            8.1 grams

# British currency

#quid                    britainpound        # Slang names
#fiver                   5 quid
#tenner                  10 quid
#monkey                  500 quid
#brgrand                 1000 quid
#bob                     shilling

#shilling                1|20 britainpound   # Before decimalisation, there
#oldpence                1|12 shilling       # were 20 shillings to a pound,
#farthing                1|4 oldpence        # each of twelve old pence
#guinea                  21 shilling         # Still used in horse racing
#crown                   5 shilling
#florin                  2 shilling
#groat                   4 oldpence
#tanner                  6 oldpence
#brpenny                 0.01 britainpound
#pence                   brpenny
#tuppence                2 pence
#tuppenny                tuppence
#ha'penny                halfbrpenny
#hapenny                 ha'penny
#oldpenny                oldpence
#oldtuppence             2 oldpence
#oldtuppenny             oldtuppence
#threepence              3 oldpence    # threepence never refers to new money
#threepenny              threepence
#oldthreepence           threepence
#oldthreepenny           threepence
#oldhalfpenny            halfoldpenny
#oldha'penny             oldhalfpenny
#oldhapenny              oldha'penny
#brpony                  25 britainpound

# Canadian currency

#loony                   1 canadadollar    # This coin depicts a loon
#toony                   2 canadadollar

#
# Units used for measuring volume of wood
#

cord                    4*4*8 ft^3   # 4 ft by 4 ft by 8 ft bundle of wood
facecord                1|2 cord
cordfoot                1|8 cord     # One foot long section of a cord
cordfeet                cordfoot
housecord               1|3 cord     # Used to sell firewood for residences,
                                     #   often confusingly called a "cord"
boardfoot               ft^2 inch    # Usually 1 inch thick wood
boardfeet               boardfoot
fbm                     boardfoot    # feet board measure
stack                   4 yard^3     # British, used for firewood and coal [18]
rick                    4 ft 8 ft 16 inches # Stack of firewood, supposedly
                                     #   sometimes called a face cord, but this
                                     #   value is equal to 1|3 cord.  Name
                                     #   comes from an old Norse word for a
                                     #   stack of wood.
stere                   m^3
timberfoot              ft^3         # Used for measuring solid blocks of wood
standard                120 12 ft 11 in 1.5 in  # This is the St Petersburg or
                                     #   Pittsburg standard.  Apparently the
                                     #   term is short for "standard hundred"
                                     #   which was meant to refer to 100 pieces
                                     #   of wood (deals).  However, this
                                     #   particular standard is equal to 120
                                     #   deals which are 12 ft by 11 in by 1.5
                                     #   inches (not the standard deal).
hoppusfoot               (4/pi) ft^3 # Volume calculation suggested in 1736
hoppusboardfoot      1|12 hoppusfoot #   forestry manual by Edward Hoppus, for
hoppuston              50 hoppusfoot #   estimating the usable volume of a log.
                                     #   It results from computing the volume
                                     #   of a cylindrical log of length, L, and
                                     #   girth (circumference), G, by V=L(G/4)^2.
                                     #   The hoppus ton is apparently still in
                                     #   use for shipments from Southeast Asia.

# In Britain, the deal is apparently any piece of wood over 6 feet long, over
# 7 wide and 2.5 inches thick.  The OED doesn't give a standard size.  A piece
# of wood less than 7 inches wide is called a "batten".  This unit is now used
# exclusively for fir and pine.

deal              12 ft 11 in 2.5 in # The standard North American deal [OED]
wholedeal        12 ft 11 in 1.25 in # If it's half as thick as the standard
                                     #   deal it's called a "whole deal"!
splitdeal         12 ft 11 in 5|8 in # And half again as thick is a split deal.


# Used for shellac mixing rate

poundcut            pound / gallon
lbcut               poundcut

#
# Gas and Liquid flow units
#

FLUID_FLOW              VOLUME / TIME

# Some obvious volumetric gas flow units (cu is short for cubic)

cumec                   m^3/s
cusec                   ft^3/s

# Conventional abbreviations for fluid flow units

gph                     gal/hr
gpm                     gal/min
mgd                     megagal/day
cfs                     ft^3/s
cfh                     ft^3/hour
cfm                     ft^3/min
lpm                     liter/min
lfm                     ft/min     # Used to report air flow produced by fans.
                                   # Multiply by cross sectional area to get a
                                   # flow in cfm.

pru                     mmHg / (ml/min)  # peripheral resistance unit, used in
                                         # medicine to assess blood flow in
                                         # the capillaries.

# Miner's inch:  This is an old historic unit used in the Western  United
# States.  It is generally defined as the rate of flow through a one square
# inch hole at a specified depth such as 4 inches.  In the late 19th century,
# volume of water was sometimes measured in the "24 hour inch".  Values for the
# miner's inch were fixed by state statues.  (This information is from a web
# site operated by the Nevada Division of Water Planning:  The Water Words
# Dictionary at http://www.state.nv.us/cnr/ndwp/dict-1/waterwds.htm.)

minersinchAZ            1.5 ft^3/min
minersinchCA            1.5 ft^3/min
minersinchMT            1.5 ft^3/min
minersinchNV            1.5 ft^3/min
minersinchOR            1.5 ft^3/min
minersinchID            1.2 ft^3/min
minersinchKS            1.2 ft^3/min
minersinchNE            1.2 ft^3/min
minersinchNM            1.2 ft^3/min
minersinchND            1.2 ft^3/min
minersinchSD            1.2 ft^3/min
minersinchUT            1.2 ft^3/min
minersinchCO            1 ft^3/sec / 38.4  # 38.4 miner's inches = 1 ft^3/sec
minersinchBC            1.68 ft^3/min      # British Columbia

# Oceanographic flow

sverdrup                1e6 m^3 / sec   # Used to express flow of ocean
                                        # currents.  Named after Norwegian
                                        # oceanographer H. Sverdrup.

# In vacuum science and some other applications, gas flow is measured
# as the product of volumetric flow and pressure.  This is useful
# because it makes it easy to compare with the flow at standard
# pressure (one atmosphere).  It also directly relates to the number
# of gas molecules per unit time, and hence to the mass flow if the
# molecular mass is known.

GAS_FLOW                PRESSURE FLUID_FLOW

sccm                    atm cc/min     # 's' is for "standard" to indicate
sccs                    atm cc/sec     # flow at standard pressure
scfh                    atm ft^3/hour  #
scfm                    atm ft^3/min
slpm                    atm liter/min
slph                    atm liter/hour
lusec                   liter micron Hg / s  # Used in vacuum science

# US Standard Atmosphere (1976)
# Atmospheric temperature and pressure vs. geometric height above sea level
# This definition covers only the troposphere (the lowest atmospheric
# layer, up to 11 km), and assumes the layer is polytropic.
# A polytropic process is one for which PV^k = const, where P is the
# pressure, V is the volume, and k is the polytropic exponent.  The
# polytropic index is n = 1 / (k - 1).  As noted in the Wikipedia article
# https://en.wikipedia.org/wiki/Polytropic_process, some authors reverse
# the definitions of "exponent" and "index."  The functions below assume
# the following parameters:

# temperature lapse rate, -dT/dz, in troposphere

lapserate       6.5 K/km        # US Std Atm (1976)

# air molecular weight, including constituent mol wt, given
# in Table 3, p. 3

air_1976        78.084   %    28.0134 \
              + 20.9476  %    31.9988 \
              + 9340     ppm  39.948 \
              +  314     ppm  44.00995 \
              +   18.18  ppm  20.183 \
              +    5.24  ppm   4.0026 \
              +    2     ppm  16.04303 \
              +    1.14  ppm  83.80 \
              +    0.55  ppm   2.01594 \
              +    0.087 ppm 131.30

# universal gas constant
R_1976          8.31432e3 N m/(kmol K)

# polytropic index n
polyndx_1976    air_1976 (kg/kmol) gravity/(R_1976 lapserate) - 1

# If desired, redefine using current values for air mol wt and R

polyndx         polyndx_1976
# polyndx       air (kg/kmol) gravity/(R lapserate) - 1

# for comparison with various references

polyexpnt       (polyndx + 1) / polyndx

# The model assumes the following reference values:
# sea-level temperature and pressure

stdatmT0        288.15 K
stdatmP0        atm

# "effective radius" for relation of geometric to geopotential height,
# at a latitude at which g = 9.80665 m/s (approximately 45.543 deg); no
# relation to actual radius

earthradUSAtm   6356766 m

# Temperature vs. geopotential height h
# Assumes 15 degC at sea level
# Based on approx 45 deg latitude
# Lower limits of domain and upper limits of range are those of the
# tables in US Standard Atmosphere (NASA 1976)

stdatmTH(h) units=[m;K] domain=[-5000,11e3] range=[217,321] \
    stdatmT0+(-lapserate h) ; (stdatmT0+(-stdatmTH))/lapserate

# Temperature vs. geometric height z; based on approx 45 deg latitude
stdatmT(z) units=[m;K] domain=[-5000,11e3] range=[217,321] \
    stdatmTH(geop_ht(z)) ; ~geop_ht(~stdatmTH(stdatmT))

# Pressure vs. geopotential height h
# Assumes 15 degC and 101325 Pa at sea level
# Based on approx 45 deg latitude
# Lower limits of domain and upper limits of range are those of the
# tables in US Standard Atmosphere (NASA 1976)

stdatmPH(h) units=[m;Pa] domain=[-5000,11e3] range=[22877,177764] \
    atm (1 - (lapserate/stdatmT0) h)^(polyndx + 1) ; \
    (stdatmT0/lapserate) (1+(-(stdatmPH/stdatmP0)^(1/(polyndx + 1))))

# Pressure vs. geometric height z; based on approx 45 deg latitude
stdatmP(z) units=[m;Pa] domain=[-5000,11e3] range=[22877,177764] \
   stdatmPH(geop_ht(z)); ~geop_ht(~stdatmPH(stdatmP))

# Geopotential height from geometric height
# Based on approx 45 deg latitude
# Lower limits of domain and range are somewhat arbitrary; they
# correspond to the limits in the US Std Atm tables

geop_ht(z) units=[m;m] domain=[-5000,) range=[-5004,) \
    (earthradUSAtm z) / (earthradUSAtm + z) ; \
    (earthradUSAtm geop_ht) / (earthradUSAtm + (-geop_ht))

# The standard value for the sea-level acceleration due to gravity is
# 9.80665 m/s^2, but the actual value varies with latitude (Harrison 1949)
# R_eff = 2 g_phi / denom
# g_phi = 978.0356e-2 (1+0.0052885 sin(lat)^2+(-0.0000059) sin(2 lat)^2)
#   or
# g_phi = 980.6160e-2 (1+(-0.0026373) cos(2 lat)+0.0000059 cos(2 lat)^2)
# denom = 3.085462e-6+2.27e-9 cos(2 lat)+(-2e-12) cos(4 lat) (minutes?)
# There is no inverse function; the standard value applies at a latitude
# of about 45.543 deg

g_phi(lat) units=[deg;m/s2] domain=[0,90] noerror  \
    980.6160e-2 (1+(-0.0026373) cos(2 lat)+0.0000059 cos(2 lat)^2) m/s2

# effective Earth radius for relation of geometric height to
# geopotential height, as function of latitude (Harrison 1949)

earthradius_eff(lat) units=[deg;m] domain=[0,90] noerror \
    m 2 9.780356 (1+0.0052885 sin(lat)^2+(-0.0000059) sin(2 lat)^2) / \
    (3.085462e-6 + 2.27e-9 cos(2 lat) + (-2e-12) cos(4 lat))

# References
# Harrison, L.P. 1949.  Relation Between Geopotential and Geometric
#   Height.  In Smithsonian Meteorological Tables. List, Robert J., ed.
#   6th ed., 4th reprint, 1968.  Washington, DC: Smithsonian Institution.
# NASA.  US National Aeronautics and Space Administration. 1976.
#   US Standard Atmosphere 1976.  Washington, DC: US Government Printing Office.

# Gauge pressure functions
#
# Gauge pressure is measured relative to atmospheric pressure.  In the English
# system, where pressure is often given in pounds per square inch, gauge
# pressure is often indicated by 'psig' to distinguish it from absolute
# pressure, often indicated by 'psia'.  At the standard atmospheric pressure
# of 14.696 psia, a gauge pressure of 0 psig is an absolute pressure of 14.696
# psia; an automobile tire inflated to 31 psig has an absolute pressure of
# 45.696 psia.
#
# With gaugepressure(), the units must be specified (e.g., gaugepressure(1.5
# bar)); with psig(), the units are taken as psi, so the example above of tire
# pressure could be given as psig(31).
#
# If the normal elevation is significantly different from sea level, change
# Patm appropriately, and adjust the lower domain limit on the gaugepressure
# definition.

Patm    atm

gaugepressure(x) units=[Pa;Pa] domain=[-101325,) range=[0,) \
                x + Patm ; gaugepressure+(-Patm)

psig(x) units=[1;Pa] domain=[-14.6959487755135,) range=[0,) \
    gaugepressure(x psi) ; ~gaugepressure(psig) / psi

#
# Wire Gauge
#
# This area is a nightmare with huge charts of wire gauge diameters
# that usually have no clear origin.  There are at least 5 competing wire gauge
# systems to add to the confusion.  The use of wire gauge is related to the
# manufacturing method: a metal rod is heated and drawn through a hole.  The
# size change can't be too big.  To get smaller wires, the process is repeated
# with a series of smaller holes.  Generally larger gauges mean smaller wires.
# The gauges often have values such as "00" and "000" which are larger sizes
# than simply "0" gauge.  In the tables that appear below, these gauges must be
# specified as negative numbers (e.g. "00" is -1, "000" is -2, etc).
# Alternatively, you can use the following units:
#

g00                      (-1)
g000                     (-2)
g0000                    (-3)
g00000                   (-4)
g000000                  (-5)
g0000000                 (-6)

# American Wire Gauge (AWG) or Brown & Sharpe Gauge appears to be the most
# important gauge. ASTM B-258 specifies that this gauge is based on geometric
# interpolation between gauge 0000, which is 0.46 inches exactly, and gauge 36
# which is 0.005 inches exactly.  Therefore, the diameter in inches of a wire
# is given by the formula 1|200 92^((36-g)/39).  Note that 92^(1/39) is close
# to 2^(1/6), so diameter is approximately halved for every 6 gauges.  For the
# repeated zero values, use negative numbers in the formula.  The same document
# also specifies rounding rules which seem to be ignored by makers of tables.
# Gauges up to 44 are to be specified with up to 4 significant figures, but no
# closer than 0.0001 inch.  Gauges from 44 to 56 are to be rounded to the
# nearest 0.00001 inch.
#
# In addition to being used to measure wire thickness, this gauge is used to
# measure the thickness of sheets of aluminum, copper, and most metals other
# than steel, iron and zinc.

wiregauge(g) units=[1;m] range=(0,) \
             1|200 92^((36+(-g))/39) in; 36+(-39)ln(200 wiregauge/in)/ln(92)
awg()        wiregauge

# Next we have the SWG, the Imperial or British Standard Wire Gauge.  This one
# is piecewise linear.  It was used for aluminum sheets.

brwiregauge[in]  \
       -6 0.5    \
       -5 0.464  \
       -3 0.4    \
       -2 0.372  \
        3 0.252  \
        6 0.192  \
       10 0.128  \
       14 0.08   \
       19 0.04   \
       23 0.024  \
       26 0.018  \
       28 0.0148 \
       30 0.0124 \
       39 0.0052 \
       49 0.0012 \
       50 0.001

# The following is from the Appendix to ASTM B 258
#
#    For example, in U.S. gage, the standard for sheet metal is based on the
#    weight of the metal, not on the thickness. 16-gage is listed as
#    approximately .0625 inch thick and 40 ounces per square foot (the original
#    standard was based on wrought iron at .2778 pounds per cubic inch; steel
#    has almost entirely superseded wrought iron for sheet use, at .2833 pounds
#    per cubic inch). Smaller numbers refer to greater thickness. There is no
#    formula for converting gage to thickness or weight.
#
# It's rather unclear from the passage above whether the plate gauge values are
# therefore wrong if steel is being used.  Reference [15] states that steel is
# in fact measured using this gauge (under the name Manufacturers' Standard
# Gauge) with a density of 501.84 lb/ft3 = 0.2904 lb/in3 used for steel.
# But this doesn't seem to be the correct density of steel (.2833 lb/in3 is
# closer).
#
# This gauge was established in 1893 for purposes of taxation.

# Old plate gauge for iron

plategauge[(oz/ft^2)/(480*lb/ft^3)] \
      -5 300   \
       1 180   \
      14  50   \
      16  40   \
      17  36   \
      20  24   \
      26  12   \
      31   7   \
      36   4.5 \
      38   4

# Manufacturers Standard Gage

stdgauge[(oz/ft^2)/(501.84*lb/ft^3)] \
      -5 300   \
       1 180   \
      14  50   \
      16  40   \
      17  36   \
      20  24   \
      26  12   \
      31   7   \
      36   4.5 \
      38   4

# A special gauge is used for zinc sheet metal.  Notice that larger gauges
# indicate thicker sheets.

zincgauge[in]    \
        1 0.002  \
       10 0.02   \
       15 0.04   \
       19 0.06   \
       23 0.1    \
       24 0.125  \
       27 0.5    \
       28 1

#
# Imperial drill bit sizes are reported in inches or in a numerical or
# letter gauge.
#

drillgauge[in] \
       1  0.2280 \
       2  0.2210 \
       3  0.2130 \
       4  0.2090 \
       5  0.2055 \
       6  0.2040 \
       7  0.2010 \
       8  0.1990 \
       9  0.1960 \
      10  0.1935 \
      11  0.1910 \
      12  0.1890 \
      13  0.1850 \
      14  0.1820 \
      15  0.1800 \
      16  0.1770 \
      17  0.1730 \
      18  0.1695 \
      19  0.1660 \
      20  0.1610 \
      22  0.1570 \
      23  0.1540 \
      24  0.1520 \
      25  0.1495 \
      26  0.1470 \
      27  0.1440 \
      28  0.1405 \
      29  0.1360 \
      30  0.1285 \
      31  0.1200 \
      32  0.1160 \
      33  0.1130 \
      34  0.1110 \
      35  0.1100 \
      36  0.1065 \
      38  0.1015 \
      39  0.0995 \
      40  0.0980 \
      41  0.0960 \
      42  0.0935 \
      43  0.0890 \
      44  0.0860 \
      45  0.0820 \
      46  0.0810 \
      48  0.0760 \
      51  0.0670 \
      52  0.0635 \
      53  0.0595 \
      54  0.0550 \
      55  0.0520 \
      56  0.0465 \
      57  0.0430 \
      65  0.0350 \
      66  0.0330 \
      68  0.0310 \
      69  0.0292 \
      70  0.0280 \
      71  0.0260 \
      73  0.0240 \
      74  0.0225 \
      75  0.0210 \
      76  0.0200 \
      78  0.0160 \
      79  0.0145 \
      80  0.0135 \
      88  0.0095 \
      104 0.0031

drillA    0.234 in
drillB    0.238 in
drillC    0.242 in
drillD    0.246 in
drillE    0.250 in
drillF    0.257 in
drillG    0.261 in
drillH    0.266 in
drillI    0.272 in
drillJ    0.277 in
drillK    0.281 in
drillL    0.290 in
drillM    0.295 in
drillN    0.302 in
drillO    0.316 in
drillP    0.323 in
drillQ    0.332 in
drillR    0.339 in
drillS    0.348 in
drillT    0.358 in
drillU    0.368 in
drillV    0.377 in
drillW    0.386 in
drillX    0.397 in
drillY    0.404 in
drillZ    0.413 in

#
# Screw sizes
#
# In the USA, screw diameters are reported using a gauge number.
# Metric screws are reported as Mxx where xx is the diameter in mm.
#

screwgauge(g) units=[1;m] range=[0,) \
              (.06 + .013 g) in ; (screwgauge/in + (-.06)) / .013

#
# Abrasive grit size
#
# Standards governing abrasive grit sizes are complicated, specifying
# fractions of particles that are passed or retained by different mesh
# sizes.  As a result, it is not possible to make precise comparisons
# of different grit standards.  The tables below allow the
# determination of rough equivlants by using median particle size.
#
# Standards in the USA are determined by the Unified Abrasives
# Manufacturers' Association (UAMA), which resulted from the merger of
# several previous organizations.  One of the old organizations was
# CAMI (Coated Abrasives Manufacturers' Institute).
#
# UAMA has a web page with plots showing abrasive particle ranges for
# various different grits and comparisons between standards.
#
# http://www.uama.org/Abrasives101/101Standards.html
#
# Abrasives are grouped into "bonded" abrasives for use with grinding
# wheels and "coated" abrasives for sandpapers and abrasive films.
# The industry uses different grit standards for these two
# categories.
#
# Another division is between "macrogrits", grits below 240 and
# "microgrits", which are above 240.  Standards differ, as do methods
# for determining particle size.  In the USA, ANSI B74.12 is the
# standard governing macrogrits.  ANSI B74.10 covers bonded microgrit
# abrasives, and ANSI B74.18 covers coated microgrit abrasives.  It
# appears that the coated standard is identical to the bonded standard
# for grits up through 600 but then diverges significantly.
#
# European grit sizes are determined by the Federation of European
# Producers of Abrasives.  http://www.fepa-abrasives.org
#
# They give two standards, the "F" grit for bonded abrasives and the
# "P" grit for coated abrasives.  This data is taken directly from
# their web page.

# FEPA P grit for coated abrasives is commonly seen on sandpaper in
# the USA where the paper will be marked P600, for example.  FEPA P
# grits are said to be more tightly constrained than comparable ANSI
# grits so that the particles are more uniform in size and hence give
# a better finish.

grit_P[micron] \
        12 1815 \
        16 1324 \
        20 1000 \
        24 764 \
        30 642 \
        36 538 \
        40 425 \
        50 336 \
        60 269 \
        80 201 \
        100 162 \
        120 125 \
        150 100 \
        180 82 \
        220 68 \
        240 58.5 \
        280 52.2 \
        320 46.2 \
        360 40.5 \
        400 35 \
        500 30.2 \
        600 25.8 \
        800 21.8 \
        1000 18.3 \
        1200 15.3 \
        1500 12.6 \
        2000 10.3 \
        2500 8.4

# The F grit is the European standard for bonded abrasives such as
# grinding wheels

grit_F[micron] \
        4 4890 \
        5 4125 \
        6 3460 \
        7 2900 \
        8 2460 \
        10 2085 \
        12 1765 \
        14 1470 \
        16 1230 \
        20 1040 \
        22 885 \
        24 745 \
        30 625 \
        36 525 \
        40 438 \
        46 370 \
        54 310 \
        60 260 \
        70 218 \
        80 185 \
        90 154 \
        100 129 \
        120 109 \
        150 82 \
        180 69 \
        220 58 \
        230 53 \
        240 44.5 \
        280 36.5 \
        320 29.2 \
        360 22.8 \
        400 17.3 \
        500 12.8 \
        600 9.3 \
        800 6.5 \
        1000 4.5 \
        1200 3 \
        1500 2.0 \
        2000 1.2

# According to the UAMA web page, the ANSI bonded and ANSI coated standards
# are identical to FEPA F in the macrogrit range (under 240 grit), so these
# values are taken from the FEPA F table.  The values for 240 and above are
# from the UAMA web site and represent the average of the "d50" range
# endpoints listed there.

ansibonded[micron] \
    4 4890 \
    5 4125 \
    6 3460 \
    7 2900 \
    8 2460 \
    10 2085 \
    12 1765 \
    14 1470 \
    16 1230 \
    20 1040 \
    22 885 \
    24 745 \
    30 625 \
    36 525 \
    40 438 \
    46 370 \
    54 310 \
    60 260 \
    70 218 \
    80 185 \
    90 154 \
    100 129 \
    120 109 \
    150 82 \
    180 69 \
    220 58 \
    240 50 \
    280 39.5 \
    320 29.5 \
    360 23 \
    400 18.25 \
    500 13.9 \
    600 10.55 \
    800 7.65 \
    1000 5.8 \
    1200 3.8

grit_ansibonded() ansibonded

# Like the bonded grit, the coated macrogrits below 240 are taken from the
# FEPA F table.  Data above this is from the UAMA site.  Note that the coated
# and bonded standards are evidently the same from 240 up to 600 grit, but
# starting at 800 grit, the coated standard diverges.  The data from UAMA show
# that 800 grit coated has an average size slightly larger than the average
# size of 600 grit coated/bonded.  However, the 800 grit has a significantly
# smaller particle size variation.
#
# Because of this non-monotonicity from 600 grit to 800 grit this definition
# produces a warning about the lack of a unique inverse.

ansicoated[micron] noerror \
    4 4890 \
    5 4125 \
    6 3460 \
    7 2900 \
    8 2460 \
    10 2085 \
    12 1765 \
    14 1470 \
    16 1230 \
    20 1040 \
    22 885 \
    24 745 \
    30 625 \
    36 525 \
    40 438 \
    46 370 \
    54 310 \
    60 260 \
    70 218 \
    80 185 \
    90 154 \
    100 129 \
    120 109 \
    150 82 \
    180 69 \
    220 58 \
    240 50 \
    280 39.5 \
    320 29.5 \
    360 23 \
    400 18.25 \
    500 13.9 \
    600 10.55 \
    800 11.5 \
    1000 9.5 \
    2000 7.2 \
    2500 5.5 \
    3000 4 \
    4000 3 \
    6000 2 \
    8000 1.2

grit_ansicoated()  ansicoated


#
# Is this correct?  This is the JIS Japanese standard used on waterstones
#
jisgrit[micron] \
     150 75 \
     180 63 \
     220 53 \
     280 48 \
     320 40 \
     360 35 \
     400 30 \
     600 20 \
     700 17 \
     800 14 \
     1000 11.5 \
     1200 9.5 \
     1500 8 \
     2000 6.7 \
     2500 5.5 \
     3000 4 \
     4000 3 \
     6000 2 \
     8000 1.2

# The "Finishing Scale" marked with an A (e.g. A75).  This information
# is from the web page of the sand paper manufacturer Klingspor
# http://www.klingspor.com/gritgradingsystems.htm
#
# I have no information about what this scale is used for.

grit_A[micron]\
     16 15.3 \
     25 21.8 \
     30 23.6 \
     35 25.75 \
     45 35 \
     60 46.2 \
     65 53.5 \
     75 58.5 \
     90 65 \
     110 78 \
     130 93 \
     160 127 \
     200 156
#
# Grits for DMT brand diamond sharpening stones from
# http://dmtsharp.com/products/colorcode.htm
#

dmtxxcoarse  120 micron    # 120 mesh
dmtsilver    dmtxxcoarse
dmtxx        dmtxxcoarse
dmtxcoarse   60 micron     # 220 mesh
dmtx         dmtxcoarse
dmtblack     dmtxcoarse
dmtcoarse    45 micron     # 325 mesh
dmtc         dmtcoarse
dmtblue      dmtcoarse
dmtfine      25 micron     # 600 mesh
dmtred       dmtfine
dmtf         dmtfine
dmtefine     9 micron      # 1200 mesh
dmte         dmtefine
dmtgreen     dmtefine
dmtceramic   7 micron      # 2200 mesh
dmtcer       dmtceramic
dmtwhite     dmtceramic
dmteefine    3 micron      # 8000 mesh
dmttan       dmteefine
dmtee        dmteefine

#
# The following values come from a page in the Norton Stones catalog,
# available at their web page, http://www.nortonstones.com.
#

hardtranslucentarkansas  6 micron     # Natural novaculite (silicon quartz)
softarkansas             22 micron    #   stones

extrafineindia           22 micron    # India stones are Norton's manufactured
fineindia                35 micron    #   aluminum oxide product
mediumindia              53.5 micron
coarseindia              97 micron

finecrystolon            45 micron    # Crystolon stones are Norton's
mediumcrystalon          78 micron    #   manufactured silicon carbide product
coarsecrystalon          127 micron

# The following are not from the Norton catalog
hardblackarkansas        6 micron
hardwhitearkansas        11 micron
washita                  35 micron

#
# Mesh systems for measuring particle sizes by sifting through a wire
# mesh or sieve
#

# The Tyler system and US Sieve system are based on four steps for
# each factor of 2 change in the size, so each size is 2^1|4 different
# from the adjacent sizes.  Unfortunately, the mesh numbers are
# arbitrary, so the sizes cannot be expressed with a functional form.
# Various references round the values differently.  The mesh numbers
# are supposed to correspond to the number of holes per inch, but this
# correspondence is only approximate because it doesn't include the
# wire size of the mesh.

# The Tyler Mesh system was apparently introduced by the WS Tyler
# company, but it appears that they no longer use it.  They follow the
# ASTM E11 standard.

meshtyler[micron] \
          2.5 8000 \
          3   6727 \
          3.5 5657 \
          4   4757 \
          5   4000 \
          6   3364 \
          7   2828 \
          8   2378 \
          9   2000 \
         10   1682 \
         12   1414 \
         14   1189 \
         16   1000 \
         20    841 \
         24    707 \
         28    595 \
         32    500 \
         35    420 \
         42    354 \
         48    297 \
         60    250 \
         65    210 \
         80    177 \
        100    149 \
        115    125 \
        150    105 \
        170     88 \
        200     74 \
        250     63 \
        270     53 \
        325     44 \
        400     37

# US Sieve size, ASTM E11
#
# The WS Tyler company prints the list from ASTM E11 in their catalog,
# http://wstyler.com/wp-content/uploads/2015/11/Product-Catalog-2.pdf

sieve[micron] \
          3.5   5600 \
          4     4750 \
          5     4000 \
          6     3350 \
          7     2800 \
          8     2360 \
         10     2000 \
         12     1700 \
         14     1400 \
         16     1180 \
         18     1000 \
         20      850 \
         25      710 \
         30      600 \
         35      500 \
         40      425 \
         45      355 \
         50      300 \
         60      250 \
         70      212 \
         80      180 \
        100      150 \
        120      125 \
        140      106 \
        170       90 \
        200       75 \
        230       63 \
        270       53 \
        325       45 \
        400       38 \
        450       32 \
        500       25 \
        625       20   # These last two values are not in the standard series
                       # but were included in the ASTM standard because they
meshUS()  sieve        # were in common usage.

# British Mesh size, BS 410: 1986
# This system appears to correspond to the Tyler and US system, but
# with different mesh numbers.
#
# http://www.panadyne.com/technical/panadyne_international_sieve_chart.pdf
#

meshbritish[micron] \
          3    5657 \
          3.5  4757 \
          4    4000 \
          5    3364 \
          6    2828 \
          7    2378 \
          8    2000 \
         10    1682 \
         12    1414 \
         14    1189 \
         16    1000 \
         18     841 \
         22     707 \
         25     595 \
         30     500 \
         36     420 \
         44     354 \
         52     297 \
         60     250 \
         72     210 \
         85     177 \
        100     149 \
        120     125 \
        150     105 \
        170      88 \
        200      74 \
        240      63 \
        300      53 \
        350      44 \
        400      37

# French system, AFNOR NFX11-501: 1970
# The system appears to be based on size doubling every 3 mesh
# numbers, though the values have been agressively rounded.
# It's not clear if the unrounded values would be considered
# incorrect, so this is given as a table rather than a function.
# Functional form:
#    meshtamis(mesh) units=[1;m] 5000 2^(1|3 (mesh-38)) micron
#
# http://www.panadyne.com/technical/panadyne_international_sieve_chart.pdf

meshtamis[micron] \
        17   40 \
        18   50 \
        19   63 \
        20   80 \
        21  100 \
        22  125 \
        23  160 \
        24  200 \
        25  250 \
        26  315 \
        27  400 \
        28  500 \
        29  630 \
        30  800 \
        31 1000 \
        32 1250 \
        33 1600 \
        34 2000 \
        35 2500 \
        36 3150 \
        37 4000 \
        38 5000

#
# Ring size. All ring sizes are given as the circumference of the ring.
#

# USA ring sizes.  Several slightly different definitions seem to be in
# circulation.  According to [15], the interior diameter of size n ring in
# inches is 0.32 n + 0.458 for n ranging from 3 to 13.5 by steps of 0.5.  The
# size 2 ring is inconsistently 0.538in and no 2.5 size is listed.
#
# However, other sources list 0.455 + 0.0326 n and 0.4525 + 0.0324 n as the
# diameter and list no special case for size 2.  (Or alternatively they are
# 1.43 + .102 n and 1.4216+.1018 n for measuring circumference in inches.)  One
# reference claimed that the original system was that each size was 1|10 inch
# circumference, but that source doesn't have an explanation for the modern
# system which is somewhat different.

ringsize(n) units=[1;in] domain=[2,) range=[1.6252,) \
            (1.4216+.1018 n) in ; (ringsize/in + (-1.4216))/.1018

# Old practice in the UK measured rings using the "Wheatsheaf gauge" with sizes
# specified alphabetically and based on the ring inside diameter in steps of
# 1|64 inch.  This system was replaced in 1987 by British Standard 6820 which
# specifies sizes based on circumference.  Each size is 1.25 mm different from
# the preceding size.  The baseline is size C which is 40 mm circumference.
# The new sizes are close to the old ones.  Sometimes it's necessary to go
# beyond size Z to Z+1, Z+2, etc.

sizeAring               37.50 mm
sizeBring               38.75 mm
sizeCring               40.00 mm
sizeDring               41.25 mm
sizeEring               42.50 mm
sizeFring               43.75 mm
sizeGring               45.00 mm
sizeHring               46.25 mm
sizeIring               47.50 mm
sizeJring               48.75 mm
sizeKring               50.00 mm
sizeLring               51.25 mm
sizeMring               52.50 mm
sizeNring               53.75 mm
sizeOring               55.00 mm
sizePring               56.25 mm
sizeQring               57.50 mm
sizeRring               58.75 mm
sizeSring               60.00 mm
sizeTring               61.25 mm
sizeUring               62.50 mm
sizeVring               63.75 mm
sizeWring               65.00 mm
sizeXring               66.25 mm
sizeYring               67.50 mm
sizeZring               68.75 mm

# Japanese sizes start with size 1 at a 13mm inside diameter and each size is
# 1|3 mm larger in diameter than the previous one.  They are multiplied by pi
# to give circumference.

jpringsize(n)  units=[1;mm] domain=[1,) range=[0.040840704,) \
               (38|3 + n/3) pi mm ; 3 jpringsize/ pi mm + (-38)

# The European ring sizes are the length of the circumference in mm minus 40.

euringsize(n)  units=[1;mm] (n+40) mm ; euringsize/mm + (-40)

#
# Abbreviations
#

mph                     mile/hr
mpg                     mile/gal
kph                     km/hr
fL                      footlambert
fpm                     ft/min
fps                     ft/s
rpm                     rev/min
rps                     rev/sec
mi                      mile
smi                     mile
nmi                     nauticalmile
mbh                     1e3 btu/hour
mcm                     1e3 circularmil
ipy                     inch/year    # used for corrosion rates
ccf                     100 ft^3     # used for selling water [18]
Mcf                     1000 ft^3    # not million cubic feet [18]
kp                      kilopond
kpm                     kp meter
Wh                      W hour
hph                     hp hour
plf                     lb / foot    # pounds per linear foot

#
# Compatibility units with unix version
#

pa                      Pa
ev                      eV
hg                      Hg
oe                      Oe
mh                      mH
rd                      rod
pf                      pF
gr                      grain
nt                      N
hz                      Hz
hd                      hogshead
dry                     drygallon/gallon
nmile                   nauticalmile
beV                     GeV
bev                     beV
coul                    C

#
# Radioactivity units
#

becquerel               /s           # Activity of radioactive source
Bq                      becquerel    #
curie                   3.7e10 Bq    # Defined in 1910 as the radioactivity
Ci                      curie        # emitted by the amount of radon that is
                                     # in equilibrium with 1 gram of radium.
rutherford              1e6 Bq       #

RADIATION_DOSE          gray
gray                    J/kg         # Absorbed dose of radiation
Gy                      gray         #
rad                     1e-2 Gy      # From Radiation Absorbed Dose
rep                     8.38 mGy     # Roentgen Equivalent Physical, the amount
                                     #   of radiation which , absorbed in the
                                     #   body, would liberate the same amount
                                     #   of energy as 1 roentgen of X rays
                                     #   would, or 97 ergs.

sievert                 J/kg         # Dose equivalent:  dosage that has the
Sv                      sievert      #   same effect on human tissues as 200
rem                     1e-2 Sv      #   keV X-rays.  Different types of
                                     #   radiation are weighted by the
                                     #   Relative Biological Effectiveness
                                     #   (RBE).
                                     #
                                     #      Radiation type       RBE
                                     #       X-ray, gamma ray     1
                                     #       beta rays, > 1 MeV   1
                                     #       beta rays, < 1 MeV  1.08
                                     #       neutrons, < 1 MeV   4-5
                                     #       neutrons, 1-10 MeV   10
                                     #       protons, 1 MeV      8.5
                                     #       protons, .1 MeV      10
                                     #       alpha, 5 MeV         15
                                     #       alpha, 1 MeV         20
                                     #
                                     #   The energies are the kinetic energy
                                     #   of the particles.  Slower particles
                                     #   interact more, so they are more
                                     #   effective ionizers, and hence have
                                     #   higher RBE values.
                                     #
                                     # rem stands for Roentgen Equivalent
                                     # Mammal
banana_dose           0.1e-6 sievert # Informal measure of the dose due to
                                     #   eating one average sized banana
roentgen              2.58e-4 C / kg # Ionizing radiation that produces
                                     #   1 statcoulomb of charge in 1 cc of
                                     #   dry air at stp.
rontgen                 roentgen     # Sometimes it appears spelled this way
sievertunit             8.38 rontgen # Unit of gamma ray dose delivered in one
                                     #   hour at a distance of 1 cm from a
                                     #   point source of 1 mg of radium
                                     #   enclosed in platinum .5 mm thick.

eman                    1e-7 Ci/m^3  # radioactive concentration
mache                   3.7e-7 Ci/m^3

#
# Atomic weights.  The atomic weight of an element is the ratio of the mass of
# a mole of the element to 1|12 of a mole of Carbon 12.  The Standard Atomic
# Weights apply to the elements as they occur naturally on earth.  Elements
# which do not occur naturally or which occur with wide isotopic variability do
# not have Standard Atomic Weights.  For these elements, the atomic weight is
# based on the longest lived isotope, as marked in the comments.  In some
# cases, the comment for these entries also gives a number which is an atomic
# weight for a different isotope that may be of more interest than the longest
# lived isotope.
#

actinium                227.0278
aluminum                26.981539
americium               243.0614     # Longest lived. 241.06
antimony                121.760
argon                   39.948
arsenic                 74.92159
astatine                209.9871     # Longest lived
barium                  137.327
berkelium               247.0703     # Longest lived. 249.08
beryllium               9.012182
bismuth                 208.98037
boron                   10.811
bromine                 79.904
cadmium                 112.411
calcium                 40.078
californium             251.0796     # Longest lived.  252.08
carbon                  12.011
cerium                  140.115
cesium                  132.90543
chlorine                35.4527
chromium                51.9961
cobalt                  58.93320
copper                  63.546
curium                  247.0703
deuterium               2.0141017778
dysprosium              162.50
einsteinium             252.083      # Longest lived
erbium                  167.26
europium                151.965
fermium                 257.0951     # Longest lived
fluorine                18.9984032
francium                223.0197     # Longest lived
gadolinium              157.25
gallium                 69.723
germanium               72.61
gold                    196.96654
hafnium                 178.49
helium                  4.002602
holmium                 164.93032
hydrogen                1.00794
indium                  114.818
iodine                  126.90447
iridium                 192.217
iron                    55.845
krypton                 83.80
lanthanum               138.9055
lawrencium              262.11       # Longest lived
lead                    207.2
lithium                 6.941
lutetium                174.967
magnesium               24.3050
manganese               54.93805
mendelevium             258.10       # Longest lived
mercury                 200.59
molybdenum              95.94
neodymium               144.24
neon                    20.1797
neptunium               237.0482
nickel                  58.6934
niobium                 92.90638
nitrogen                14.00674
nobelium                259.1009     # Longest lived
osmium                  190.23
oxygen                  15.9994
palladium               106.42
phosphorus              30.973762
platinum                195.08
plutonium               244.0642     # Longest lived.  239.05
polonium                208.9824     # Longest lived.  209.98
potassium               39.0983
praseodymium            140.90765
promethium              144.9127     # Longest lived.  146.92
protactinium            231.03588
radium                  226.0254
radon                   222.0176     # Longest lived
rhenium                 186.207
rhodium                 102.90550
rubidium                85.4678
ruthenium               101.07
samarium                150.36
scandium                44.955910
selenium                78.96
silicon                 28.0855
silver                  107.8682
sodium                  22.989768
strontium               87.62
sulfur                  32.066
tantalum                180.9479
technetium              97.9072      # Longest lived.  98.906
tellurium               127.60
terbium                 158.92534
thallium                204.3833
thorium                 232.0381
thullium                168.93421
tin                     118.710
titanium                47.867
tungsten                183.84
uranium                 238.0289
vanadium                50.9415
xenon                   131.29
ytterbium               173.04
yttrium                 88.90585
zinc                    65.39
zirconium               91.224

# Average molecular weight of air
#
# The atmospheric composition listed is from NASA Earth Fact Sheet (accessed
# 28 August 2015)
# http://nssdc.gsfc.nasa.gov/planetary/factsheet/earthfact.html
# Numbers do not add up to exactly 100% due to roundoff and uncertainty Water
# is highly variable, typically makes up about 1%

air            78.08% nitrogen 2 \
              + 20.95% oxygen 2 \
              + 9340 ppm argon \
              +  400 ppm (carbon + oxygen 2) \
              +   18.18 ppm neon \
              +    5.24 ppm helium \
              +    1.7  ppm (carbon + 4 hydrogen) \
              +    1.14 ppm krypton \
              +    0.55 ppm hydrogen 2
#
# population units
#

people                  1
person                  people
death                   people
capita                  people
percapita               per capita

# TGM dozen based unit system listed on the "dozenal" forum
# http://www.dozenalsociety.org.uk/apps/tgm.htm.  These units are
# proposed as an allegedly more rational alternative to the SI system.

Tim                     12^-4 hour         # Time
Grafut                  gravity Tim^2      # Length based on gravity
Surf                    Grafut^2           # area
Volm                    Grafut^3           # volume
Vlos                    Grafut/Tim         # speed
Denz                    Maz/Volm           # density
Mag                     Maz gravity        # force
Maz                     Volm kg / oldliter # mass based on water

Tm                      Tim                # Abbreviations
Gf                      Grafut
Sf                      Surf
Vm                      Volm
Vl                      Vlos
Mz                      Maz
Dz                      Denz

# Dozen based unit prefixes

Zena-                   12
Duna-                   12^2
Trina-                  12^3
Quedra-                 12^4
Quena-                  12^5
Hesa-                   12^6
Seva-                   12^7
Aka-                    12^8
Neena-                  12^9
Dexa-                   12^10
Lefa-                   12^11
Zennila-                12^12

Zeni-                   12^-1
Duni-                   12^-2
Trini-                  12^-3
Quedri-                 12^-4
Queni-                  12^-5
Hesi-                   12^-6
Sevi-                   12^-7
Aki-                    12^-8
Neeni-                  12^-9
Dexi-                   12^-10
Lefi-                   12^-11
Zennili-                12^-12

#
# Traditional Japanese units (shakkanhou)
#
# The traditional system of weights and measures is called shakkanhou from the
# shaku and the ken.  Japan accepted SI units in 1891 and legalized conversions
# to the traditional system.  In 1909 the inch-pound system was also legalized,
# so Japan had three legally approved systems.  A change to the metric system
# started in 1921 but there was a lot of resistance.  The Measurement Law of
# October 1999 prohibits sales in anything but SI units.  However, the old
# units still live on in construction and as the basis for paper sizes of books
# and tools used for handicrafts.
#
# Note that units below use the Hepburn romanization system.  Some other
# systems would render "mou", "jou", and "chou" as "mo", "jo" and "cho".
#
#
# http://hiramatu-hifuka.com/onyak/onyindx.html

# Japanese Proportions.  These are still in everyday use.  They also
# get used as units to represent the proportion of the standard unit.

wari_proportion      1|10
wari                 wari_proportion
bu_proportion        1|100    # The character bu can also be read fun or bun
                              # but usually "bu" is used for units.
rin_proportion       1|1000
mou_proportion       1|10000


# Japanese Length Measures
#
# The length system is called kanejaku or
# square and originated in China.  It was
# adopted as Japan's official measure in 701
# by the Taiho Code.  This system is still in
# common use in architecture and clothing.

shaku              1|3.3 m
mou                1|10000 shaku
rin                1|1000 shaku
bu_distance        1|100 shaku
sun                1|10 shaku
jou_distance       10 shaku
jou                jou_distance

kanejakusun        sun      # Alias to emphasize architectural name
kanejaku           shaku
kanejakujou        jou

# http://en.wikipedia.org/wiki/Taiwanese_units_of_measurement
taichi             shaku   # http://zh.wikipedia.org/wiki/台尺
taicun             sun     # http://zh.wikipedia.org/wiki/台制
!utf8
台尺               taichi  # via Hanyu Pinyin romanizations
台寸               taicun
!endutf8

# In context of clothing, shaku is different from architecture
# http://www.scinet.co.jp/sci/sanwa/kakizaki-essay54.html

kujirajaku         10|8 shaku
kujirajakusun      1|10 kujirajaku
kujirajakubu       1|100 kujirajaku
kujirajakujou      10 kujirajaku
tan_distance       3 kujirajakujou

ken                6 shaku  # Also sometimes 6.3, 6.5, or 6.6
                            # http://www.homarewood.co.jp/syakusun.htm

# mostly unused
chou_distance      60 ken
chou               chou_distance
ri                 36 chou

# Japanese Area Measures

# Tsubo is still used for land size, though the others are more
# recognized by their homonyms in the other measurements.

gou_area             1|10 tsubo
tsubo                36 shaku^2    # Size of two tatami = ken^2 ??
se                   30 tsubo
tan_area             10 se
chou_area            10 tan_area

# http://en.wikipedia.org/wiki/Taiwanese_units_of_measurement
ping                 tsubo     # http://zh.wikipedia.org/wiki/坪
jia                  2934 ping # http://zh.wikipedia.org/wiki/甲_(单位)
fen                  1|10 jia  # http://zh.wikipedia.org/wiki/分
fen_area             1|10 jia  # Protection against future collisions
!utf8
坪                   ping      # via Hanyu Pinyin romanizations
甲                   jia
分                   fen
分地                 fen_area  # Protection against future collisions
!endutf8

# Japanese architecture is based on a "standard" size of tatami mat.
# Room sizes today are given in number of tatami, and this number
# determines the spacing between colums and hence sizes of sliding
# doors and paper screens.  However, every region has its own slightly
# different tatami size.  Edoma, used in and around Tokyo and
# Hokkaido, is becoming a nationwide standard.  Kyouma is used around
# Kyoto, Osaka and Kyuushu, and Chuukyouma is used around Nagoya.
# Note that the tatami all have the aspect ratio 2:1 so that the mats
# can tile the room with some of them turned 90 degrees.
#
# http://www.moon2.net/tatami/infotatami/structure.html

edoma                (5.8*2.9) shaku^2
kyouma               (6.3*3.15) shaku^2
chuukyouma           (6*3) shaku^2
jou_area             edoma
tatami               jou_area

# Japanese Volume Measures

# The "shou" is still used for such things as alcohol and seasonings.
# Large quantities of paint are still purchased in terms of "to".

shaku_volume         1|10 gou_volume
gou_volume           1|10 shou
gou                  gou_volume
shou                 (4.9*4.9*2.7) sun^3   # The character shou which is
                                           # the same as masu refers to a
                                           # rectangular wooden cup used to
                                           # measure liquids and cereal.
                                           # Sake is sometimes served in a masu
                                           # Note that it happens to be
                                           # EXACTLY 7^4/11^3 liters.
to                   10 shou
koku                 10 to  # No longer used; historically a measure of rice

# Japanese Weight Measures
#
# http://wyoming.hp.infoseek.co.jp/zatugaku/zamoney.html

# Not really used anymore.

rin_weight           1|10 bu_weight
bu_weight            1|10 monme
fun                  1|10 monme
monme                momme
kin                  160 monme
kan                  1000 monme
kwan                 kan         # This was the old pronounciation of the unit.
                                 # The old spelling persisted a few centuries
                                 # longer and was not changed until around
                                 # 1950.

# http://en.wikipedia.org/wiki/Taiwanese_units_of_measurement
# says: "Volume measure in Taiwan is largely metric".
taijin               kin      # http://zh.wikipedia.org/wiki/台斤
tailiang             10 monme # http://zh.wikipedia.org/wiki/台斤
taiqian              monme    # http://zh.wikipedia.org/wiki/台制
!utf8
台斤                 taijin # via Hanyu Pinyin romanizations
台兩                 tailiang
台錢                 taiqian
!endutf8

#
# Australian unit
#

australiasquare         (10 ft)^2   # Used for house area


#
# A few German units as currently in use.
#

zentner                 50 kg
doppelzentner           2 zentner
pfund                   500 g

#
# Some traditional Russian measures
#
# If you would like to help expand this section and understand
# cyrillic transliteration, let me know.  These measures are meant to
# reflect common usage, e.g. in translated literature.
#

dessiatine              2400 sazhen^2    # Land measure
dessjatine              dessiatine

funt                    409.51718 grams  # similar to pound
zolotnik                1|96 funt        # used for precious metal measure
pood                    40 funt          # common in agricultural measure

arshin                  (2 + 1|3) feet
sazhen                  3 arshin         # analogous to fathom
verst                   500 sazhen       # of similar use to mile
versta                  verst
borderverst             1000 sazhen
russianmile             7 verst




#
# Old French distance measures, from French Weights and Measures
# Before the Revolution by Zupko
#

frenchfoot              144|443.296 m     # pied de roi, the standard of Paris.
pied                    frenchfoot        #   Half of the hashimicubit,
frenchfeet              frenchfoot        #   instituted by Charlemagne.
frenchinch              1|12 frenchfoot   #   This exact definition comes from
frenchthumb             frenchinch        #   a law passed on 10 Dec 1799 which
pouce                   frenchthumb       #   fixed the meter at
                                          #   3 frenchfeet + 11.296 lignes.
frenchline              1|12 frenchinch   # This is supposed to be the size
ligne                   frenchline        #   of the average barleycorn
frenchpoint             1|12 frenchline
toise                   6 frenchfeet
arpent                  180^2 pied^2      # The arpent is 100 square perches,
                                          # but the perche seems to vary a lot
                                          # and can be 18 feet, 20 feet, or 22
                                          # feet.  This measure was described
                                          # as being in common use in Canada in
                                          # 1934 (Websters 2nd).  The value
                                          # given here is the Paris standard
                                          # arpent.
frenchgrain             1|18827.15 kg     # Weight of a wheat grain, hence
                                          # smaller than the British grain.
frenchpound             9216 frenchgrain

#
# Before the Imperial Weights and Measures Act of 1824, various different
# weights and measures were in use in different places.
#

# Scots linear measure

scotsinch        1.00540054 UKinch
scotslink        1|100 scotschain
scotsfoot        12 scotsinch
scotsfeet        scotsfoot
scotsell         37 scotsinch
scotsfall        6 scotsell
scotschain       4 scotsfall
scotsfurlong     10 scotschain
scotsmile        8 scotsfurlong

# Scots area measure

scotsrood        40 scotsfall^2
scotsacre        4 scotsrood

# Irish linear measure

irishinch       UKinch
irishpalm       3 irishinch
irishspan       3 irishpalm
irishfoot       12 irishinch
irishfeet       irishfoot
irishcubit      18 irishinch
irishyard       3 irishfeet
irishpace       5 irishfeet
irishfathom     6 irishfeet
irishpole       7 irishyard      # Only these values
irishperch      irishpole        # are different from
irishchain      4 irishperch     # the British Imperial
irishlink       1|100 irishchain # or English values for
irishfurlong    10 irishchain    # these lengths.
irishmile       8 irishfurlong   #

#  Irish area measure

irishrood       40 irishpole^2
irishacre       4 irishrood

# English wine capacity measures (Winchester measures)

winepint       1|2 winequart
winequart      1|4 winegallon
winegallon     231 UKinch^3   # Sometimes called the Winchester Wine Gallon,
                              # it was legalized in 1707 by Queen Anne, and
                              # given the definition of 231 cubic inches.  It
                              # had been in use for a while as 8 pounds of wine
                              # using a merchant's pound, but the definition of
                              # the merchant's pound had become uncertain.  A
                              # pound of 15 tower ounces (6750 grains) had been
                              # common, but then a pound of 15 troy ounces
                              # (7200 grains) gained popularity.  Because of
                              # the switch in the value of the merchants pound,
                              # the size of the wine gallon was uncertain in
                              # the market, hence the official act in 1707.
                              # The act allowed that a six inch tall cylinder
                              # with a 7 inch diameter was a lawful wine
                              # gallon.  (This comes out to 230.9 in^3.)
                              # Note also that in Britain a legal conversion
                              # was established to the 1824 Imperial gallon
                              # then taken as 277.274 in^3 so that the wine
                              # gallon was 0.8331 imperial gallons.  This is
                              # 231.1 cubic inches (using the international
                              # inch).
winerundlet    18 winegallon
winebarrel     31.5 winegallon
winetierce     42 winegallon
winehogshead   2 winebarrel
winepuncheon   2 winetierce
winebutt       2 winehogshead
winepipe       winebutt
winetun        2 winebutt

# English beer and ale measures used 1803-1824 and used for beer before 1688

beerpint       1|2 beerquart
beerquart      1|4 beergallon
beergallon     282 UKinch^3
beerbarrel     36 beergallon
beerhogshead   1.5 beerbarrel

# English ale measures used from 1688-1803 for both ale and beer

alepint        1|2 alequart
alequart       1|4 alegallon
alegallon      beergallon
alebarrel      34 alegallon
alehogshead    1.5 alebarrel

# Scots capacity measure

scotsgill      1|4 mutchkin
mutchkin       1|2 choppin
choppin        1|2 scotspint
scotspint      1|2 scotsquart
scotsquart     1|4 scotsgallon
scotsgallon    827.232 UKinch^3
scotsbarrel    8 scotsgallon
jug            scotspint

# Scots dry capacity measure

scotswheatlippy   137.333 UKinch^3    # Also used for peas, beans, rye, salt
scotswheatlippies scotswheatlippy
scotswheatpeck    4 scotswheatlippy
scotswheatfirlot  4 scotswheatpeck
scotswheatboll    4 scotswheatfirlot
scotswheatchalder 16 scotswheatboll

scotsoatlippy     200.345 UKinch^3    # Also used for barley and malt
scotsoatlippies   scotsoatlippy
scotsoatpeck      4 scotsoatlippy
scotsoatfirlot    4 scotsoatpeck
scotsoatboll      4 scotsoatfirlot
scotsoatchalder   16 scotsoatboll

# Scots Tron weight

trondrop       1|16 tronounce
tronounce      1|20 tronpound
tronpound      9520 grain
tronstone      16 tronpound

# Irish liquid capacity measure

irishnoggin    1|4 irishpint
irishpint      1|2 irishquart
irishquart     1|2 irishpottle
irishpottle    1|2 irishgallon
irishgallon    217.6 UKinch^3
irishrundlet   18 irishgallon
irishbarrel    31.5 irishgallon
irishtierce    42 irishgallon
irishhogshead  2 irishbarrel
irishpuncheon  2 irishtierce
irishpipe      2 irishhogshead
irishtun       2 irishpipe

# Irish dry capacity measure

irishpeck      2 irishgallon
irishbushel    4 irishpeck
irishstrike    2 irishbushel
irishdrybarrel 2 irishstrike
irishquarter   2 irishbarrel

# English Tower weights, abolished in 1528

towerpound       5400 grain
towerounce       1|12 towerpound
towerpennyweight 1|20 towerounce
towergrain       1|32 towerpennyweight

# English Mercantile weights, used since the late 12th century

mercpound      6750 grain
mercounce      1|15 mercpound
mercpennyweight 1|20 mercounce

# English weights for lead

leadstone     12.5 lb
fotmal        70 lb
leadwey       14 leadstone
fothers       12 leadwey

# English Hay measure

newhaytruss 60 lb             # New and old here seem to refer to "new"
newhayload  36 newhaytruss    # hay and "old" hay rather than a new unit
oldhaytruss 56 lb             # and an old unit.
oldhayload  36 oldhaytruss

# English wool measure

woolclove   7 lb
woolstone   2 woolclove
wooltod     2 woolstone
woolwey     13 woolstone
woolsack    2 woolwey
woolsarpler 2 woolsack
woollast    6 woolsarpler

#
# Ancient history units:  There tends to be uncertainty in the definitions
#                         of the units in this section
# These units are from [11]

# Roman measure.  The Romans had a well defined distance measure, but their
# measures of weight were poor.  They adopted local weights in different
# regions without distinguishing among them so that there are half a dozen
# different Roman "standard" weight systems.

romanfoot    296 mm          # There is some uncertainty in this definition
romanfeet    romanfoot       # from which all the other units are derived.
pes          romanfoot       # This value appears in numerous sources. In "The
pedes        romanfoot       # Roman Land Surveyors", Dilke gives 295.7 mm.
romaninch    1|12 romanfoot  # The subdivisions of the Roman foot have the
romandigit   1|16 romanfoot  #   same names as the subdivisions of the pound,
romanpalm    1|4 romanfoot   #   but we can't have the names for different
romancubit   18 romaninch    #   units.
romanpace    5 romanfeet     # Roman double pace (basic military unit)
passus       romanpace
romanperch   10 romanfeet
stade        125 romanpaces
stadia       stade
stadium      stade
romanmile    8 stadia        # 1000 paces
romanleague  1.5 romanmile
schoenus     4 romanmile

# Other values for the Roman foot (from Dilke)

earlyromanfoot    29.73 cm
pesdrusianus      33.3 cm    # or 33.35 cm, used in Gaul & Germany in 1st c BC
lateromanfoot     29.42 cm

# Roman areas

actuslength  120 romanfeet     # length of a Roman furrow
actus        120*4 romanfeet^2 # area of the furrow
squareactus  120^2 romanfeet^2 # actus quadratus
acnua        squareactus
iugerum      2 squareactus
iugera       iugerum
jugerum      iugerum
jugera       iugerum
heredium     2 iugera          # heritable plot
heredia      heredium
centuria     100 heredia
centurium    centuria

# Roman volumes

sextarius       35.4 in^3      # Basic unit of Roman volume.  As always,
sextarii        sextarius      # there is uncertainty.  Six large Roman
                               # measures survive with volumes ranging from
                               # 34.4 in^3 to 39.55 in^3.  Three of them
                               # cluster around the size given here.
                               #
                               # But the values for this unit vary wildly
                               # in other sources.  One reference  gives 0.547
                               # liters, but then says the amphora is a
                               # cubic Roman foot.  This gives a value for the
                               # sextarius of 0.540 liters.  And the
                               # encyclopedia Brittanica lists 0.53 liters for
                               # this unit.  Both [7] and [11], which were
                               # written by scholars of weights and measures,
                               # give the value of 35.4 cubic inches.
cochlearia      1|48 sextarius
cyathi          1|12 sextarius
acetabula       1|8 sextarius
quartaria       1|4 sextarius
quartarius      quartaria
heminae         1|2 sextarius
hemina          heminae
cheonix         1.5 sextarii

# Dry volume measures (usually)

semodius        8 sextarius
semodii         semodius
modius          16 sextarius
modii           modius

# Liquid volume measures (usually)

congius         12 heminae
congii          congius
amphora         8 congii
amphorae        amphora      # Also a dry volume measure
culleus         20 amphorae
quadrantal      amphora

# Roman weights

libra           5052 grain   # The Roman pound varied significantly
librae          libra        # from 4210 grains to 5232 grains.  Most of
romanpound      libra        # the standards were obtained from the weight
uncia           1|12 libra   # of particular coins.  The one given here is
unciae          uncia        # based on the Gold Aureus of Augustus which
romanounce      uncia        # was in use from BC 27 to AD 296.
deunx           11 uncia
dextans         10 uncia
dodrans         9 uncia
bes             8 uncia
seprunx         7 uncia
semis           6 uncia
quincunx        5 uncia
triens          4 uncia
quadrans        3 uncia
sextans         2 uncia
sescuncia       1.5 uncia
semuncia        1|2 uncia
siscilius       1|4 uncia
sextula         1|6 uncia
semisextula     1|12 uncia
scriptulum      1|24 uncia
scrupula        scriptulum
romanobol       1|2 scrupula

romanaspound    4210 grain    # Old pound based on bronze coinage, the
                              # earliest money of Rome BC 338 to BC 268.

# Egyptian length measure

egyptianroyalcubit      20.63 in    # plus or minus .2 in
egyptianpalm            1|7 egyptianroyalcubit
egyptiandigit           1|4 egyptianpalm
egyptianshortcubit      6 egyptianpalm

doubleremen             29.16 in  # Length of the diagonal of a square with
remendigit       1|40 doubleremen # side length of 1 royal egyptian cubit.
                                  # This is divided into 40 digits which are
                                  # not the same size as the digits based on
                                  # the royal cubit.

# Greek length measures

greekfoot               12.45 in      # Listed as being derived from the
greekfeet               greekfoot     # Egyptian Royal cubit in [11].  It is
greekcubit              1.5 greekfoot # said to be 3|5 of a 20.75 in cubit.
pous                    greekfoot
podes                   greekfoot
orguia                  6 greekfoot
greekfathom             orguia
stadion                 100 orguia
akaina                  10 greekfeet
plethron                10 akaina
greekfinger             1|16 greekfoot
homericcubit            20 greekfingers  # Elbow to end of knuckles.
shortgreekcubit         18 greekfingers  # Elbow to start of fingers.

ionicfoot               296 mm
doricfoot               326 mm

olympiccubit            25 remendigit    # These olympic measures were not as
olympicfoot             2|3 olympiccubit # common as the other greek measures.
olympicfinger           1|16 olympicfoot # They were used in agriculture.
olympicfeet             olympicfoot
olympicdakylos          olympicfinger
olympicpalm             1|4 olympicfoot
olympicpalestra         olympicpalm
olympicspithame         3|4 foot
olympicspan             olympicspithame
olympicbema             2.5 olympicfeet
olympicpace             olympicbema
olympicorguia           6 olympicfeet
olympicfathom           olympicorguia
olympiccord             60 olympicfeet
olympicamma             olympiccord
olympicplethron         100 olympicfeet
olympicstadion          600 olympicfeet

# Greek capacity measure

greekkotyle             270 ml           # This approximate value is obtained
xestes                  2 greekkotyle    # from two earthenware vessels that
khous                   12 greekkotyle   # were reconstructed from fragments.
metretes                12 khous         # The kotyle is a day's corn ration
choinix                 4 greekkotyle    # for one man.
hekteos                 8 choinix
medimnos                6 hekteos

# Greek weight.  Two weight standards were used, an Aegina standard based
# on the Beqa shekel and an Athens (attic) standard.

aeginastater            192 grain        # Varies up to 199 grain
aeginadrachmae          1|2 aeginastater
aeginaobol              1|6 aeginadrachmae
aeginamina              50 aeginastaters
aeginatalent            60 aeginamina    # Supposedly the mass of a cubic foot
                                         # of water (whichever foot was in use)

atticstater             135 grain        # Varies 134-138 grain
atticdrachmae           1|2 atticstater
atticobol               1|6 atticdrachmae
atticmina               50 atticstaters
attictalent             60 atticmina     # Supposedly the mass of a cubic foot
                                         # of water (whichever foot was in use)

# "Northern" cubit and foot.  This was used by the pre-Aryan civilization in
# the Indus valley.  It was used in Mesopotamia, Egypt, North Africa, China,
# central and Western Europe until modern times when it was displaced by
# the metric system.

northerncubit           26.6 in           # plus/minus .2 in
northernfoot            1|2 northerncubit

sumeriancubit           495 mm
kus                     sumeriancubit
sumerianfoot            2|3 sumeriancubit

assyriancubit           21.6 in
assyrianfoot            1|2 assyriancubit
assyrianpalm            1|3 assyrianfoot
assyriansusi            1|20 assyrianpalm
susi                    assyriansusi
persianroyalcubit       7 assyrianpalm


# Arabic measures.  The arabic standards were meticulously kept.  Glass weights
# accurate to .2 grains were made during AD 714-900.

hashimicubit            25.56 in          # Standard of linear measure used
                                          # in Persian dominions of the Arabic
                                          # empire 7-8th cent.  Is equal to two
                                          # French feet.

blackcubit              21.28 in
arabicfeet              1|2 blackcubit
arabicfoot              arabicfeet
arabicinch              1|12 arabicfoot
arabicmile              4000 blackcubit

silverdirhem            45 grain  # The weights were derived from these two
tradedirhem             48 grain  # units with two identically named systems
                                  # used for silver and used for trade purposes

silverkirat             1|16 silverdirhem
silverwukiyeh           10 silverdirhem
silverrotl              12 silverwukiyeh
arabicsilverpound       silverrotl

tradekirat              1|16 tradedirhem
tradewukiyeh            10 tradedirhem
traderotl               12 tradewukiyeh
arabictradepound        traderotl

# Miscellaneous ancient units

parasang                3.5 mile # Persian unit of length usually thought
                                 # to be between 3 and 3.5 miles
biblicalcubit           21.8 in
hebrewcubit             17.58 in
li                      10|27.8 mile  # Chinese unit of length
                                      #   100 li is considered a day's march
liang                   11|3 oz       # Chinese weight unit


# Medieval time units.  According to the OED, these appear in Du Cange
# by Papias.

timepoint               1|5 hour  # also given as 1|4
timeminute              1|10 hour
timeostent              1|60 hour
timeounce               1|8 timeostent
timeatom                1|47 timeounce

# Given in [15], these subdivisions of the grain were supposedly used
# by jewelers.  The mite may have been used but the blanc could not
# have been accurately measured.

mite                    1|20 grain
droit                   1|24 mite
periot                  1|20 droit
blanc                   1|24 periot

#
# Localization
#

!var UNITS_ENGLISH US
hundredweight           ushundredweight
ton                     uston
scruple                 apscruple
fluidounce              usfluidounce
gallon                  usgallon
bushel                  usbushel
quarter                 quarterweight
cup                     uscup
tablespoon              ustablespoon
teaspoon                usteaspoon
dollar                  US$
cent                    $ 0.01
penny                   cent
minim                   minimvolume
pony                    ponyvolume
grand                   usgrand
firkin                  usfirkin
hogshead                ushogshead
!endvar

!var UNITS_ENGLISH GB
hundredweight           brhundredweight
ton                     brton
scruple                 brscruple
fluidounce              brfluidounce
gallon                  brgallon
bushel                  brbushel
quarter                 brquarter
chaldron                brchaldron
cup                     brcup
teacup                  brteacup
tablespoon              brtablespoon
teaspoon                brteaspoon
dollar                  US$
cent                    $ 0.01
penny                   brpenny
minim                   minimnote
pony                    brpony
grand                   brgrand
firkin                  brfirkin
hogshead                brhogshead
!endvar

!varnot UNITS_ENGLISH GB US
!message Unknown value for environment variable UNITS_ENGLISH.  Should be GB or US.
!endvar


!utf8
⅛-                      1|8
¼-                      1|4
⅜-                      3|8
½-                      1|2
⅝-                      5|8
¾-                      3|4
⅞-                      7|8
⅙-                      1|6
⅓-                      1|3
⅔-                      2|3
⅚-                      5|6
⅕-                      1|5
⅖-                      2|5
⅗-                      3|5
⅘-                      4|5
# U+2150-               1|7  For some reason these characters are getting
# U+2151-               1|9  flagged as invalid UTF8.
# U+2152-               1|10
#ℯ                       exp(1)      # U+212F, base of natural log

µ-                      micro       # micro sign U+00B5
μ-                      micro       # small mu U+03BC
ångström                angstrom
Å                       angstrom    # angstrom symbol U+212B
Å                       angstrom    # A with ring U+00C5
röntgen                 roentgen
°C                      degC
°F                      degF
°K                      K           # °K is incorrect notation
°R                      degR
°                       degree
℃                       degC
℉                       degF
K                       K          # Kelvin symbol, U+212A
ℓ                       liter      # unofficial abbreviation used in some places
¢                       cent
#£                       britainpound
#¥                       japanyen
#€                       euro
#₩                       southkoreawon
#₪                       israelnewshekel
#₤                       lira
#₨                       rupee

Ω                       ohm       # Ohm symbol U+2126
Ω                       ohm       # Greek capital omega U+03A9
℧                       mho
ʒ                        dram     # U+0292
℈                       scruple
℥                       ounce
℔                       lb
ℎ                       h
ℏ                       hbar
‰                       1|1000
‱                       1|10000
′                       '        # U+2032
″                       "        # U+2033

#
# Square unicode symbols starting at U+3371
#

㍱                      hPa
㍲                      da
㍳                      au
㍴                      bar
# ㍵                          oV???
㍶                      pc
#㍷                      dm      invalid on Mac
#㍸                      dm^2    invalid on Mac
#㍹                      dm^3    invalid on Mac
㎀                      pA
㎁                      nA
㎂                      µA
㎃                      mA
㎄                      kA
㎅                      kB
㎆                      MB
㎇                      GB
㎈                      cal
㎉                      kcal
㎊                      pF
㎋                      nF
㎌                      µF
㎍                      µg
㎎                      mg
㎏                      kg
㎐                      Hz
㎑                      kHz
㎒                      MHz
㎓                      GHz
㎔                      THz
㎕                      µL
㎖                      mL
㎗                      dL
㎘                      kL
㎙                      fm
㎚                      nm
㎛                      µm
㎜                      mm
㎝                      cm
㎞                      km
㎟                      mm^2
㎠                      cm^2
㎡                      m^2
㎢                      km^2
㎣                      mm^3
㎤                      cm^3
㎥                      m^3
㎦                      km^3
㎧                      m/s
㎨                      m/s^2
㎩                      Pa
㎪                      kPa
㎫                      MPa
㎬                      GPa
㎭                      rad
㎮                      rad/s
㎯                      rad/s^2
㎰                      ps
㎱                      ns
㎲                      µs
㎳                      ms
㎴                      pV
㎵                      nV
㎶                      µV
㎷                      mV
㎸                      kV
㎹                      MV
㎺                      pW
㎻                      nW
㎼                      µW
㎽                      mW
㎾                      kW
㎿                      MW
㏀                      kΩ
㏁                      MΩ
㏃                      Bq
㏄                      cc
㏅                      cd
㏆                      C/kg
㏈()                    dB
㏉                      Gy
㏊                      ha
# ㏋  HP??
㏌                      in
# ㏍                      KK??
# ㏎                      KM???
㏏                      kt
㏐                      lm
# ㏑                      ln
# ㏒                      log
㏓                      lx
㏔                      mb
㏕                      mil
㏖                      mol
㏗()                    pH
㏙                      ppm
#   ㏚     PR???
㏛                      sr
㏜                      Sv
㏝                      Wb
#㏞                      V/m     Invalid on Mac
#㏟                      A/m     Invalid on Mac
#㏿                      gal     Invalid on Mac

!endutf8

############################################################################
#
# Unit list aliases
#
# These provide a shorthand for conversions to unit lists.
#
############################################################################

!unitlist hms hr;min;sec
!unitlist time year;day;hr;min;sec
!unitlist dms deg;arcmin;arcsec
!unitlist ftin ft;in;1|8 in
!unitlist inchfine in;1|8 in;1|16 in;1|32 in;1|64 in
!unitlist usvol cup;3|4 cup;2|3 cup;1|2 cup;1|3 cup;1|4 cup;\
                tbsp;tsp;1|2 tsp;1|4 tsp;1|8 tsp

############################################################################
#
# The following units were in the unix units database but do not appear in
# this file:
#
#      wey        used for cheese, salt and other goods.  Measured mass or
#      waymass    volume depending on what was measured and where the measuring
#                 took place.  A wey of cheese ranged from 200 to 324 pounds.
#
#      sack       No precise definition
#
#      spindle    The length depends on the type of yarn
#
#      block      Defined variously on different computer systems
#
#      erlang     A unit of telephone traffic defined variously.
#                 Omitted because there are no other units for this
#                 dimension.  Is this true?  What about CCS = 1/36 erlang?
#                 Erlang is supposed to be dimensionless.  One erlang means
#                 a single channel occupied for one hour.
#
############################################################################
EOL

module Phys
  # define pi
  BaseUnit.define("pi","!dimensionless",Math::PI)

  # define tempC and tempK
  zero_degc = Unit["stdtemp"].conversion_factor
  OffsetUnit.define( "tempC", Unit["K"], zero_degc )
  OffsetUnit.define( "tempF", Unit["K"]*Rational(5,9), zero_degc-32*Rational(5,9) )

  #puts "#{Phys::Unit::LIST.size} units, #{Phys::Unit::PREFIX.size} prefixes"
end
