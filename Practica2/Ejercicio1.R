#Nombre: Kriss Gutierrez Anco
#Respuesta pregunta 1
A<-matrix(rep(1:5,5),nrow=5)
B<-matrix(rep(0:4,each=5),nrow=5)
A+B
henkel<-function(x){
        A<-matrix(rep(0:(x-1),each=x),nrow=x);
        B<-matrix(rep(1:x,x),nrow=x);
        return(B+A)
}
henkel(10)
henkel(12)
