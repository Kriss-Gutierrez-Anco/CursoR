#Pregunta numero 1
1+2*(3+4)
4^3+3^(2+1)
sqrt((4+3)*(2+1))
((1+2)/(3+4))^2
#pregunta numero 2
sd(0:100)
#pregunta numero 3
demo(plotmath)
#pregunta numero 4
x = c(1, 8, 2, 6, 3, 8, 5, 5, 5, 5)
sum(x)/10 #item a
log(x,base = 10) #item b
(x-4.4)/2.875 #item c
max(x)-min(x) #item d
#Pregunta numero 5
3^(1:50) #item a
(1:100)^(rep(c(1,2),50)) #item b
-rep(-1:-20,each=2)^(rep(c(1,0),20)) #item c
#Pregunta 6
# 11.1 10.6 6.3 8.8 10.7 11.2 8.9 12.2
#a)
solar.radiacion<-c(11.1,10.6,6.3,8.8,10.7,11.2,8.9,12.2) #item a
mean(solar.radiacion) #item b
median(solar.radiacion) #item b
var(solar.radiacion) #item b
sr10<-solar.radiacion+10 #item c
mean(sr10) #item c
median(sr10) #item c
var(sr10) #item c
srm2<-solar.radiacion*-2 #item d
mean(srm2) #item d
median(srm2) #item d
var(srm2) #item d
#Cambia la media y la mediana con una diferencia de 10 en ambos casos
#d)
srm2<-solar.radiacion*-2
mean(srm2)
median(srm2)
var(srm2)
#la mediana, la media y la varianza varian, la mediana por 31.95, la media por 29.925y la varianza por -10.575 
#Pregunta 7
rivers
rivers[length(rivers)]
#el ultimo valor listado es 1770
#Pregunta 8
Orange
# Tree, age y circumference
#Pregunta 9
mean(Orange$age)
#Pregunta 10
max(Orange$circumference)
#Pregunta 11
#* R es una implementcación open-source del lenguaje S, que también es la base del sistema S-plus, con la particularidad de que es un software GNU (General Public Licenc), es decir de uso libre.  
#* Funcional e Imperativo
#* El comando es c(8:27) crea un vector de numeros del 8 al 27
#* "help" 
#* "RSiteSearch"
#Pregunta 12
class(Inf)#numeric
class(NA)#logical
class(NaN)#numeric
class(" ")#character
#Pregunta 13
d<-sample(c("perro","gato","pollo","pez dorado"),1000,replace = TRUE,prob = c(0.25,0.25,0.25,0.25))
head(d)
d_factor<-factor(d)
summary(d_factor)
#Pregunta 14
e<-10# asignamos a la variable "e" con el valor de 10 por medio de "<-"
e
assign("f",10)#asignamos a la variable "f" con el valor de 10 por medio de  la funcion assign
f
#Pregunta 15
atan(1/1:1000) #item a 
x<-1:1000 #item b
y<-atan(1/x) #item b
z<-1/(tan(y)) #item b
x #item b
y #item b
z #item b
