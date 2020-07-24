[`Estadística con R`](../Readme.md) > `Sesión 06: Fundamentos de Estadística` 

### OBJETIVO

Al final de el `Ejemplo-03` serás capaz de:
- Utilizar rbinom para simular el resultado de un experimento que sigue la distribución de la v.a. Bernoulli
- Utilizar un for para sumar los resultados
- Visualizar la función de distribución de la v.a. Bernoulli

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

#### Un volado justo

Al hablar de experimentos aleatorios, el ejemplo más utilizado es el de un volado justo. Un volado justo consiste en lanzar una moneda al aire y ver el resultado, el cuál tiene probabilidad de 0.5 de ser Águila y probabilidad 0.5 de ser Sol. Un ejemplo de un volado no justo sería aquel en dónde una de las caras de las monedas tenga mayor probabilidad de aparecer. 

Lo que haremos, es ver el resultado de lanzar 100 monedas justas al aire. Recuerda que la variable aleatoria Bernoulli(p) es igual a una variable aleatoria Binomial(n = 1, p). Es por esto que utilizaremos la función rbinom (random binom) para ejecutar este experimento. Crearemos un for para repetir este experimento 100 veces, e iremos guardando los resultados en las variables ones (Águilas) y zeros (Soles).

```r
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
```

#### Resultados

Veamos los resultados de lanzar una moneda al aire 100 veces. 
- ¿Cuáles son tus apuestas? 
- ¿Cuántas aguilas y cuántos soles crees que salieron?

```r
print(ones)
print(zeros)
``` 

#### Distribución del experimento

Lo último que queremos ver es si, al fijar p =0.5 en el experimento, obtuvimos la mitad de cada cara. Es decir, queremos ver la distribución real del experimento para ver si en efecto respeto esta probabilidad.

```r
df <- data.frame(total = c(zeros,ones), label = c(0,1))

df %>% ggplot(aes(y = total, x = label)) + 
  geom_bar(stat = 'identity', fill = 'blue', width = 0.8) +
  theme_minimal() + 
  ggtitle('Distribución Binomal con p = 0.5') + 
  ylim(0,100)+ scale_x_discrete()

```

¿Qué opinas? ¿Es lo que esperabas?
