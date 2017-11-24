#Nombre: Kriss Gutierrez Anco 20164143C
#Respuesta 6:
#Item a):
str(iris)#es un data frame de 150 0bs de 5 variables:
#Sepal.Length,Sepal.Width,Petal.Length,Petal.Width,Species, Species es un factor que tiene 3 niveles: "setosa","Versicolor","Virginica"
nrow(iris)#150 filas
ncol(iris)#5 columnas
#Item b):
summary(iris)#la media, el minimo la mediana el maximo en el primer y tercer quantil 
#Item c):
min(iris$Sepal.Length)#4.3
max(iris$Sepal.Length)#7.9
mean(iris$Sepal.Length)#5.843333
median(iris$Sepal.Length)#5.8
quantile(iris$Sepal.Length)#  0%  25%  50%  75% 100% 
                           #4.3  5.1  5.8  6.4  7.9 
?quantile