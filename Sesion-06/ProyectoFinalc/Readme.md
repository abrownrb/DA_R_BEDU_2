[`Estadística con R`](../Readme.md) > `Sesión 06: Fundamentos de Estadística`
	
## Avance al Proyecto Final

### OBJETIVO 

- Aplicar los conceptos adquiridos durante la sesión.

#### REQUISITOS 

1. Completar el work de la Sesión 05
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 

#### CONTEXTO

A finales del 2019 se desató una pandemia, el COVID-19. Queremos analizar la situaciones de los distintos paises en algunos días de interés. En el repositorio https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports, podemos encontrar información que nos ayudará a realizar nuestros datos.

#### DESARROLLO

**En este pequeño proyecto aplicarás los conceptos adquiridos durante la sesión:**

- Entender el comportamiento de una variable
- Conocer la función exponencial

Para continuar con el análisis, deberás abrir el archivo que trabajaste la sesión pasada en la parte de **Proyecto**.
1. Abre tu archivo `Proyecto.R`.
2. Lee el archivo para 5 días anteriores a tu día de interés (Por ejemplo, si el día de interés es 23-03-20, tenemos que leer los archivos del 18-03-20 al 23-03-20).
3. Filtra tus dataframes para México.
4. Utiliza la función `rbind()` para crear un dataframe que tenga toda la información de los días que tenemos para México.
5. Crea una visualización que tenga la siguiente visualización:
	- la fecha en el eje x
	- el número de muertes y número de confirmados en el eje y
6. ¿Qué tipo de función crees que se asimile a este comportamiento? Hint: Busca la función exponencial
7. Guarda tu trabajo en el mismo script `Proyecto.R`.
