[`Estadística con R`](../Readme.md) > `Sesión 05: Análisis Exploratorio de Datos - Análisis Multivariado`

## ScatterPlots y Binning Hexagonal

### OBJETIVO

Al final de el `Ejemplo-07` serás capaz de:
- Utilizar las funciones 

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash
5. Completar el `Ejemplo-06`
6. Completar el `Reto-05`  

Como es costumbre, lo primero que hacemos es cargar las librerias que utilizaremos. Además, leemos el archivo a manipular y vemos la estructura. También, vamos a seleccionar y renombrar el df resultante de algunas columnas que nos interesan.

```r
# Cargamos librerias
library(ggplot2)
library(dplyr)

# Leemos datos
breast.cancer <- read.csv('breast_cancer.csv')

# Vemos la estructura de nuestro dataframe
str(breast.cancer)

# Seleccionamos columnas de interés
breast.cancer.short <- breast.cancer[,c('diagnosis','radius_mean','texture_mean','perimeter_mean','area_mean')]
```

En el Ejemplo-02 vimos por separado las distribuciones de radius_mean y texture_mean. Ahora queremos ver la relación que existe entre estas dos variables. Para esto, utilizamos un scatterplot. 

```r
# Creamos un scatterplot con variables radius_mean y texture_mean
breast.cancer.short %>% 
  ggplot( aes(x = radius_mean, y = texture_mean, colour=diagnosis)) + 
  geom_point() +
  ggtitle('Relacion Radius y Texture')+
  theme_minimal() 
```

Para no ver a tanto detalle cada punto, si no en general ver donde se aglomeran mayor cantidad de puntos, utilizamos una gráfica tipo binning hexagonal. Además, agregamos **facet_wrap** sobre la variable diagnosis para ver esta gráfica por separado.

```r
# Creamos un binning hexagonal con variables radius_mean y texture_mean
breast.cancer.short %>% 
  ggplot( aes(x = radius_mean, y = texture_mean)) + 
  geom_hex() +
  ggtitle('Relacion Radius y Texture')+
  theme_minimal() + 
  scale_fill_gradient(low = 'white', high = 'red')

# Agregamos facet_wrap al binning hexagonal
breast.cancer.short %>% ggplot( aes(x = radius_mean, y = texture_mean)) + 
  geom_hex() +
  ggtitle('Relacion Radius y Texture')+
  theme_minimal() + 
  scale_fill_gradient(low = 'white', high = 'red') + 
  facet_wrap('diagnosis')
```
