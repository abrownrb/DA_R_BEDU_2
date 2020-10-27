library(tidyr)
library(ggplot2)

# Leer datos
breast.cancer <- read.csv('/Users/aliciabrown/Documents/BEDU/A2-Estadistica-Programacion-con-R-2020-master/Data/breast_cancer.csv')

# Contar el n?mero de renglones del dataframe
nrow.df <- nrow(breast.cancer)

#?subset

# Sacar muestra sin reemplazo de los ?ndices del 20% de todo el dataframe
idx.sample <- sample(nrow.df, size = as.integer(nrow.df*0.2))

# Traer las observaciones del dataframe de los ?ndices que salieron en la muestra
sample.df <- breast.cancer[idx.sample,]

# Vemos estructura del dataframe de los ?ndices que salieron en la muestra
str(sample.df)
sample.df <- sample.df[,-c(1,2,3)]

# Gr?ficamos histograma de variables num?ricas de la muestra
ggplot(gather(sample.df), aes(value)) + 
  geom_histogram(bins = 10) + 
  facet_wrap(~key, scales = 'free_x')
  theme_minimal()
