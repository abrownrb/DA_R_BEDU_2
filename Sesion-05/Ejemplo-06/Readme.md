[`Estadística con R`](../Readme.md) > `Sesión 05: Análisis Exploratorio de Datos - Análisis Multivariado`

## Histogramas y Densidades

### OBJETIVO

Al final de el `Ejemplo-06` serás capaz de:
- Identificar las columnas que son tipo factor
- Ordenar las columnas tipo factor

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash
5. Completar el `Ejemplo-05`
6. Completar el `Reto-04`  

Cómo es costumbre, primero debemos cargar los paquetes que utilizaremos y también debemos leer el archivo que utilizaremos. Una vez más, revisa que tu working directory sea el correcto y de lo contario, cambia el working directory o completa el path del archivo correctamente.

```r
# Cargamos paquete de visualizacion
library(ggplot2)

# Leemos dataframe
breast.cancer <- read.csv('breast_cancer.csv')
````

El paso siguiente es ver la estructura de nuestro dataframe (otra vez). En este caso, no utilizaremos todas las columnas numéricas, si no las columnas `'diagnosis','radius_mean','texture_mean','perimeter_mean','area_mean'`.

```r
# Vemos la estructura del dataframe
str(breast.cancer)

# Seleccionamos columnas de interes
breast.cancer.short <- breast.cancer[,c('diagnosis','radius_mean','texture_mean','perimeter_mean','area_mean')]
```

En el Ejemplo-02, nuestro objetivo es ver la distribución de algunas variables, en particular **radius_mean, diagnosis** y **texture_mean**. Para esto, utilizaremos un histograma. En el histograma, vamos a agregar información adicional como la media de la variable y a personalizar a través de un tema, labs, etc.

```r
# Obtenemos la media de la variable radius_mean
media.radius <- mean(breast.cancer.short$radius_mean)

# graficamos el histograma y densidad de la variable radius_mean
ggplot(breast.cancer.short, aes(radius_mean)) + 
  geom_histogram(colour = 'black', 
                 fill = 'blue',
                 alpha = 0.6,
                 binwidth = 0.3) + 
  geom_density(aes(y = 0.3*..count..))+
  geom_vline(xintercept=media.radius, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Radius Mean') + 
  labs(x = 'Radius Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  
```

Algunas veces, necesitamos incluir información adicional de otra variable. En este caso, tenemos una variable llamada diagnosis, que nos dice si el tumor era benigno o maligno. Utilizamos **facet_rap** para poder crear un histograma por cada tipo de diagnosis. Si revisas el la diferencia entre el código anterior y este, solamente difiere en la capa donde incorporamos facet_wrap.

```r
# graficamos histograma para radius mean diferenciando por el diagnóstico final
ggplot(breast.cancer.short, aes(radius_mean)) + 
  geom_histogram(bins = 23, 
                 colour = 'black', 
                 fill = 'blue',
                 alpha = 0.6) + 
  geom_vline(xintercept=media.radius, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Radius Mean') + 
  labs(x = 'Radius Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  +
  facet_wrap('diagnosis')
```

Crearemos un histograma pero ahora con la variable **texture_mean**. En general, la estructura es muy parecida, pero intenta ver los detalles que son distintos entre una gráfica y otra. Además en esta ocasión no agregamos la capa de densidad. 

```r
# Encontramos media de la variable texture_mean
media.texture <- mean(breast.cancer.short$texture_mean)

# Creamos un histograma con esta variable
ggplot(breast.cancer.short, aes(texture_mean)) + 
  geom_histogram(bins = 23, 
                 colour = 'black', 
                 fill = 'green',
                 alpha = 0.6) + 
  geom_vline(xintercept=media.texture, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Texture Mean') + 
  labs(x = 'Texture Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  
```

Para el último histograma del Ejemplo-02, hicimos algo muy parecido al **facet_wrap**. Pero en esta ocasión, quisimos acomodar los dos distintos histogramas de otra forma, por esto, utilizamos **facet_grid**.

```r
# Creamos histogramas pero diferenciando por tipo de diagnóstico
ggplot(breast.cancer.short, aes(texture_mean)) + 
  geom_histogram(bins = 23, 
                 colour = 'black', 
                 fill = 'green',
                 alpha = 0.6) + 
  geom_vline(xintercept=media.texture, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Texture Mean') + 
  labs(x = 'Texture Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  +
  facet_grid('diagnosis')
```
