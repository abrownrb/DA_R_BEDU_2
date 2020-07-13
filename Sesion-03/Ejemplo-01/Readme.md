`Estadistica-Programacion-con-R` > [`Programacion con R`] > [`Sesion-03`] > [`Ejemplo-01`] 
### OBJETIVO
- Generar un script en R con tareas complejas implementadas mediante funciones

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion03/Ejemplo-01`

#### DESARROLLO

Limpiamos el workspace como buena práctica de programación:
```{r}
rm(list=ls())
```
Como ya conocemos, así es como se define una función en R:
```{r}
function_name <- function(arg1, arg2)
{
#	Manipular argumentos arg1 y arg2 de cierta forma y regresar un valor
}
```
Crea una funcion sencilla que regrese el valor del argumento:  
```{r}
boring_function <- function(x) {
  x
}
```
Si deseas ver el código fuente de cualquier función, solo escribe el nombre de la función sin argumentos ni paréntesis. Probemos esto con la función que acaba de crear. Teclea: boring_function para ver tu código fuente.
```{r}
boring_function
```

### Ahora hagamos un Script con R

Para esto hay que abrir el editor de scripts con un script nuevo:
![RScript](../images/RScript.png)

Ahora vamos a replicar la funcionalidad de la funcion mean(), creando nuestra propia función que haga lo mismo que mean()
```{r}
my_mean <- function(my_vector) {
  sum(my_vector)/length(my_vector)
  # Recuerda: la ultima expresion evaluada es lo que regresa R en sus funciones
}
```
En el script, probemos que la función haga el promedio pasandolé un vector de prueba c(2,4,5) y verifiquemos el resultado.
```{r}
my_mean(c(2,4,5))
```
Las funciones generalmente toman argumentos que son variables sobre las que opera la función. Por ejemplo, la función mean() toma un vector como argumento, como en el caso de my_mean(c(2,6,8)). La función my_mean() suma todos los números en el vector y divide esa suma por la longitud del vector. Si le pasas algún otro argumento no olvides el concepto e implementacion de coercion en R!
