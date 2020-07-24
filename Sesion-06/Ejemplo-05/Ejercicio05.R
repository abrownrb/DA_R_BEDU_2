
# Distribución Uniforme

x <- runif(100000)

data.frame(valores = x) %>% 
  ggplot(aes(x = valores)) + 
  geom_histogram(bins = 100, 
                 fill = 'blue',
                 alpha= 0.6, 
                 color = 'black') + 
  scale_x_continuous(breaks = seq(0,1,0.1), lim = c(0,1)) +
  ggtitle('Simulación de 100,000 valores con dist Uniforme')



# Distribucion Normal

# Leemos el archivo csv con alturas de 100 personas en UK 
height <- read.csv("height.csv")
mean.height <- mean(height$height)
std.height <- sd(height$height)

height %>% 
  ggplot(aes(x=height)) + 
  geom_histogram(aes(y = ..density..),
                 bins = 100, 
                 fill = 'blue',
                 alpha= 0.6, 
                 color = 'black')  +
  geom_density(aes(y=..density..)) +
  geom_vline(xintercept = mean.height, color = 'red', size = 1.5)+
  ggtitle('Histograma de alturas de hombres de UK') +
  theme_minimal()

# Simula 500 puntos con distribución Normal(mean.height, std.height)
new.height <- data.frame(height = rnorm(n = 500, mean = mean.height,sd = std.height))

new.height %>% 
  ggplot(aes(x=height)) + 
  geom_histogram(aes(y = ..density..),
                 bins = 10, 
                 fill = 'blue',
                 alpha= 0.6, 
                 color = 'black')  +
  geom_density(aes(y=..density..)) +
  geom_vline(xintercept = mean.height, color = 'red', size = 1.5)+
  ggtitle('Histograma de Simulaciones de alturas de hombres de UK') +
  theme_minimal()

# Encuentra prob acumulada en x = 1.70 de distribución Normal(mean.height, std.height)
pnorm(q = 176.8, mean= mean.height, sd = std.height)
