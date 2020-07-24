[`Estadística con R`](../Readme.md) > `Sesión 06: Fundamentos de Estadística` 

### OBJETIVO

Al final de el `Ejemplo-04` serás capaz de:
- Entender un experimento que se distribuye Binomail
- Utilizar rbinom para simular el resultado de un experimento que sigue la distribución de la v.a. Binomial
- Obtener la función de masa de probabilidad en distintos puntos
- Obtener la función de densidad en distintos puntos

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

#### Distribución binomial
  
En el `Ejemplo-01` simulamos el experimento de aventar monedas al aire. En estos, en cada lanzamiento al aire, teniamos probabildiad p de obtener un éxito. Alguna veces, estamos interesados en un experimento de este tipo (fracaso-éxito) pero para obtener la probabilidad de tener x éxitos en n intentos. 

Imagina que en este momento hacemos una apuesta: **Ganas si, al lanzar una moneda al aire dos veces, sacas solamente una vez Águila**. ¿Entrarías a apostar en este evento? Si nos sentamos a pensar, los posibles resultados de este experimento son {A,A},{S,S},{A,S},{S,A}, por lo que ganarías en dos de estos casos, y perderias en dos casos. La probabilidad de ganar es 0.5, bastante justo. Vamos a simular el experimento con R, para ver quién hubiera ganado. Recuerda que para nosotros, los unos representan águilas y los ceros representan soles.

```r 
rbinom(n = 2, size = 1, prob = 0.5)
```

¿Quién gano? ¿Por qué?

#### Función de masa de probabilidad

En este experimento, número de veces que aparece águila en dos volados justos, tenemos los posibles resultados  {A,A},{S,S},{A,S},{S,A}.
Si te das cuenta, tenemos tres casos:
	- Si sucediera que el resultado es {S,S}, entonces obtuvimos **cero** águilas en dos volados justos
	- Si sucediera que el resultado es {A,S} o {S,A} entonces obtuvimos **un** águla en dos volados justos
	- Si sucediera que el resultado es {A,A}, entonces tuvimos **dos** águilas en dos volados justos
Además, cada caso tiene **0.25, 0.5 y 0.25** de probabilidad de suceder sucesivamente (es la división del número de casos en donde sucede entre el número de casos totales). Vamos a utilizar la función de masa de probabilidad para confirmar estas probabilidades:

```r
dbinom(x = 0:2 , size = 2, prob = 0.5)
``` 

#### Función de densidad

En la apuesta que hicimos al principio, solamente ganas si sacas **exactamente** un águila. ¿Cómo cambiaría el escenario si te dijera que ahora ganarías si sacas **al menos un águila**?. ¿Tus probabilidades nuevas de ganar son más altas? Una vez más utilicemos nuestros posibles resultados:  {A,A},{S,S},{A,S},{S,A}. Con esta nueva propuesta, ganarías en 3 de 4 casos, por lo que tu probabilidad de éxito sería 0.75. Esto también lo podríamos ver si sumamos la función de masa de probabilidad en los casos en los que ganas:  

```r
# Ganas si sacas al menos una águila en dos volados justos
dbinom(x = 0 , size = 2, prob = 0.5) +
  dbinom(x = 1 , size = 2, prob = 0.5) 

```

Lo anterior, sería lo mismo a evaluar x = 1 en la función de densidad de la variable aleatoria: 
```r
# Ganas si sacas al menos una águila en dos volados justos
dbinom(x = 0 , size = 2, prob = 0.5) +
  dbinom(x = 1 , size = 2, prob = 0.5) 

```
