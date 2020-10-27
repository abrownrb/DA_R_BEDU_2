library(ggplot2)
breast.cancer <- read.csv('/Users/aliciabrown/Documents/BEDU/A2-Estadistica-Programacion-con-R-2020-master/Data/breast_cancer.csv')

temp <- breast.cancer$radius_mean


samp_mean_1 <- data.frame(
  temp = tapply(sample(temp, 50*1), rep(1:50, each = 1), FUN = mean),
  type = 'mean_of_1')

samp_mean_5 <- data.frame(
  temp = tapply(sample(temp, 50*5), rep(1:50, each = 5), FUN = mean),
  type = 'mean_of_5')

samp_mean_10 <- data.frame(
  temp = tapply(sample(temp, 50*10), rep(1:50, each = 10), FUN = mean),
  type = 'mean_of_10')

samp_mean <- rbind(samp_mean_1, samp_mean_5, samp_mean_10)

samp_mean$type <- factor(samp_mean$type, levels = c('mean_of_1','mean_of_5','mean_of_10'))

mean.temp <- mean(temp)

ggplot(samp_mean, aes(x = temp)) + 
  geom_histogram(bins = 40) +
  geom_vline(xintercept = mean.temp, color = 'red')+
  theme_minimal() +
  ggtitle('Distribución de la media con diferentes tamaños de muestra') +
  facet_grid('type')
