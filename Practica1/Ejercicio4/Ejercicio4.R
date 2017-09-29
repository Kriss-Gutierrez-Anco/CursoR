#Pregunta 4 
#probabilidad(2^k>=15), ya que es discreto e independiente
#que gane mas de 15 soles es cuando k>=4
b<-1/(2^(1:1000))
sum(b)