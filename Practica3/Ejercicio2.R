#Nombre: Kriss Gutierrez Anco 20164143C
#Respuesta 2:
#Item a:
mtcars[-1:4,]# no se puede indexar numero negativos mixtos 
mtcars[1:4,]
mtcars[mtcars$cyl<=5]# no se han definido las columnas seleccionadas
mtcars[mtcars$cyl<=5,]
mtcars[mtcars$cyl==4|6,]#el 6 no es un valor logico
mtcars[mtcars$cyl==4|FALSE,]
#Item b:
x<-1:5
x[NA]#indexar como indice al NA, hace que todos los demas se hagan NA
#Item c:
mtcars[1:20]#no se especifica las columnas solo las filas en cambio de mtcars[1:20,] que especifica que se toman todas las columnas
#Item d:
df<-c(NA,5,6,NA)
df[is.na(df)]<-0#Donde el objeto df tenga valores NA se les cambia por el valor 0
df

