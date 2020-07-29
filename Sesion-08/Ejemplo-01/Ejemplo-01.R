head(cars)
scatter.smooth(x=cars$speed, y=cars$dist, main="Distancia y Velocidad")  
cor(cars$speed, cars$dist) 
modlin <- lm(dist ~ speed, data=cars)  
print(modlin)
summary(modlin)

plot(modlin)

Y=ax+b 

b <- modlin$coefficients[1]
a <- modlin$coefficients[2]

dist <- a*cars$speed+b
