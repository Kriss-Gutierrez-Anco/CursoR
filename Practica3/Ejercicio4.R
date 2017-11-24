#Nombre: Kriss Gutierrez Anco 20164143C
#Respuesta 4:
#Itam a:
f1<-function(x={y<-1;2},y=0){
  x+y
}
f1()
#item b:
trims<-c(0,0.1,0.2,0.5)
x<-rcauchy(100)
lapply(trims,function(trim)mean(x,trim=trim))
lapply(trims,mean,x=x)
#En la priemra se defina una funcion que usa el mean donde trim=trim, en la segunda solo se usa la funcion mean, sin embargo en la segunda se da otro parametro adicional a la funcion que es x=x que es analogo a trim=trim en la funcion original
#Item c
#usando for:
x<-matrix(1:10)
for (i in 1:nrow(x)) 
  for (j in 1:ncol(x))
     if (is.na(x[i,j])==FALSE)
       print(i)
         break
#usando apply:
y<-apply(x,1,function(x)sum(x))
(y[is.na(y)==FALSE])[1]



