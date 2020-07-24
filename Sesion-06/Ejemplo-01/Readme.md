[`Estadística con R`](../Readme.md) > `Sesión 06: Distribución Muestral`

## Distribución de las variables de una muestra

### OBJETIVO

Al final de el `Ejemplo-01` serás capaz de:
- Leer archivos de local
- Contar el número de renglones de un dataframe
- Sacar una muestra del 20% de todos los índices de los renglones
- Crear un dataframe con estos índices que salieron en la muestra
- Ver la estructura de un dataframe
- Seleccionar columnas numéricas del dataframe
- Crear un histograma por cada variable numérica que tenemos

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash


Lo primero que hacemos al empezar a trabajar con R es importar las librerias que utilizaremos y leer el archivo csv de interés. En este caso, recuerda que tienes que tener el working dierctory en dónde esten los Datos o acompletar el path del archivo csv. 

```r
library(tidyr)
library(ggplot2)

# Leer datos
breast.cancer <- read.csv('breast_cancer.csv')
```

Haremos un **sample** del 20% de todos los renglones del dataframe. Para esto, primero necesitamos contar el número de renglones que tiene todo el dataframe. Para esto utilizamos la función **nrow**.

```r
# Contar el número de renglones del dataframe
nrow.df <- nrow(breast.cancer)
```

Después sacamos la muestra sin reemplazo de los renglones y especificamos que será de tamaño del 20% del total de los renglones. El resultado **idx.sample** tiene todos los renglones que salieron al utilizar la función sample, por lo tanto son los que utilizaremos para crear nuestro nuevo dataframe.

```r
# Sacar muestra sin reemplazo de los índices del 20% de todo el dataframe
idx.sample <- sample(nrow(breast.cancer), size = as.integer(nrow.df*0.2))

# Traer las observaciones del dataframe de los índices que salieron en la muestra
sample.df <- breast.cancer[idx.sample,]
```

De este nuevo dataframe de tamaño 0.2 del original, vemos la estructura y nos quedamos con las variables numéricas.

```r
# Vemos estructura del dataframe de los índices que salieron en la muestra
str(sample.df)
sample.df <- sample.df[,-c(1,2,3)]
```

Para finalizar con el Ejemplo-01, vamos a crear un histograma por cada variable numérica de este dataframe nuevo. Para esto, utilizamos la función **gather** de la libreria **tidyr**. Después, utilizamos ggplot2 y facet_wrap para lograr visualizar todos los histogramas.

```r
# Gráficamos histograma de variables numéricas de la muestra
ggplot(gather(sample.df), aes(value)) + 
  geom_histogram(bins = 10) + 
  facet_wrap(~key, scales = 'free_x') +
  theme_minimal()
```
