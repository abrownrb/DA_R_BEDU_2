# Una moneda injusta (p = 0.8)
ones <- 0
zeros <- 0

for (k in 1:100) {
  z = rbinom(1 ,1,prob = 0.8)
  if (z == 1) {
    ones = ones + 1
  } else{zeros = zeros + 1}
  print(z)
}

print(ones)
print(zeros)

df <- data.frame(total = c(zeros,ones), resultado = c('sol','aguila'))

df %>% ggplot(aes(y = total, x = resultado)) + 
  geom_bar(stat = 'identity', fill = 'blue', width = 0.8) + 
  ggtitle('Distribución Binomal con p = 0.8') + 
  ylim(0,100)+ 
  scale_x_discrete()

# x-media/desv - N(0,1) 
# N(media-datos,var-datos)

dat <- data.frame(x = rnorm(10, 30, .2), y = runif(10, 3, 5))
scaled.dat <- scale(dat)
prueba_x <- (dat$x - mean(dat$x))/sd(dat$x)


