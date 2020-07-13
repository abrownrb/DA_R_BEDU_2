`Estadistica-Programacion-con-R` > [`Programacion con R`] > [`Sesion-03`] > [`Ejemplo-03`] 

### OBJETIVO EJEMPLO 3
- Aprenderás a utilizar la funcion paste()
- Aprenderás a crear funciones con el argumento ...
- Aprenderás a crear operadores personalizados en R
- Conocerás la función complete.cases() y append()

#### REQUISITOS EJEMPLO3
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion03/Ejemplo-03`

#### DESARROLLO EJEMPLO3

Conozcamos la funtion paste(), para ver su hoja de específicacion teclea ?paste, veremos su funcionamiento con un ejercicio:
Como puedes ver, el primer argumento de paste() es `...`, que se conoce como puntos suspensivos o simplemente punto-punto-punto. Los puntos suspensivos permiten pasar un número indefinido de argumentos a un función. En el caso de paste() se puede pasar cualquier número de cadenas como argumentos y paste() devolverá todas las cadenas combinadas en una sola cadena.

Solo para ver cómo funciona paste (), escribe paste("Programming", "is", "fun!")
```{r}
paste("Programming", "is", "fun!")
```
Hagamos el siguiente ejemplo para ilustar la función paste(): Los telegramas solían estar salpicados con las palabras START y STOP para demarcar el comienzo y el final de las oraciones. Escribe una función a continuación llamada telegram que formatea oraciones para telegramas.
Por ejemplo, la expresión `telegram(" Good "," morning ")` debe evaluarse como:
"START Good morning STOP"

```{r}
telegram <- function(...){
 #escribe tu código aquí
}
```
Exploremos cómo "desempaquetar" argumentos de puntos suspensivos cuando usas el elipses como argumento en una función. A continuación tengo una función de ejemplo que se supone que agrega dos argumentos con nombres explícitos llamados alfa y beta.
```{r}
add_alpha_and_beta <- función (...) {
# Primero debemos capturar los puntos suspensivos dentro de una lista
# y luego asigne la lista a una variable. Vamos a nombrar esto
# variable `args`.
args <- list (...)
#  Ahora vamos a suponer que hay dos argumentos con nombre dentro de los argumentos
#  con los nombres `alpha` y` beta.` Podemos extraer argumentos con nombre de
#  la lista de argumentos utilizando el nombre del argumento y los corchetes dobles. los
#  ¡La variable  `args` es solo una lista regular después de todo!
alpha <- args [["alpha"]]
beta <- args [["beta"]]
# Luego devolvemos la suma de alfa y beta. 
alpha + beta
}
```
¿Alguna vez has jugado Mad Libs antes? La siguiente función construirá un oración de partes del discurso que proporcionas como argumentos. Escribiremos más de la función, pero necesitará desempaquetar los argumentos apropiados del elipses.
```{r}
mad_libs <- function(...){
  # Haz el desempaquetamiento aquí
  
  # No modificar el código abajo
  # Recuerda crear las variables necesarias
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}
```
Es hora de usar tu función mad_libs. Asegúrate de nombrar el lugar, el adjetivo y los argumentos sustantivos para que tu función funcione.
```{r}
mad_libs("mad","as","it can be") # por ejemplo
```
Estás familiarizado con sumar, restar, multiplicar y dividir números en R. Para hacer esto,use los símbolos +, -, * y /. Estos símbolos se llaman operadores binarios porque toman dos entradas, una entrada desde la izquierda y una entrada desde la derecha. 
En R puede definir sus propios operadores binarios. En el próximo ejemplo te mostrarémos cómo.

Digamos que querías definir un operador binario que multiplicara dos números y luego agregó uno al producto. A continuación se muestra una implementación de ese operador:
```{r}
"%mult_add_one%" <- función (izquierda, derecha) {
#¡Observe las dobles comillas! 
izquierda * derecha + 1
}
```
Entonces podrías usar este operador binario como `4 %mult_add_one% 5` que evalua a 21.

¡Escribe tu propio operador binario a continuación desde cero! Tu operador debe llamarse %p% para que la expresión:
```{r}
"Buen" %p% "trabajo!"
```
evalué a: "Buen trabajo!"

Ahora conoceremos la funcion append() con ?append
```{r}
?append
```
Ahora conoceremos la funcion complete.cases() con ?complete.cases
```{r}
?complete.cases
```

