# Cargamos librerias
library(ggplot2)
library(dplyr)

# Leemos datos
breast.cancer <- read.csv('breast_cancer.csv')

# Vemos la estructura de nuestro dataframe
str(breast.cancer)

# Seleccionamos columnas de interés
breast.cancer.short <- breast.cancer[,c('diagnosis','radius_mean','texture_mean','perimeter_mean','area_mean')]

# Creamos un scatterplot con variables radius_mean y texture_mean
breast.cancer.short %>% 
  ggplot( aes(x = radius_mean, y = texture_mean, colour=diagnosis)) + 
  geom_point() +
  ggtitle('Relacion Radius y Texture')+
  theme_minimal() 

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

