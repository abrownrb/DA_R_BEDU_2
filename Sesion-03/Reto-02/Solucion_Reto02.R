######################################
########## Estadística con R #########
##########    Sesión 02     ##########
##########     Reto 02    ##########
######################################

# Para ver la ruta de dónde estamos trabajando
getwd()

evaluate <- function(func, dat){
  # Write your code here!
  # Remember: the last expression evaluated will be returned! 
  func(dat)
}

evaluate(sd,c(1.4, 3.6, 7.9, 8.8))
evaluate(function (x) {x[1]},c(8,4,0))
evaluate(function (x) {x[length(x)]},c(8,4,0))
