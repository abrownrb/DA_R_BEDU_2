`Estadistica-Programacion-con-R` > [`Programacion con R`] > [`Sesion-03`] > [`Ejemplo-04`] 
### OBJETIVO EJEMPLO 4
- Aprenderás a utilizar la funcion list.files() sin argumentos
- Aprenderás a utilizar la funcion rbind()
- Aprenderás a utilizar la seq_along()
- Aprenderás a utilizar la vector()
- Aprenderás a utilizar la as.vector()

#### REQUISITOS EJEMPLO 4
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion03/Ejemplo-04`

#### DESARROLLO EJEMPLO 4

Conocer la funcion la funcion list.files()
```{r}
?list.files
```
Utilizar la función list.files() para crear un listado de todos los archivo en: [DataSet Contaminantes en Aire](../Dataset/rprog_data_specdata.zip) en la carpeta /specdata del data set del miniproyecto en zip extraído en tu carpeta de trabajo
```{r}
list.files("/specdata", full.names = TRUE)
```
Conocer la funcion rbind() 
```{r}
?rbind
```
Utilizar la función rbind para juntar filas de dos archivos, pueden ser 001.csv y 002.csv de
```{r}
readings = data.frame()
readings <- rbind(readings, read.csv("001.csv))
readings <- rbind(readings, read.csv("002.csv))
```
Conocer la funcion seq_along 
```{r}
?seg_along
```
Conocer un ejemplo de implementación de la función seq_along
```{r}
for(i in seq_along(id)) {
		
	}
```
Conocer la funcion vector 
```{r}
?vector
```
Utilizar la función vector
```{r}
new_vector <- vector(mode = "numeric")
```
Conocer la funcion as.vector 
```{r}
?as.vector
```
Utilizar la función as.vector 
```{r}
as.vector(new.vector)
`````
