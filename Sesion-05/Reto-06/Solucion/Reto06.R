library(ggplot2)

traffic.df <- read.csv('Metro_Interstate_Traffic_Volume.csv')
names(traffic.df)
traffic.df.short <- traffic.df[,c('temp','traffic_volume', 'weather_main')]

ggplot(traffic.df.short, 
       aes(x = temp, y = traffic_volume, colour = weather_main)) + 
  geom_point() + 
  ggtitle('ScatterPlot for Traffic Volume and Weather Main') + 
  labs(x = 'Temp', y = 'Traffic Volume')+
  xlim(200,320)+
  theme_minimal()  

ggplot(traffic.df.short, aes(x = temp, y = traffic_volume)) + 
  geom_hex() +
  ggtitle('Binning Hexagonal for Traffic Volume and Weather Main')+
  theme_minimal() + 
  xlim(200,320)+
  scale_fill_gradient(low = 'white', high = 'red') 
