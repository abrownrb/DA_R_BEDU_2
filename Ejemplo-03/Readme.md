[`Estadística con R`](../Readme.md) > `Sesión 05: EDA` 

## Funciones útiles para DataFrames

### OBJETIVO

Al final de el `Ejemplo-03` serás capaz de:
- Encontrar los deciles de una variable
- Asignar en que decil está cada valor
- Agregar una nueva columna

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash
5. Completar el `Ejemplo-02` 
6. Completar el `Reto-02`

#### Deciles

```r

# Seleccionamos solo columnas de interés
breast.cancer.filter <- breast.cancer[,c('id','diagnosis','radius_mean')]

# Seleccionamos columna de radius mean
interest.col <- breast.cancer.filter$radius_mean

# Encontramos deciles
quant.col <- quantile(interest.col, c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1))
```

#### Cut

```r
# Usamos cut para ver en que decil esta cada observacion
breast.cancer.filter$qcuts <- cut(interest.col, breaks = quant.col)

# Vemos el restultado de nuestro cut
table(breast.cancer.filter$qcuts)

```

#### Vistazo y resumen a nueva tabla

```r
# Vemos nuestro dataframe con una columna nueva
head(breast.cancer.filter,10)

# Paso 7. Summary del dataframe
summary(breast.cancer.filter)

```
