
[`Estadística con R`](../../Readme.md) > [`Sesión 06`](../Readme.md) > `Postwork`  

## Postwork

### OBJETIVO A

- Nuestro objetivo del curso, como se ha dicho, es crear un análisis descriptivo de alto nivel utilizando R y estadística. En particular, al finalizar este postwork, deberás ser capaz de entender las distribuciones de los datos que tienes y sus estadísticos principales.    

#### DESARROLLO  

Para este postwork, queremos poder describir, tanto estadísticamente como visualmente, el dataset que contiene los datos del proyecto final.  

Las instrucciones son:  
1. Cuenta el número de observaciones que tiene el dataframe.  
2. Revisa que las columnas no tengan valores nulos ni faltantes (Hint: tienes que usar la función is.na para revisar esto en R).  
3. Una vez que tengas tu dataframe sin valores nulos, elige tus variables numéricas continuas.  
4. Crea un histograma de cada variable numérica continua, dónde grafiques además la media y mediana de la variable.  
5. Ahora, saca una muestra aleatoria sin reemplazo del 1% de tus dataframe que obtuviste en el punto 3.  
6. Crea un histograma de cada variable numérica continua de la muestra del punto 5, dónde grafiques además la media y mediana de la variable.  
7. Compara los histogramas del punto 4 y del punto 6. ¿Son iguales? ¿Existen diferencias muy notables?

### OBJETIVO B

- Nuestro objetivo del curso, como se ha dicho, es crear un análisis descriptivo de alto nivel utilizando R y estadística. Para este postwork, el objetivo es poder identificar, por un lado, si alguno de los eventos que tienes en tu dataframe está siendo modelado por algún experimento aleatorio y por otro, saber que v.a. podría modelar tus datos.  
 
#### DESARROLLO

Para este postwork, la intención es utilizar estas distribuciones obtenidas para ver si alguna de las variables pareciera estar siguiendo alguna distribución paramétrica.  

Para comenzar, debes abrir tu trabajo realizado en el postwork de la sesión 5. Después de esto, examina las distribuciones de las variables numéricas. ¿Alguna se parece a una distribución normal? ¿Alguna se parece a una distribución uniforme? ¿Alguna se parece a una distribución Bernoulli?   

Ahora, si tienes alguna variable que sospeches que sigue una distribución Normal, crea un qqplot para confirmarlo. Para entender la parte intuitiva de cómo se construye un qqplot puedes ver este <a href="https://www.youtube.com/watch?v=okjYjClSjOg" target="_blank">video</a>, para ejecutarlo el R puedes consultar la <a href="https://www.rdocumentation.org/packages/EnvStats/versions/2.3.1/topics/qqPlot" target="_blank">documentación oficial</a>.     

Si no tienes ninguna variable que sospeches que sigue una distribución Normal, utiliza la variable height del dataset utilizado en la parte del work de esta sesión. ¿Qué concluirías? ¿Tu variable se distribuye Normal? ¿La variable height del dataset de clase se distribuye Normal?  
