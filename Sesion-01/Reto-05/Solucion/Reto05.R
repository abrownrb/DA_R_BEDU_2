welcome <- function(nombre){
  my.msg <- paste('Bienvenido',nombre)
  return(my.msg)
}

welcome('Ana')

?readline

nombre <- readline(prompt = '¿Cuál es tu nombre? ')
welcome(nombre)

welcome.2 <- function(nombre, edad){
  my.msg <- paste('Bienvenido',nombre, 'de', edad)
  return(my.msg)
}
welcome.2('Ana',24)
