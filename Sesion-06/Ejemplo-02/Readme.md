[`Estadística con R`](../Readme.md) > `Sesión 06: Distribución Muestral`

## Distribución de las variables de una muestra

### OBJETIVO

Al final de el `Ejemplo-02` serás capaz de:
- Leer archivos de local
- Utilizar la función rep para crear vectores con valores repetidos
- Utilizar la función tapply
- Sacar muestras de distintos tamaños 
- Pegar dataframes con al función rbind
- Crear un histograma por cada dataframe indiviudal que creamos

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash


Lo primero que hacemos al empezar a trabajar con R es importar las librerias que utilizaremos y leer el archivo csv de interés. En este caso, recuerda que tienes que tener el working dierctory en dónde esten los Datos o acompletar el path del archivo csv. 

```r
library(ggplot2)

# Leer datos
breast.cancer <- read.csv('breast_cancer.csv')
```

Para la siguiente etapa del Ejemplo-02, iremos paso a paso. Primero hay que entender que la función **rep** crea vectores con valores repetidos. Por ejemplo, `rep(1:3, each = 2)` nos regresaría un vector de la forma `c(1,1,2,2,3,3)`. Después, la función **sample** saca una muestra de los datos de temp, de tamaño `50*1, 50*5, 50*10` dependiendo el caso. Para finalizar, utilizamos tapply para sacar la media de cada muestra que obtenemos de los distintos tamaños que le indicamos. Todo el resultado lo guardamos como data.frame y repetimos este proceso para distintos tamaños de muestras.

```r
samp_mean_1 <- data.frame(
  temp = tapply(sample(temp, 50*1), rep(1:50, each = 1), FUN = mean),
  type = 'mean_of_1')
samp_mean_5 <- data.frame(
  temp = tapply(sample(temp, 50*5), rep(1:50, each = 5), FUN = mean),
  type = 'mean_of_5')
samp_mean_10 <- data.frame(
  temp = tapply(sample(temp, 50*10), rep(1:50, each = 10), FUN = mean),
  type = 'mean_of_10')
```

Pegamos horizontalmente los dataframes que obtuvimos y especificamos los niveles de la columna type.

```r
samp_mean <- rbind(samp_mean_1, samp_mean_5, samp_mean_10)

samp_mean$type <- factor(samp_mean$type, levels = c('mean_of_1','mean_of_5','mean_of_10'))
```

Para la visualizacion, utilizaremos como auxiliar la media de la población completa y gráficamos los histogramas de cada distinto tamaño de muestra que obtuvimos. 

```r
mean.temp <- mean(temp)

ggplot(samp_mean, aes(x = temp)) + 
  geom_histogram(bins = 40) +
  geom_vline(xintercept = mean.temp, color = 'red')+
  theme_minimal() +
  ggtitle('Distribución de la media con diferentes tamaños de muestra') +
  facet_grid('type')
```


