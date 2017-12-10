# Nombre : Kriss gutierrez Anco 20164143C
# Respuesta4:
#Todos los posibles ordenes ascendentes con repeticion del 1 al N pueden ser representados por unos y ceros donde un cero significa que el siguiente numero no aumenta y 1 que aumenta
#El numero maximo de ceros es la frecuencia maxima, y el numero de 1's es la cantidad de combinacion de N numeros
library(gtools)
N<-140
M<-9
c<-permutations(2,M-1,c(1,0),repeats.allowed=T)#Es M-1 ya que la primera columna de esta matriz se inicializa con 1's ya que estamos comenzando el orden, es decir desde ese punto se sabe si el siguiente es 0 o 1
max0<-function(x){#Funcion para hallar el numero maximo de 0's
  vec_1<-c(1,x,1)
  y<-diff(which(vec_1==1))
  return(max(y))
}
num1<-function(x){#Funcion para hallar el numero de 1's
  length(which(x==1))+1
}
a<-apply(c,1,max0)
b<-apply(c,1,num1)
c<-sum((choose(N,b)*a)/sum(a))
c%%(10^9+7)