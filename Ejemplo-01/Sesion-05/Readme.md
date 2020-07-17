[`Estadística con R`](../Readme.md) > `Sesión 05: EDA` 

### OBJETIVO

Al final de el `Ejemplo-01` serás capaz de:
- Ver y cambiar la dirección donde estas trabajando
- Cambiar el nombre de las columnas de un dataframe
- Leer un archivo
- Contar el número de nulls que hay en cada columna
- Ver la estructura y resumen de un dataframe
- Encontrar media, mediana y moda de una columna

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

#### Working Directory
Cuándo estamos en una sesión de R, aunque no lo especifiquemos, estamos trabajando en una ruta específica. Por ejemplo, si tenemos todos nuestros datos en otra carpeta, nos convendría mover la ruta de trabajo a esa carpeta.

```r
# Para ver la ruta de dónde estamos trabajando
getwd()

# Para bajar dos niveles del directorio de trabajo 
# utilizamos ../.. y para accesar a una nueva carpeta ponemos su nombre, Data
setwd('../../Data')

# Vemos la ruta cambiada
getwd()
```

#### Leer archivos
La función más común para leer archivos es `read.csv()` a la cuál le podemos especificar cuándo el dataset tenga o no el nombre de las columnas. Nota que después de que leemos este dataframe, los nombres de las columnas las crea R y no nos dan información sobre el contenido de las variables. 

```r
# Leemos dataset

breast.cancer <- read.csv('wdbc.data', header = FALSE)
``` 

#### Renombrar columnas

En este caso, cómo no tenemos **header**, nos conviene renombrar manualmente los nombres de la columna. 

```r
names(breast.cancer) <- c('id','diagnosis','radius_mean',
                          'texture_mean','perimeter_mean','area_mean',
                          'smoothness_mean','compactenss_mean',
                          'concavity_mean','concave_points_mean',
                          'symmetry_mean','fractal_dimension_mean',
                          'radius_se','texture_se','perimeter_se',
                          'area_se','smoothnsess_se','compactness_se',
                          'concavity_se','concave_points_se','symmetry_se',
                          'fractal_dimension_se','radius_worst',
                          'texture_worst','perimeter_worst','area_worst',
                          'smoothnes_worst','compactness_worst',
                          'concavity_worst','concave_points_worst',
                          'symmetry_worst','fractal_dimension_worst')

```

¿Cómo echarias un vistazo al dataframe que acabamos de cargar?

```r
# Inspeccionamos el dataframe
head(breast.cancer)

```

Para poder encontrar algunos estadísticos importantes, primero debemos revisar si hay o no valores **NaN**.

```r

# Revisamos que no haya na
sapply(breast.cancer, function(x) sum(is.na(x)))

```

Ya que nos dimos cuenta que no existen valores **NaN**, vemos la estructura y el resumen del dataframe.
```r

# Vemos estructura en general (Identificar tipo de datos)
str(breast.cancer)

# Vemos summary en general
summary(breast.cancer)
``` 

Seleccionamos las variables numéricas continuas que nos interesan. En este caso, tenemos solo una variable categórica y las demás discretas.

```r
# Seleccionamos variables de interes
wanted.cols <- c('id','diagnosis','radius_mean','perimeter_mean','radius_worst','perimeter_worst')
breast.cancer.filter <- breast.cancer[,wanted.cols]

# Selecciona una variable numérica continua de breast.cancer.filter
interest.col <- breast.cancer.filter$radius_mean

```

#### La media
Utilizamos la función **mean()** para encontrar la media.

```r
# Encuentra la media
print(paste('Promedio :', mean(interest.col)))
```

#### La mediana
Utilizamos la función **median()** para encontrar la mediana.
```r
print(paste('Mediana :', median(interest.col)))
```

#### La moda
No existe una función que nos diga el valor de la moda. Podríamos definir una función para encontrarla o utilizar la función **table()**. Después, vemos cuál valor se repite más utilizando **max()**

```r

# Encuentra la moda
table.col <- table(interest.col)
print(table.col)

max.table.col <- max(table.col)
mode.col <- table.col[table.col == max.table.col]
print(paste('Moda:', names(mode.col)))
```
