library(foreign)
HW5 <- read.dta("C:/Users/Saboor/OneDrive/Documents/Fall 2018/ECO 33150 Econometrics/Data Sets/Guns.dta")
#QA1.
lm(log(HW5$vio)~HW5$shall)
#QA2.
lm(log(HW5$vio)~HW5$shall+HW5$incarc_rate+HW5$density+HW5$avginc+HW5$pop+HW5$pb1064+HW5$pw1064+HW5$pm1029)

#QB1.
# The coefficent "shall" is statistically significant. That is because the "Shall" laws have decreased gun permits by 36% in regression (2). 

#Qii.
# Adding the control variables results n a small drop in the estimated effect of shall carry law in reg(1)
# 

#Qiii.
# One variable the varies across states but varies little over time can be quality and tenacity of police officers. Can also be people view toward gun control.

#Qb.
# Yes the results change when we add fixed state effects.
lm(log(HW5$vio)~HW5$shall+HW5$incarc_rate+HW5$density+HW5$avginc+HW5$pop+HW5$pb1064+HW5$pw1064+HW5$pm1029)
# Regression (2) has to be more credible because it accounts for more unobserved characteristics that vary.

#QC.
lm(log(HW5$vio)~HW5$year+HW5$shall+HW5$incarc_rate+HW5$density+HW5$avginc+HW5$pop+HW5$pb1064+HW5$pw1064+HW5$pm1029)
# Yes the results do change when you add fixed time effects. The time effects are statistically significant so it is more credible

#QD.
lm(log(HW5$rob)+log(HW5$mur)~HW5$shall+HW5$incarc_rate+HW5$density+HW5$avginc+HW5$pop+HW5$pb1064+HW5$pw1064+HW5$pm1029)

#QE.
# Ommitted variables are a threat to internal validity. Variables that vary between states.
#Simulatanoues casuality is also a threat because many violent crimes may result in the government changing weapons laws.

#QF.
# The conclusions I would draw about the effects of concealed weapons laws is that there is no major effect of concealed weapons laws on violent crime rate, murder rate or volent crime rate.