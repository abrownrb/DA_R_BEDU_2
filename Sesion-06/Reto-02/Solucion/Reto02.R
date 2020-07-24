library(ggplot2)
library(tidyr)
traffic.df <- read.csv('/Users/aliciabrown/Documents/BEDU/A2-Estadistica-Programacion-con-R-2020-master/Data/Metro_Interstate_Traffic_Volume.csv')
nrow.df <- nrow(traffic.df)
idx.sample <- sample(nrow(traffic.df), size = as.integer(nrow.df*0.3))
sample.df <- traffic.df[idx.sample,]

str(sample.df)

sample.df <- sample.df[,c(2,3,4,5,9)]

ggplot(gather(sample.df), aes(value)) + 
  geom_histogram(bins = 10) + 
  facet_wrap(~key, scales = 'free_x') +
  theme_minimal()

traffic.df <- traffic.df[,c(2,3,4,5,9)]

ggplot(gather(traffic.df), aes(value)) + 
  geom_histogram(bins = 10) + 
  facet_wrap(~key, scales = 'free_x') +
  theme_minimal()
