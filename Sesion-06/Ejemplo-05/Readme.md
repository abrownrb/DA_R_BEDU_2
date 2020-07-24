[`Estadística con R`](../Readme.md) > `Sesión 06: Fundamentos de Estadística` 

### OBJETIVO

Al final de el `Ejemplo-05` serás capaz de:
- Simular valores para una v.a. Uniforme
- Entender la variable aleatoria Normal
- Crear una visualización para ver la distribución de algunos datos
- Simular valores para una v.a. Normal

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

#### Distribución Uniforme

¿Recuerdas en el Prework cuándo vimos la variable aleatoria continua Uniforme? Esta tiene la característica que en todos sus posibles valores tiene la misma probabilidad. Por ejemplo, simulemos una v.a. Uniforme que está entre 0 y 1. Esto quiere decir que cualquier valor entre 0 y 1 tiene la misma oportunidad de aparecer.

```r 
x <- runif(100000)
```

Al crear una visualizacion de esta simulación, podemos ver que al final obtenemos cada número entre 0 y 1 casi las mismas veces, lo cuál era de esperarse.

```r 
data.frame(valores = x) %>% 
  ggplot(aes(x = valores)) + 
  geom_histogram(bins = 100, 
                 fill = 'blue',
                 alpha= 0.6, 
                 color = 'black') + 
  scale_x_continuous(breaks = seq(0,1,0.1), lim = c(0,1)) +
  ggtitle('Simulación de 100,000 valores con dist Uniforme')

```

#### Distribución Normal

Tenemos un archivo con las alturas de 100 hombres en UK en dónde se registró su altura. Resulta que nos contaron que esta altura se distribuye normal. Vamos a verificarlo, para esto, veremos la distribución de los datos y esperamos ver algo en forma de campana.

```r
# Leemos el archivo csv con alturas de 100 personas en UK 
height <- read.csv("height.csv")

mean.height <- mean(height$height)

std.height <- sd(height$height)

height %>% 
  ggplot(aes(x=height)) + 
  geom_histogram(aes(y = ..density..),
                 bins = 100, 
                 fill = 'blue',
                 alpha= 0.6, 
                 color = 'black')  +
  geom_density(aes(y=..density..)) +
  geom_vline(xintercept = mean.height, color = 'red', size = 1.5)+
  ggtitle('Histograma de alturas de hombres de UK') +
  theme_minimal()
``` 

#### Simulando v.a Normal

Dado que ya sabemos que efectivamente la altura se distribuye normal, vamos a simular 500 datos nuevos. Para esto, utilizaremos la media y desviación estándar de la muestra que teníamos. Al visualizar esto, podemos percatarnos que las distribuciones obtenidas son casi identicas.

```r
# Simula 500 puntos con distribución Normal(mean.height, std.height)
new.height <- data.frame(height = rnorm(n = 500, mean = mean.height,sd = std.height))

new.height %>% 
  ggplot(aes(x=height)) + 
  geom_histogram(aes(y = ..density..),
                 bins = 10, 
                 fill = 'blue',
                 alpha= 0.6, 
                 color = 'black')  +
  geom_density(aes(y=..density..)) +
  geom_vline(xintercept = mean.height, color = 'red', size = 1.5)+
  ggtitle('Histograma de Simulaciones de alturas de hombres de UK') +
  theme_minimal()


```

Una de las características de la v.a. Normal, es que a la izquierda de su media tenemos el 50% de los datos y a la derecha de la media tenemos el otro 50% de los datos. Vamos a checar esto en R:

```r
# Encuentra prob acumulada en x = 1.70 de distribución Normal(mean.height, std.height)
pnorm(q = 176.8, mean= mean.height, sd = std.height)
```
