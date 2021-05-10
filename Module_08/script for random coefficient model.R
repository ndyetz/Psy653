randomcoeff<-read.csv("randomcoeff copy.csv")

attach(randomcoeff)
Timesq<-Time*Time
randomcoeff$Timesq<-Timesq
detach(randomcoeff)

installed.packages("lme4")
library(lme4)
(fm0<- lmer(Burnout ~  1 + (1 |Sub) ,data =randomcoeff,REML=FALSE))
summary(fm0)


(fm1<- lmer(Burnout ~  Time + (1+Time|Sub),data =randomcoeff, REML=FALSE))
summary(fm1)



(fm2<- lmer(Burnout ~  Time + Timesq + (1 + Timesq|Sub),data =randomcoeff, REML=FALSE))
summary(fm2)


anova(fm0,fm1,fm2)