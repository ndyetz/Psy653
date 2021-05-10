long<-read.csv("Longitudinal.csv")
attach(long)
aggregate(x=long$gpa,by=list(long$occas), FUN=mean)