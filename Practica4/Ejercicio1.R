# Nombre : Kriss gutierrez Anco 20164143C
# Respuesta1:
popular<-data.frame(m=rnorm(100,160,20),f=rnorm(100,160,20))
prox.gen<-function(popular) {
   popular$m<-sample(popular$m)
   popular$m<-apply(popular,1, mean)
   popular$f<-popular$m
   return(popular)
}
i<-1
l<-prox.gen(popular)
hist(l$m,main ="histograma de las alturas masculinas",xlab = "alturasmasculinas")
while (i<9){
  l<-prox.gen(l)
  l$m
  hist(l$m,main ="histograma de las alturas masculinas",xlab="alturas masculinas")
  i<-i+1
}


