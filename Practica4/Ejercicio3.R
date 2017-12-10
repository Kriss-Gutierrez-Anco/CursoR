# Nombre : Kriss gutierrez Anco 20164143C
# Respuesta3:
F.rand <- function(lambda) {
  u <- runif(1)
  x <- 0
  p.x <-exp(-lambda)#P(X=0), X tiene una distribucion de poisson
  F.x <-exp(-lambda)
     while (F.x < u) {
       x <- x + 1
        p.x <-(lambda/x)*p.x
        F.x <-F.x+p.x
         }
   return(x)
}
