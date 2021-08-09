# MIDTERM EXAM PART 2
# QUESTION 1
library(foreign)
MidtermData1 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wage2.dta")
# (i) In the equation it shows that provied, it shows that the number of siblings is negatively related to level of education of a working man. If you hold "meduc" and "feduc" fixed, you would have to increase siblings by 10.64 to reduce education level by one year.
# (ii) The coeffecient on meduc is a sons level of education that is multiplied with the number of mothers years in schooling. It is a positive relationship. It also means that if you hold "feduc" constant and "{sibs} constant, then the childs education would increase by .131 for every additional year the mother is educated.
# (iii) Man A: -.94(0) + .131(12) + .210(12)
#       Man B: -.94(0)+ .131(16) + .210 (16)
#       -.94(0) + .131(16) + .210(16) - (-.94(0) -.131(12) - .210(12)= 3.632
#       ANSWER: 3.632

# QUESTION 2
MidtermData2 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/bwght.dta")
# (i) The sign for ??2 will most definitly be positive because it represents family income. And more family income represents more ability to buy better food so it is a positive for a baby's weight.
# (ii) Cigs and faminc may be negatively correlated. That is because when I plotted cigs against faminc, it showed that lower the faminc the more you smoke.  
summary(MidtermData2)
x=c(MidtermData2$cigs)
y=c(MidtermData2$faminc)
plot(x,y)
summary(lm(MidtermData2))
# (iii) If you take out the "faminc" variable that increases the effect of "cigsa" Since they are negatively related.The effect of "faminc" on bwght is positivly related. We know this from the answer in part (ii)
# bwght= 116.97 -.46cigs + .09faminc
# Include Faminc: If N=1, 388 . R squared i=.03
# Remove "Faminc" variable: bwght= 119.77 -.51
#                          N=1, 388 R-squared is =.02
#   The answer relates to part (ii) of this question as we discuss the relationship there as well. Faminc has apositive effect on bwght because it means more income and better nutrition for the baby, thus increasing its weight. However if you remove it, that would increease cigs, as we saw from the plot, and result in lower bwght.

# Question 3
Midtermdata3 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/hprice1.dta")
# (i) price = -19.315 + .128sqrft + 15.2bdrms + u
summary((Midtermdata3))
fitted(Midtermdata3)
summary(Midtermdata3$sqrft,Midtermdata3$bdrms)
lm(Midtermdata3)
summary(lm(Midtermdata3))
# (ii) If you hold square footage constant the estimated increase in price would be by $15,200.
# (iii) The estimated increase in price when adding a bedroom without increasing the size of the house is $15,200. 
# (IV) Close to 63% of the variation in price is represented by sqrft and number of bdrms.
x=c(Midtermdata3$sqrft)
y=c(Midtermdata3$bdrms)
plot(x,y)
abline(lm(y~x))
# (V) The predicted price for this house from the OLS regression line is $358,430
# (VI) The residual is the ending price subtracted from the begininng price. In this case $300,000 - $358,430= -58,430. The residual is less than predicted value. Buyers underpaid for this house.