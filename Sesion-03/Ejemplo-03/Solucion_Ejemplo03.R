######################################
########## Estadística con R #########
##########    Sesión 02     ##########
##########  Ejemplo 03    ##########
######################################

# Para ver la ruta de dónde estamos trabajando
getwd()

telegram <- function(...){
  paste("START",...,"STOP")
}

mad_libs <- function(...){
  
  args <- list(...)
  place <- args[[1]]
  adjective  <- args[[2]]
  noun  <- args[[3]]
 
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}
mad_libs("mad","as","it can be") # por ejemplo

"%p%" <- function(arg1,arg2){ 
  paste(arg1,arg2)
}

"I" %p% "love" %p% "R!"

"%mult_add_one%" <- function(izquierda, derecha){
  #¡Observe las dobles comillas! 
  izquierda * derecha + 1
  }
4 %mult_add_one% 5




