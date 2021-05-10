nested<-read.csv(file="Nested.csv")
data(nested)
aggregate(nested$Y, by=list(Hospital=nested$H), mean)
aggregate(nested$Y, by=list(Drug=nested$Dfour), mean)
aggregate(nested$Y, by=list(Condition=nested$Csix), mean)


anova(lm(Y ~ H + Dtwo + H*Dtwo +  Csix/Dtwo + H *(Csix/Dtwo) , data=nested))

anova(lm(Y ~ H + H/Dfour + H/Ctwelve +  H/Dfour/Ctwelve, data=nested))


