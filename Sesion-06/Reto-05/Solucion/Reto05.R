x = seq(1,10,by=1)

dbinom(x = x, size = length(x), prob = 0.5)

df.binom <- data.frame(prob = dbinom(x = x , 
                                     size = length(x), 
                                     prob = 0.5),
                       label = x)
df.binom %>% ggplot(aes(x  = label, y=prob)) + 
  geom_bar(stat = 'identity', fill = 'blue', alpha = 0.6, color = 'black')+
  theme_minimal() + 
  ggtitle('Distribución Binomial \n n = 10 y p = 0.5') 

pbinom(q = 6, size = length(x), prob = 0.5)

