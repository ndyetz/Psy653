# Kevin's R code
dfhyp= NA				
dferr= NA
alpha=.05
effect=	NA				#enter the minimum effect you are testing
sse=100	        #Don't change this				
mse=(((1/effect)-1)*sse)/dferr
noncen=sse/mse
qf((1-alpha),dfhyp,dferr,noncen)