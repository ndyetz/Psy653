install.packages("BayesFactor")
library(BayesFactor)

retirement<-read.csv(file="retirement.csv")
attach(retirement)
summary(retirement)

retirement$gender=factor(retirement$gender)
levels(retirement$gender)= c("Female", "Male")
retirement$occupation=factor(retirement$occupation)
levels(retirement$occupation)=c("Prof","Manag","nonmanual","Skilled","Semi-Skilled","Unskilled")

summary(aov(mental ~ gender*occupation, data=retirement))

bfa = anovaBF(mental ~ gender*occupation, data=retirement,whichModels = 'all')
bfa
bft = anovaBF(mental ~ gender*occupation, data=retirement,whichModels = 'top')
bft
bfb = anovaBF(mental ~ gender*occupation, data=retirement,whichModels = 'bottom')
bfb