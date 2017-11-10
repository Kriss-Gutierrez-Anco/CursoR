#Nombre: Kriss Gutierrez Anco
#Respuesta a la pregunta 4
set.seed(75)
aMat<-(sample(10.size=60, replace=T),nr=6)
#a)
length(aMat[aMat[1:6,]>4])
#b)
num7<-function(x){return(length(x[x[]==7]))}
c<-apply(aMat,1,num7)
length(c[c[]==2])
#c)
A<-matrix(rep(0,72),nrow=36)
B<-matrix(c(rep(1:6,each=6),rep(1:6,6),nrow=36)
for (i in 1:36){
    if sum(aMat[,B[i,]])>75{
    A[i,]<-B[i,]
    }
}
#Si las repeticiones no estan permitidas entonce cuando defino B como una matriz que me indica los indices tomaria B<-combn(1:6,2)

