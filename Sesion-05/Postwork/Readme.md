[`Estadística con R`](../../Readme.md) > [`Sesión 05`](../Readme.md) > `Postwork`  

## Postwork

### OBJETIVOS

- El objetivo del proyecto es crear un modelo, ya sea descriptivo o predictivo, que demuestre que estamos aprendiendo los dos pilares fundamentales del módulo: R y estadística. En particular, el objetivo de este postwork es hacer un primer análisis descriptivo de los datos que usarás para el proyecto. Además transformar, agregar o eliminar datos para generar información valiosa.  
- En este postwork realizarás las actividades de la parte inicial del proyecto, presentadas a continuación.

#### REQUISITOS

1. Cuenta de GitHub  
2. Git Bash  
3. R versión 3.6.2 o mayor                                
4. R Studio versión 1.2.5033 o mayor   
5. Postwork de la Sesión 05 terminado  
6. Prework y Work de la Sesión 05 terminado  

#### DESARROLLO

En el prework y work de esta sesión aprendiste a transformar tu dataframe para poder darle valor a tus datos. ¡Es hora de aplicar esto a los datos del proyecto!  

A finales del 2019 se desató una pandemia, el COVID-19. Queremos analizar la situaciones de los distintos paises en algunos días de interés. En el repositorio https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports, podemos encontrar información que nos ayudará a realizar nuestros datos.

Para empezar, puedes utilizar las funciones **str()** y **summary()** para entender las columnas que tienes y en qué valores están.    

Después, utilizando la librería dplyr:  
* Cambia los nombres de las columnas que no sean claros  
* Selecciona los valores únicos de las columnas  
* Agrega columnas que tengan transformaciones inteligentes  
* Elimina las columnas que no vayas a utilizar  
* Encuentra cuál es el mínimo, máximo, media y mediana de tu dataframe, de preferencia agrupando por alguna columna categórica que tengas. Si no, puedes encontrar esta información para tu dataframe en general.  

