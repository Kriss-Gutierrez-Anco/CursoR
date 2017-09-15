f<- function(x){ # Creamos una funcion f que tome como argumento x
    return(exp(x)-1) # Devolvemos e^x-1
}

limite_inferior <- -10 #Limite inferior para el Metodo
limite_superior <- 10 # Limite superior para el Metodo
# Mientras haya una diferencia mayor o igual a 10^8, iteramos
while(limite_superior-limite_inferior>=1e-8){
     punto_medio <- (limite_inferior+limite_superior)/2 # Tomamos el punto medio
     if (f(punto_medio) < 0){ # Si es negativo, la raiz esta en [punto_medio,limite_superior]
          limite_inferior <- punto_medio
     }
     else{ #Si no, la raiz esta en [limite_infeior,punto_medio]
         limite_superior <- punto_medio
     }
}
# Imprimimos al estilo del lenguaje Cel valor aproximado de la raiz
sprintf("La raiz aproximada es %.8f\n",limite_superior)     
    
