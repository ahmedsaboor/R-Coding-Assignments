# HW_2
#Regression For MUR v SHALL
library(foreign)
mydata <- read.dta("http://wps.pearsoned.co.uk/wps/media/objects/12401/12699039/empirical/empex_tb/Guns.dta")
#Dependent Variable
x=c(mydata$mur)
#Independent Variable
y=c(mydata$shall)
regression <- lm(x~y)
summary(regression)
#REJECTED THE NULL, T-VALUE=6.24 AND IS GREATER THAN 1.96
plot(x,y)

#Regression for ROB vs SHALL
library(foreign)
mydata <- read.dta("http://wps.pearsoned.co.uk/wps/media/objects/12401/12699039/empirical/empex_tb/Guns.dta")
#Dependent Variable
x=c(mydata$rob)
#Independent Variable
y=c(mydata$shall)
regression <- lm(x~y)
summary(regression)
# REJECTED THE NULL, T-VALUE= 7.441 AND IS GREATER THAN 1.96
plot(y,x)

#Regression FOR VIO VS SHALL
library(foreign)
mydata <- read.dta("http://wps.pearsoned.co.uk/wps/media/objects/12401/12699039/empirical/empex_tb/Guns.dta")
#Dependent Variable
x=c(mydata$vio)
# Independent Variable
y=c(mydata$shall)
regression <- lm(x~y)
summary(regression)
# REJECT THE NULL, T-VALUE= 7.236 AND IS GREATER THAN 1.96
plot(x,y)

#Number 2 and 3
# 2
#A
pnorm(3,mean=1,2)
#B
1-pnorm(0,mean=3,3)
#C
a=pnorm(52,mean=50,5)
b=pnorm(40,mean=50,5)
a-b
#D
pnorm(8,mean=5,sqrt(2))-pnorm(6,mean=5,sqrt(2))
#3
#A
pnorm(101,mean=100,sqrt(43/100))
#B
1-pnorm(98,mean=100,sqrt(43/165))
#C
pnorm(103,mean=100,sqrt(43/64))-pnorm(101,mean=100,sqrt(43/64))
