[`Estadística con R`](../Readme.md) > `Sesión 05: Análisis Exploratorio de Datos - Análisis Multivariado`

## Matriz de Correlación

### OBJETIVO

Al final de el `Ejemplo-05` serás capaz de:
- Leer archivos de local
- Ver la estructura de tu dataframe
- Seleccionar las columnas numéricas
- Encontrar la correlación entre variables
- Visualizar la matriz de correlación

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

### Correlación y Matriz de correlación

Para manipular datos, utilizaremos el paquete **dplyr**. Después para visualizarlos, utilizaremos el paquete **ggplot2**. En el ejercicio, utilizaremos la función `melt` del paquete **reshape** para poder darle un formato distinto a nuestra matriz de correlación.

```r
# Cargamos paquetes
library(reshape)
library(dplyr)
library(ggplot2)
```

Después, leemos nuestro dataset. Recuerda que si tu working directory no es donde tienes el archivo con el dataset de **breast_cancer.csv**, entonces primero debes cambiar tu working directory o en todo caso, especificar el path completo a la función **read.csv**.

```r
#Leemos archivo de breast_cancer
breast.cancer <- read.csv('breast_cancer.csv')
```

Cómo ya sabemos, lo primero que queremos hacer es ver la estructura de nuestro dataframe. En esta ocasión, como nuestra finalidad es obtener la correlación entre variables, necesitamos utilizar la función **str** para ver las variables que son numéricas (y a estas hace sentido encontrar la correlación). Después de ver la estructura, somos capaces de elegir (o no) las variables que nos interesan.

```r
# Vemos la estructura
str(breast.cancer)

# Quitamos las columnas no numéricas
breast.cancer.num <- breast.cancer[,-c(1,2,3)]
```

Utilizamos la función **cor** para calcular la matriz de correlación entre todas las varibles de nuestro dataframe. Después, utilizamos **melt** para darle un formato que nos permita graficar la matriz de correlación a través de un HeatMap. 

```r
# Calculamos la matriz de correlación y le damos formato para graficar
cor.df <- melt(cor(breast.cancer.num))
```

Para finalizar el Ejemplo-01, vamos a crear un HeatMap con el paquete de visualización **ggplot2**. Algunas de las cosas que personalizamos son el título, los colores del gradiente, y rotamos los nombres en el eje x. 

```r
# Creamos gráfico para visualizar matriz de correlación
cor.df %>% ggplot(aes(X1,X2)) + 
  geom_tile(aes(fill = value)) + 
  ggtitle('Matriz de correlación')+
  scale_fill_gradient(low = 'white', high = 'red') + 
  theme(axis.text.x = element_text(angle = 90,hjust = 0))
```
