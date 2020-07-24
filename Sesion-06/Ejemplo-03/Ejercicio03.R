# Distribución Bernoulli

# Una moneda justa (p=0.5)
ones <- 0
zeros <- 0

for (k in 1:100) {
  z = rbinom(1 ,1,prob = 0.5)
  if (z == 1) {
    ones = ones + 1
  } else{zeros = zeros + 1}
  print(z)
}

print(ones)
print(zeros)

df <- data.frame(total = c(zeros,ones), label = c(0,1))

df %>% ggplot(aes(y = total, x = label)) + 
  geom_bar(stat = 'identity', fill = 'blue', width = 0.8) +
  theme_minimal() + 
  ggtitle('Distribución Binomal con p = 0.5') + 
  ylim(0,100)+ scale_x_discrete()
