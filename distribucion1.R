N<-100000
n<-100
p<-.5
x<-rbinom(N,n,p)
hist(x,
     xlim= c(min(x),max(x)),
     probability = TRUE,
     nclass =max(x)-min(x)+1
     ylab= "Densidad",
     col='yellow',
     main='Distribucione binomial, n=100, p=.5')
lines(density(x,bw=1), col ='red', lwd=3)
