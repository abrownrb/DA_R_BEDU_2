library(ggplot2)

traffic.df <- read.csv('Metro_Interstate_Traffic_Volume.csv')
str(traffic.df)
levels(traffic.df$weather_main)

ggplot(traffic.df, aes(traffic_volume)) + 
  geom_histogram(bins = 23, 
                 colour = 'black', 
                 fill = 'yellow',
                 alpha = 0.6) + 
  ggtitle('Histogram for Traffic Volume') + 
  labs(x = 'Traffic Volume', y = 'Freq')+
  theme_minimal()  +
  facet_wrap('weather_main')
