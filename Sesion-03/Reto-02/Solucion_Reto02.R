######################################
########## Estadística con R #########
##########    Sesión 02     ##########
##########     Reto 02    ##########
######################################


# función evaluate()se pasa al argumento "func" y algunos datos (como un vector) 
# devolverá el resultado de que se haya pasado como argumento para func.
evaluate <- function(func, dat){
  func(dat)
}
?eval

evaluate(sd,c(1.4, 3.6, 7.9, 8.8))
evaluate(sum, c(2, 4, 6))
evaluate(median, c(7, 40, 9))
evaluate(floor, 11.8)
# construir una función resta. x1 - x2, donde x=(x1,x2) 
# y aplicarle evaluate

resta <- function(vector){
  return(vector[1]-vector[2])
}

resta(c(4,1))

evaluate(resta,c(4,5))



resta <- function (x){x[1]-x[2]}
evaluate(resta,c(8,4,0))

# devuelva el elemento en la penúltima posición
evaluate(function (x) {x[length(x)-1]},c(8,4,0))
