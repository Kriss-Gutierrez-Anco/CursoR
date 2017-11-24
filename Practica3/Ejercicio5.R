#Nombre: Kriss Gutierrez Anco 20164143C
#Respuesta 5:
#Item a)
temFn<-function(xVec){
  y<-xVec[1:(length(xVec)-1)]-(mean(xVec))
  z<-xVec[2:(length(xVec))]-mean(xVec)
  u<-xVec[3:(length(xVec))]-mean(xVec)
  v<-xVec[1:(length(xVec)-2)]-mean(xVec)
  r1<-sum(y*z)/sum((xVec-mean(xVec))^2)
  r2<-sum(u*v)/sum((xVec-mean(xVec))^2)
  return(c(r1,r2))
}
x<-seq(from=2,to=56,by=3)
length(x)
temFn(x)
#Item b):
auxiliar<-function(k,xVec){
  y<-xVec[1:(length(xVec)-k)]-(mean(xVec))
  z<-xVec[(k+1):(length(xVec))]-mean(xVec)
  rk<-sum(y*z)/sum((xVec-mean(xVec))^2)
  return(rk)
}
tempFn1<-function(xVec,k){
  if (k<length(xVec))
    return(c(0,sapply(1:k,auxiliar,xVec)))
}
tempFn1(x,3)
