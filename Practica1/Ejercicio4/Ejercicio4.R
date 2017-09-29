#Pregunta 4 
#probabilidad(2^k>=15), ya que es discreto e independiente
#que gane mas de 15 soles es cuando k>=4
#que es el reciproco que cuando k<3, osea k=1,2,3 y estos casos son independientes
#P(k)=1/(2^k)
a<-1/(2^(1:3))
1-sum(a)
b<-1/(2^(1:1000))
sum(b)