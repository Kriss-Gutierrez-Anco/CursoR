#Nombre: Kriss Gutierrez Anco
#Respuesta a la pregunta 2
#a)
primero<-function(x,k){
          if(k!=NULL){
            return(x[1:k])
            }
          else return(1)
           
}
ultimo<-function(x,k){
         if(k!=NULL){
           return(x[k:(length(x)])
         }
         else return(1)
}
#b)
primero<-function(x,k){
          if(k!=NULL){
             if(k>length(x)) return(x)
             else return(x[1:k])
            }
          else return(1)
           
}
ultimo<-function(x,k){
         if(k!=NULL){
             if (k>length(x)) return(X) 
             else return(x[k:(length(x)])
         }
         else return(1)
}
#c)
primero<-function(x,k){
          if(k!=NULL){
             if(k>length(x)) return(x+rep(c(0,NA),each=c(x,k-length(x))))
             else return(x[1:k])
            }
          else return(1)
           
}
ultimo<-function(x,k){
         if(k!=NULL){
             if(k>length(x)) return(x+rep(c(0,NA),each=c(x,k-length(x))))
             else return(x[k:(length(x)])
         }
         else return(1)
}
