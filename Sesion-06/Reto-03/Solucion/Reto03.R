library(ggplot2)

traffic.df <- read.csv('/Users/aliciabrown/Documents/BEDU/A2-Estadistica-Programacion-con-R-2020-master/Data/Metro_Interstate_Traffic_Volume.csv')

temp <- traffic.df$temp


samp_mean_1 <- data.frame(
  temp = tapply(sample(temp, 100*1), rep(1:100, each = 1), FUN = mean),
  type = 'mean_of_1')

samp_mean_20 <- data.frame(
  temp = tapply(sample(temp, 100*20), rep(1:100, each = 20), FUN = mean),
  type = 'mean_of_20')

samp_mean_50 <- data.frame(
  temp = tapply(sample(temp, 100*50), rep(1:100, each = 50), FUN = mean),
  type = 'mean_of_50')

samp_mean <- rbind(samp_mean_1, samp_mean_20, samp_mean_50)

samp_mean$type <- factor(samp_mean$type, levels = c('mean_of_1','mean_of_20','mean_of_50'))

mean.temp <- mean(temp)

ggplot(samp_mean, aes(x = temp)) + 
  geom_histogram(bins = 40) +
  geom_vline(xintercept = mean.temp, color = 'red')+
  theme_minimal() +
  ggtitle('Distribución de la media con diferentes tamaños de muestra') +
  facet_grid('type')

