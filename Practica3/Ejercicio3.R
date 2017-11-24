#Nombre: Kriss Gutierrez Anco 20164143C
#Respuesta 3:
auxiliar<-function(X){
  if (is.matrix(X)==TRUE)
    return(apply(X,1,meangeo))
  else
    if (is.vector(X)==TRUE)
      return(meangeo(X))
}
meangeo<-function(x){
  return(prod(x^(1/length(x))))
}
meangeo(c(2,2))
geolista<-function(x){
  return(lapply(x,auxiliar))
}
f4<-list(1:3,matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),4,2),matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),2,4))
geolista(f4)