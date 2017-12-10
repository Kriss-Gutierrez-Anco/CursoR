# Nombre : Kriss gutierrez Anco 20164143C
# Respuesta2:
#La probabilidad seria el numero total de casos favorables entre el numero de casos
A<-scan(file="Entrada.txt", nlines = 1,quiet=TRUE)
#N
#k<-Scan()
#S<-scan()
library(MASS)
N<-139
k<-84
s<-c(0,1,1,1,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,0,1,1,0,0,1,1,1,0,0,0,0,1,1,0,0,0,1,1,1,0,1,0,1,1,0,1,0,1,0,0,1,0,0,0,0,1,1,0,1,0,0,0,0,1,1,1,0,1,1,0,0,0,0,1,1,1,0,1,1,0,0,1,0,1,1,0,0,1,0,0,1,1,1,1,0,0,1,1,1,0,0,0,0,0,0,0,0,1,1,0,1,0,0,1,0,0,0,1,0,0,1,1,0,1,0,1,1,1,1,0,0,1,0,1,0,0)
s_1<-which(s==1)
x<-rep(0,length(s_1))
  for (i in 1:length(s_1)){
      x[i]<-length(which((s_1<=s_1[i]+k)&(s_1[i]-k<=s_1)))
  }
fractions(sum(x)/(N^2))



