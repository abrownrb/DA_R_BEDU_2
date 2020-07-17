[`Estadística con R`](../Readme.md) > `Sesión 05: EDA` 

## Data Frames

### OBJETIVO

Al final de el `Ejemplo-02` serás capaz de:
- Eliminar una columna
- Encontrar la varianza
- Encontrar la desviación estándar
- Encontrar el rango

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash
5. Completar el `Ejemplo-01` 

#### Eliminar una columna 

En algunas ocasiones necesitaremos eliminar alguna columna o columnas de un dataframe. Una opción para hacerlo es:

```r
# Eliminamos una columna
breast.cancer$fractal_dimension_mean <- NULL
```

#### La varianza

```r
var.radius <- var(interest.col)
round(var.radius,2)
print(paste('Varianza:', round(var.radius,2)))
```

#### La desviación estándar

```r
sd.radius <- sd(interest.col)
print(paste('Desviación estándar:', round(sd.radius,3)))
```

#### Relación entre varianza y desviación estándar

```r
# Paso 3. Verificamos relación entre varianza y desviación estándar
sd.radius**2 == var.radius
```

#### Rango

```r
max(interest.col)
min(interest.col)

max(interest.col) - min(interest.col)

```



