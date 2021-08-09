library(foreign)
cps08 <- read.dta("C:/Users/Saboor/Desktop/cps08.dta")

# Q1A. The coefficient on the (Age) variable is 0.5852. Therefore, average hourly earnings are expected to increase by approximately $0.59 for age change 25 to 26 and for age change 33 to 34 AHE would increase by .59. That is because change in one year equals the change in the variable, which in this case is .5852 or .59.
lm((cps08$ahe)~cps08$age+cps08$female+cps08$bachelor)
AHE= ??o + ??1AGE + ??2FEMALE + ??3BACHELOR +u
AHE(-.6357)= ??o + ??1(.5852) + ??2(-3.6640) + ??3(8.0830) +u

#  Q2B. The average hourly earnings change for age change 25 to 26 and for age change 33 to 34 is about 2.7%.
lm(log(cps08$ahe)~cps08$age+cps08$female+cps08$bachelor)
AGE:.02733; FEMALE: -.18592; BACHELOR:.42813
data=data.frame(cps08$ahe,cps08$age)
x=c(cps08$ahe)
y=c(cps08$age)
plot(cps08$age,cps08$ahe,log="xy")
coef(fitted)

# Q3C. For age change from 25 to 26:0.80391  For age change from 33 to 34: .80391
lm(log(cps08$ahe)~log(cps08$age)+cps08$female+cps08$bachelor)

# Q4D. 
lm(log(cps08$ahe)~cps08$age+log(cps08$age,base = exp(2))+cps08$female+cps08$bachelor)
# If AGE increases from 25 to 26 or 33 to 34, it would be a percent change if 2.91939%
summary(lm(cps08$ahe~cps08$age))


# Q5E.
#Regression for C
summary(lm(log(cps08$ahe)~log(cps08$age)+cps08$female+cps08$bachelor))
#Regression for B
summary(lm(log(cps08$ahe)~cps08$age+cps08$female+cps08$bachelor))
#I prefer the regression in (B) because the R-Squared in (b) in stronger than that of (c). 
# For (b) the R-Squared is ".2007" whereas for (c) is ".2008"

# Q6F. 
#Regression for D
summary(lm(log(cps08$ahe)~cps08$age+log(cps08$age,base = exp(2))+cps08$female+cps08$bachelor))
#Regression for B
summary(lm(log(cps08$ahe)~cps08$age+cps08$female+cps08$bachelor))
#The regressions in (d) adds the variable Age 2 to regression (b). The coefficient on Age 2 is statistically significant (1.153), and this suggests that 
# the addition of Age 2 is important. Thus, regression (d) is preferred over (b). 

# Q7G 
#Regression for D
summary(lm(log(cps08$ahe)~cps08$age+log(cps08$age,base = exp(2))+cps08$female+cps08$bachelor))
#Regression for C
summary(lm(log(cps08$ahe)~log(cps08$age)+cps08$female+cps08$bachelor))
#The regressions differ depending on their choice of the regressors. They can be compared based on the adjusted R2
# Regression (d) has the higher adjusted R2, so in this case, regression (d) is preferred over (c)

#Q8H.
Y=c(lm(log(cps08$ahe)~cps08$age))
X=c(cps08$age)
plot(X,Y)
plot(cps08$age,lm(log(cps08$ahe)~cps08$age))
length(x)
length(b)
plot(X,B)
C=c(lm(log(cps08$ahe)~log(cps08$age)))
plot(X,C)
D=c(lm(log(cps08$ahe)~cps08$age+log(cps08$age,base = exp(2))))
length(D)
plot(X,D)
Y=c(lm(log(cps08$ahe)~log(cps08$age)))
plot(X,Y,type = "2")
fit <- lm(cps08$ahe~cps08$age+cps08$female+cps08$bachelor)
# . The regression functions plot using AGE(B) and ln(AHE) from (b), are similar. the graph for (d) is different. It shows a decreasing effect on AGE as AHE increases. 
# The regression function plot for females with college degress would change in regards to the coefficent of the variable BACHELOR and the variable FEMALE.

# Q9I.
lm(log(cps08$ahe)~cps08$age+log(cps08$age,base = exp(2))+cps08$female+cps08$bachelor)
#The coefficent on the interaction term (FEMALE*BACHELOR) shows the extra effect of BAchelor on ln(AHE) for women relating to the effect for men.
Alexis: -1.59105 + 2.91939(30) + -.02237(30) + -.18588 + .42836 = 85.56203
#The regression perdicts that her average hourly earnings (AHE) will be $85.56
Jane: -1.59105 + 2.91939(30) + -.02237(30) + -.18588 = 85.13367
# The Regression predicts that Jane's AHE will be $85.13367
#The predicted difference between Alexis's and Jane's earnings is that Alexis will earn more because Alexis has a bachelors degree wheres Jane does not.
BOB: -1.59105 + 2.91939(30) + -.02237(30) + .42836 = 85.74
# This predicts that Bob will be making more than Alexis because he is a man.
Jim: -1.59105 + 2.91939(30) + -.02237(30) = 85.32
#THis regression predicts that Jim will make an AHE of 85.32 which more than Jane who the same credentials.
# Predicted difference between Jim and Bob earnings are 85.74 - 85.32 = .42

# Q10 J. There is a different effect of AGE on the ln(AHE) of men and women because of the variable AGE^2. 
# Using the regression from (d), which includes "AGE^2", your income would increase by 2.91939 for each additional year.

# Q11 K. The effect of AGE on earnings is different for high school graduates than for colege graduates because college grads have an advantage of .42836 according to regression from (d)

# Q12 L. The effect of Age on earnings of for young workers is that they will make less money compared to their seniors because of the regressions. They can try to make up the difference by being a man and having a bachelors.

