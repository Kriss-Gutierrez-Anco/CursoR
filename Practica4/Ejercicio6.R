# Nombre : Kriss gutierrez Anco 20164143C
# Respuesta6:
A<-matrix(c(1,2,3,8845,1259,1805,4327,2951,2621),nrow = 3)#Primera columna es el merito
A
s=0#inicializando la suma 
for (i in 1:length(A[,1])){
  s=A[i,3]*sum(A[A[,1]<i,2])+s#Calculando el numero de parejas
}
s
