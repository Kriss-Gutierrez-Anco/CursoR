#Pregunta 1:
x<-c(5,2,1,4)
y<-rep(1,5)
sum(x)#12
range(x)#Retorna un vector contiene el minimo y maximo de todos sus argumentor (1,5)
sum(y)#5
c(x,y,13)#(5,2,1,4,1,1,1,1,1,13)
x[4]*y[2]#4*1=4
x[2:4]+x[1:3]#(2,1,4)+(5,2,1)=(7,3,5)
x<=2#(False,True,True,False)
x[x<=2]#x[F,T,T,F]=x[c(2,3)]=(2,1)
x[(x!=5)&(x>3)]#X[(F,T,T,T)&(T,F,F,T)]=x[(F,F,F,T)]=x[4]=4
rep(1:4,2)#Repetir del 1 al 4 dos veces (1,2,3,4,1,2,3,4)
rep(1:4, each=2)#Repetir cada dos veces los elementos del 1 al 4 (1,1,2,2,3,3,4,4)
rep(1:4,c(2,1,2,1))#Repetir cada (2,1,2,1) veces resp, los elementos del 1 al 4 (1,1,2,3,3,4)
rep(1:4,each=2,len=10)#Repetir cada dos veces los elementos del 1 al 4 hasta una longitud 10 (1,1,2,2,3,3,4,4,1,1)
2:3^2#a los elementos del 2 al 3^2 elevarlos al cuadrado (2,3,4,5,6,7,8,9)
seq(2,-3)*c(-1,1)#(-2,1,0,-1,2,-3)
#Pregunta 2
#Vector es una sequencia de datos del mismo tipo
c(1,2,3)
#Array es un conjunto de elementos que puede tener mas de dos dimensiones 
array(c(1,2,3,4,5,6,8,345,6,43,4,52),dim=c(2,2,3))
array(c(2,3,4,"a"),dim = c(2,2))
#Matrices es un conjunto de elementos del mismo tipo de dato arreglado en filas y columnas, un array bidimensional
matrix((1:9),nrow=3,ncol=3)
#Lista es un vector generico(que contiene diferentes tipos de datos, inclusive matrices)
n = c(2, 3, 5) 
s = c("aa", "bb", "cc", "dd", "ee") 
b = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
x = list(n, s, b, 3)
x
#Diferencias entre estos es que algunos como el vector array matrices aceptan solo 
#un tipo de dator a diferencia de las listas, para ingresar a los elementos de las
#matrices es necesario poner dos indices, uno en los vectores y dependiendo de las 
#dimensiones en un array, las matrices y los arreglos sirven para ordenar los datos
# a diferencia de los vectores 


#Las funciones cbind y rbind se usan para combinar vectores y matrices por columnas o filas
help("rbind")#toma una sequencia de vectores, matrices o datas frames como argumentos 
# y combina por columnas o filas,respectivamente
help("merge")#une dos marco de datos (data frame) por columnas comunes o nombres de filas
#o hacer otras versiones de operaciones conjuntas de database ¿Solo para data.frame?
B<-matrix(1:10,nrow = 2)
A<-data.frame(B,row.names=c("Hola","Como_estas"))
D<-data.frame(matrix(c(2,2,5,4,9,6,7,8,9,10),nrow = 2),row.names = c("Hola","dos"))
C<-1:2
A
D
cbind(A,C)
cbind(A,D)
merge(A,D,all=TRUE)
merge(A,C)
A
D
cbind(1:7, diag(7))
cbind(0, rbind(1, 1:3))
#Pregunta 3
a<-matrix(c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5),nrow =4,byrow = TRUE )
a[-1,]
dim(a[-1,])
a[,2]<-sort(a[,2])
is.matrix(a[-4,-1])
is.vector(a[-4,-1])# a[-4,-1] Devuelve un vector
is.matrix(matrix(a[-4,-1]))#matrix(a[-4,-1]) retorna una matriz
matrix(apply(a,1,min),nrow = 2)
apply(a,1,min)
a[c(8,5,4,1)]<-1/2*apply(a,1,min)
#Pregunta 4
2/7*matrix(c(1,2,7,2,4,6),nrow=3)-10*matrix(1:6,nrow=3,byrow = TRUE)
#Pregunta 5
A<-matrix(c(1,2,7),nrow = 3)
B<-matrix(c(3,4,8),nrow = 3)
A%*%B#no es posible
t(A)%*%B
t(B)%*%(A%*%t(A))
solve(B%*%t(B)+A%*%t(A)-100*diag(3))
#Pregunta 6
diag(c(11:0,1:11),21)
#Pregunta 7
E<-diag(c(2,3,5,-1),4)
solve(E)%*%E-diag(1,4)#produce una matriz de 4 ceros
#Pregunta 8
matrix(rep(1:5,5),nrow = 5)+matrix(rep(0:4,each=5),nrow = 5)
henkel<-function(x){
  matrix(rep(1:x,x),nrow = x)+matrix(rep(0:(x-1),each=x),nrow = x)
}
henkel(10)
#Pregunta 9
hilbert<-function(n){
  1/henkel(n)
}
solve(hilbert(4))




 
