`Estadistica-Programacion-con-R` > [`Programacion con R`] > [`Sesion-02`] > [`Postwork`] 

### OBJETIVO  

- En particular, el objetivo de este postwork es hacer un primer análisis descriptivo de los datos que usaremos en el proyecto de este curso. Además instalar e importar lo necesario para comenzar el análisis.  

#### REQUISITOS
- Cuenta de GitHub  
- Git Bash  
- R versión 3.6.2 o mayor                                
- R Studio versión 1.2.5033 o mayor   

#### DESARROLLO

¡Es hora de aplicar lo que aprendiste a tus datos! Utiliza el set de datos del proyecto de este curso: 

A finales del 2019 se desató una pandemia, el COVID-19. Queremos analizar la situaciones de los distintos países en algunos días de interés. En el repositorio https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports, podemos encontrar toda la información de casos y eventualidades que nos ayudará a realizar el análisis de nuestros datos.

Ya que tienes identificadas las preguntas que puedes responder o predecir a partir de la base de datos, empieza a hacer las siguientes acciones:  

0. **Lee** sobre la función set.seed() en la documentación de la misma ?set.seed
1. **Importa** el dataset a Rstudio para empezar a analizarlo en el siguiente postwork.    
2. **Instala** los siguientes paquetes que te servirán para manejar y explorar los datos:  
- ```library(ggplot2) # te servirá para crear visualizaciones y gráficas``` 
- ```library(dplyr) # te servirá para un mejor manejo de la data```
- ```library(tidyr) # te servirá para reestructurar y redefinir la data```    

*Recuerda practicar tus habilidades de investigación y el uso de StackOverflow para encontrar, ya sea, información sobre cómo importar datasets dependiendo del tipo de archivo hasta cómo funciona cada paquete.   
  
Adicionalmente,realiza los siguientes ejercicios para reforzar los conocimientos adquiridos sobre condiciones y loops. Podrías aplicarlos a los datos del proyecto.

**Ejercicio 1**  

Escribe una función con la estructura condicional IF en R que calculé el valor en un punto x de una función deﬁnida por partes, como por ejemplo:

f(x)={0 si x≤0 , x^2 si x>0 }

**Ejercicio 2**  

Utiliza la estructura IF ELSE en R , para implementar una función que haga lo siguiente: La raíz n-ésima (real), depende de si n es par o impar. La fórmula sign(x)*abs(x)^(1/n) sirve para el caso par o el caso impar, excepto en el caso que n sea par y x < 0, es decir, la fórmula sirve si n es impar o x>=0, en otro caso hacer que en la función nos quede(arrojé) una expresión indefinida(NaN).  

**Ejercicio 3**  

Genera una función que con la estructura condicional IF ELSEIF ELSE en R para determinar el signo de un número: positivo, negativo o nulo. 

**Ejercicio 4**  

Escriba un bucle doble FOR que imprima 30 números de los grupos: (1:10, 2:11, 3:12). Esos son tres grupos de diez números cada uno. El primer bucle determina el número de grupos (3) a través de su longitud; el segundo bucle los números que se imprimirán (1 a 10 al principio). Cada grupo comienza un número más alto que el anterior.

**Ejercicio 5**  

Escribe un ciclo while que imprima números normales aleatorios estándar (que use rnorm (), pero se detiene (breaks) si obtiene un número mayor que 1.  

**Ejercicio 6**  

Escribe un ciclo REPEAT que contenga tres números aleatorios. El ciclo se repite exactamente diez veces antes de detenerse.

**Ejercicio 7**  

Combinando el ciclo FOR con la condicional IF: Escriba un bucle for que imprima el Desplazamiento ("disp") del conjunto de datos "mtcars".
a. Este bucle solo imprimirá observaciones de 160 o más en "disp".
b. Este bucle se detendrá tan pronto como una observación sea menor que 160 en "disp".

