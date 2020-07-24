library(tidyr)
library(ggplot2)

breast.cancer <- read.csv('breast_cancer.csv')
nrow.df <- nrow(breast.cancer)
idx.sample <- sample(nrow(breast.cancer), size = as.integer(nrow.df*0.2), replace = T)
sample.df <- breast.cancer[idx.sample,]
str(sample.df)
sample.df <- sample.df[,-c(1,2,3)]
ggplot(gather(sample.df), aes(value)) + 
  geom_histogram(bins = 10) + 
  facet_wrap(~key, scales = 'free_x') +
  theme_minimal()