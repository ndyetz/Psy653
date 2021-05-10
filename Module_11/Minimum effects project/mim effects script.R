effect<-.05
dfhyp=3
dferr=120
alpha=.05
sse=100
mse=(((1/effect)-1)*sse)/dferr
noncen=sse/mse
qf((1-alpha),dfhyp,dferr,noncen)