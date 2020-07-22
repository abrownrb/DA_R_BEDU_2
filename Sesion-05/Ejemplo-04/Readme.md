[`Estadística con R`](../Readme.md) > `Sesión 05: Fundamentos de R` 

## Lectura de Datos

### OBJETIVO

Al final de el `Ejemplo-03` serás capaz de:
- Leer archivos csv que están en local
- Leer archivos csv que están en una página URL

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash
5. Completar el `Ejemplo-03` 
6. Completar el `Reto-03`

### TEORÍA: LECTURA DE DATOS

#### Data Types

```r
# Buscamos tipos de columnas
dtypes <- sapply(breast.cancer, class)
print(dtypes)

# Seleccionamos las que tengan tipo factor
col.factor <- dtypes[dtypes == 'factor']
col.factor
col.factor <- names(col.factor)
col.factor

# Seleccionamos la columna factor
breast.cancer.factor <- breast.cancer[, c(col.factor)]
print(breast.cancer.factor)

```

#### Data Types

```r
# Análisis de Frecuencias
table(breast.cancer.factor)

# Table con proporciones
table(breast.cancer.factor)/length(breast.cancer.factor)
```
