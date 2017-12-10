# Nombre : Kriss gutierrez Anco 20164143C
# Respuesta7:
#calculando los quantiles hallando la raiz de dnorm(z)-x:
quant<-function(a,n){
  if(a<0.5){
    v<-c(-2,0)
     for(i in 1:n){
       if((pnorm(v[1],0,1)-a)*(pnorm((v[1]+v[2])/2,0,1)-a)<0)
         v[2]<-(v[1]+v[2])/2
       else
          if((pnorm(v[2],0,1)-a)*(pnorm((v[1]+v[2])/2,0,1)-a)<0)
             v[1]<-(v[1]+v[2])/2
     }
  return(mean(v))}
  else{
    v<-c(10*a,0)#eligiendo un v[1] suficientemente grande talque pnorm(v[1],0,1)-a sea positivo
    for(i in 1:n){
      if((pnorm(v[1],0,1)-a)*(pnorm((v[1]+v[2])/2,0,1)-a)<0)
        v[2]<-(v[1]+v[2])/2
      else
        if((pnorm(v[2],0,1)-a)*(pnorm((v[1]+v[2])/2,0,1)-a)<0)
          v[1]<-(v[1]+v[2])/2
    }
    return(mean(v))}
}
#Si existe una funcion en R para hallar los quantiles en una normal de media 0 y sd 1:
#qnorm()
quant(0.2,30)
qnorm(0.2)