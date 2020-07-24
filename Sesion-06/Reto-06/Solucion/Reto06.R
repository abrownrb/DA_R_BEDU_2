# Estandariza la columna height del dataframe height
height <- read.csv("height.csv")

mean.height <- mean(height$height)
std.height <- sd(height$height)

height$z <- (height$height - mean.height)/std.height

print(mean(height$z))
print(sd(height$z))

height %>% 
  ggplot(aes(x=z)) + 
  geom_histogram(aes(y = ..density..),
                 bins = 100, 
                 fill = 'blue',
                 alpha= 0.6, 
                 color = 'black')  +
  geom_density(aes(y=..density..)) +
  geom_vline(xintercept = mean(height$z), color = 'red', size = 1.5)+
  ggtitle('Histograma de distribución estandarizada') +
  theme_minimal()
