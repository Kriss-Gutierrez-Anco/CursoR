# Nombre : Kriss gutierrez Anco 20164143C
# Respuesta5:
#Parte a:
#1.
 plot.new()
 # crea un nuevo grafico
 plot.window(range(pressure$temperature),range(pressure$pressure))
 #esta funcion establece los limites para x e y coordenadas en el grafico
 #en este caso los limites de x e y son:[0.360],[0.0002, 806.0000]
 box()
 #Esta funcion dibuja un cuadro alrededor de la grafica actual en el color y tipo de linea dados 
 axis(1)
 axis(2)
 #Agrega un eje en la trama actual, permitiendo especificacion de los lados, posicion, etiquetas y otras opciones
 #en este caso side=1:debajo del grafico(eje x) y side=2:izquierda del grafico(eje y)
 points(pressure$temperature, pressure$pressure)
 #Funcion para agregar una secuencia de puntos en las coordenadas especificas 
 #en este caso los puntos son (0,  20,  40,  60,  80, 100, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300, 320, 340, 360) en el eje x 
 #y (32.1000,  57.0000,  96.0000, 157.0000, 247.0000, 376.0000, 558.0000, 806.0000) en el eje y que son los elementos de los vectores
 #pressure$temperature, pressure$pressure
 mtext("temperatura", side=1, line=3)
 mtext("presion", side=2, line=3)
 mtext("Presion de vapor \ncomo una funcion de la Temperatura ",side=3, line=1, font=2)
 #Funcion paraescribir texto, el texto es escrito en uno de los cuatro margenes de la region de la figura actual, donde side es en que 
 #lugar de la trama en este caso "temperatura"  en side=1:debajo del grafico(eje x), "Presion" en side=2:izquierda del grafico(eje y)
 # y "Presion de vapor \ncomo una funcion de la Temperatura " en side=3:arriba de la grafica
#2.
install.packages("grid")
#Parte b:
curve(dgamma(x,shape=1,scale=1))
curve(dgamma(x,shape=1,scale=1),add=TRUE)
curve(dgamma(x,shape=2,scale=1),add=TRUE)
curve(dgamma(x,shape=3,scale=1),add=TRUE)
#Parte c:
setosa<-iris[iris$Species=="setosa",]
versicolor<-iris[iris$Species=="versicolor",]
virginica<-iris[iris$Species=="virginica",]
d<-data.frame(virginica=c(mean(virginica$Sepal.Length),mean(virginica$Sepal.Width),mean(virginica$Petal.Length),mean(virginica$Petal.Width)),setosa=c(mean(setosa$Sepal.Length),mean(setosa$Sepal.Width),mean(setosa$Petal.Length),mean(setosa$Petal.Width)),versicolor=c(mean(versicolor$Sepal.Length),mean(versicolor$Sepal.Width),mean(versicolor$Petal.Length),mean(versicolor$Petal.Width)),row.names = c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width"))
d
