library(foreign)
B <- read.dta("http://fmwww.bc.edu/ec-p/data/stockwatson/fatality.dta")
# This dataset is about the lower 48 states through 1982 through 1988. This dataset measures traffic fatality rate in the number of traffic deaths in a given state, in a given year, per 10,000 people living in that state in that year.
# There are also many variables used in this study, some examples are beertax, jail-time, Salaries, and Un-employment. 

#This first regression is of Vehicle-Fatatitly-Rate(MRALL) against Minimum-Legal Drinking Age(MLDA) And YEar
lm(B$mrall~B$mlda+B$year)

# The second regression is of Vehicle-Fatatitly-Rate(MRALL) against Minimum-Legal Drinking Age(MLDA), Year, and Tax on Beer(beertax)
lm(B$mrall~B$mlda+B$year+B$beertax)

# The third regression is of Vehicle-Fatatitly-Rate(MRALL) against Minimum-Legal Drinking Age(MLDA), Year, Tax on Beer(beertax), Jail-time(JailD), and % Residing in Dry-Countries(dry)
lm(B$mrall~B$mlda+B$year+B$beertax+B$jaild+B$dry)

#This is a plot of the dependent variable
plot(B$year,B$mrall)
