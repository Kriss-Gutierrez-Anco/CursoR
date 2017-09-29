#Pregunta 5
tst4 <- function(x){
  if(x < -2) "muy negativo"
  else if(x < 1) "cercano a cero"
  else if(x < 3) "in [1,3>"
  else "large"
}
tst4(0)#Cercano a 0
tst4(Inf) #large
tst4(2)# in[1,3>
tst4(c(Inf, 3:5))
Tst4<- function(x){
  ifelse(x < -2, "muy negativo",
         ifelse(x < 1, "cercano a 0",
                ifelse(x< 3, "in [1,3>", "large"))
  )
}
Tst4(c(Inf, 3:5))