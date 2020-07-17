[`Estadística con R`](../Readme.md) > `Sesión 05: EDA` 

### OBJETIVO Planteamiento del proyecto

- Aplicar los conceptos adquiridos durante el módulo en un proyecto de estadística descriptiva con una webApp en Shiny

#### REQUISITOS 

1. Completar el work de la Sesión 05
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 

#### CONTEXTO

A finales del 2019 se desató una pandemia, el COVID-19. Queremos analizar la situaciones de los distintos paises en algunos días de interés. En el repositorio https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports, podemos encontrar información que nos ayudará a realizar nuestros datos.

#### DESARROLLO

- Valores nulos
- Medidas de centralidad
- Medidas de dispersión
- Medidas de distribución
- Tipos de datos
- Tabla de frecuencias

Deberás crear un Script para poder resolver esta parte del proyecto de clase.  Después, deberás seguir las instrucciones:

1. Consulta el repositorio antes mencioando y elige el día que deseas analizar. En particular, tomaremos 03-23-2020 como ejemplo. Siéntete libre de cambiar a la fecha que te interese. 
2. Da click a la fecha que te interese.
3. Cambia la opción de visualización a modo **raw**.
4. Utiliza la función `read.csv()` para leer este archivo. Por ejemplo, para la fecha de ejemplo, haríamos `covid <- read.csv('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/03-23-2020.csv')`.
5. Utiliza la función `str()` para ver la estructura de `covid`.
6. Para las columnas numéricas, encuentra la media utilizando la función `mean()`.
7. Utiliza la función `summary()` para ver algunos otros estadísticos interesantes.
8. Haz una tabla de frecuencia respecto a la columna de **país**. 
9. Guarda tu trabajo con el nombre de `Proyecto.R`.

- Matriz de correlación
- Crear visualizaciones con `ggplot2`

Para continuar con el análisis, deberás abrir el archivo que trabajaste la sesión pasada en la parte de **Proyecto**.
1. Abre tu archivo `Proyecto.R`.
2. Ejecuta todo lo que ya tenías en este archivo.
3. Crea una columna que se llame `DeathRate` donde veas la tasa de mortalidad (Num Muertes entre Num Casos).
4. Crea una columna que se llame `RecoveryRate` donde veas la tasa de recuperación (Num Recuperados entre Num Casos).
5. Crea una matriz de correlación con las variables numéricas de tu dataframe y responde: ¿cuáles son las variables con mayor correlación?
6. Para la tabla de frecuencia que realizaste la sesión pasada, crea una gráfica de barras para visualizar esta información.
7. Para las columnas numéricas que creaste `DeathRate` y `RecoveryRate`, ordena de mayor a menor y quedate con el top 20.  
8. Crea histogramas para visualizar estas dos columnas filtradas.
9. Guarda tu trabajo en el mismo script `Proyecto.R`.
