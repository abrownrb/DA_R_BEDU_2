######################################
########## Fundamentos de R ##########
##########    Sesión 01     ##########
##########  Ejercicio 03    ##########
######################################

iris

# Llamamos funciones útiles sobre columnas de iris

min(iris$Sepal.Length)

min(iris$Sepal.Length[1:5])

mean(iris$Sepal.Length)

max(iris$Sepal.Length)

median(iris$Sepal.Length)

# Para comparar valores, esto nos regersa un booleano

10 > 10

10 < 10

10 <= 10

10 >= 10

10 != 10

10 == 10

# Podemos comparar los valores de las columnas de un dataframe
iris$Sepal.Width > 2

# Podemos usar la comparación para filtrar un dataframe
iris[iris$Sepal.Width > 2, ]

# Podemos utilizar alguna función para elegir el valor sobre el que se va a comparar
iris[iris$Sepal.Width > mean(iris$Sepal.Width), ]

# Podemos comparar y elegir cuáles columnas mostrar
iris[iris$Sepal.Width > 2,1:3]

# Para ver la estructura de un dataframe
str(iris)

# Para ver los estadísticos básicos de las columnas de un dataframe
summary(iris)
