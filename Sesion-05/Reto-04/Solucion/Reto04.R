library(ggplot2)
library(reshape)
library(dplyr)

metro.df <- read.csv('/Users/aliciabrown/Documents/BEDU/A2-Estadistica-Programacion-con-R-2020-master/Data/Metro_Interstate_Traffic_Volume.csv')

metro.df.short <- metro.df[,c('temp','rain_1h','snow_1h','clouds_all','traffic_volume')]

cor.df <- reshape2::melt(cor(metro.df.short))

cor.df %>% ggplot(aes(Var1,Var2)) + 
  geom_tile(aes(fill = value)) + 
  ggtitle('Matriz de correlación')+
  scale_fill_gradient(low = 'white', high = 'black') + 
  theme(axis.text.x = element_text(angle = 90,hjust = 0))

# Las variables con mayor correlación son temp y traffic_volume, con correlación psotiva.
