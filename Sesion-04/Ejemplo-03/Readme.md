`Estadistica-Programacion-con-R` > [`Programacion con R`] > [`Sesion-04`] > [`Ejemplo-03`] 

### OBJETIVO
- Utilizar dplyr y pool para hacer queries a MySQL.

#### REQUISITOS
1. Contar con RStudio.
1. Usar la carpeta de trabajo `Sesion04/Ejemplo-03`

#### DESARROLLO

#### Utilizar dplyr y pool para hacer queries a MySQL

Hay cuatro paquetes que necesitas en esta actividad. Aquí están las instrucciones de instalación, para que tu código funcione sin problemas:

```{r}
# get DBI, dplyr and dbplyr from CRAN
install.packages("shiny")
install.packages("DBI")
install.packages("dplyr")
install.packages("dbplyr")

# get pool from GitHub, since it's not yet on CRAN
devtools::install_github("rstudio/pool")
```
#### Visión general

A medida que las aplicaciones crecen y se vuelven más complejas, un problema recurrente ha sido el de integrar una base de datos externa en una aplicación. Si bien esto ya es posible, hasta ahora depende principalmente de los autores de la aplicación averiguar el controlador de base de datos apropiado para R y cómo administrar las conexiones de la base de datos dentro de la propia aplicación. 

En particular, cubriremos:

- Cómo usar el paquete dplyr para leer datos de una base de datos externa;

Ten en cuenta que no siempre es ideal vincular a una base de datos externa, ya que puede fallar y ciertamente es más costoso desde el punto de vista computacional que tratar con datos locales. Además de trabajar con datos locales en memoria almacenados en marcos de datos, dplyr también trabaja con datos remotos en disco almacenados en bases de datos. Esto es particularmente útil en este escenario:

- Tus datos ya están en una base de datos. Tienes tantos datos que no caben todos en la memoria simultáneamente y necesitas usar algún motor de almacenamiento externo. (Si tus datos encajan en la memoria, no hay ninguna ventaja en ponerlos en una base de datos: solo será más lento y más frustrante).

#### La forma más fácil de conectarse a una base de datos externa desde tu aplicación es utilizarla dplyr. 

La motivación para admitir bases de datos en dplyr es que nunca extrae el subconjunto o agregado correcto de la base de datos la primera vez, y generalmente debe iterar entre R y SQL muchas veces antes de obtener el conjunto de datos perfecto. Cambiar entre lenguajes es un desafío cognitivo (especialmente porque R y SQL son muy similares), por lo que dplyr te permite escribir código R que se traduce automáticamente a SQL. El objetivo de dplyr no es reemplazar todas las funciones SQL con una función R: eso sería difícil y propenso a errores. En cambio, dplyr solo genera sentencias SELECT, el SQL que escribe con mayor frecuencia como analista.

Aquí te mostramos cómo leer las primeras cinco filas de una tabla desde una base de datos remota:

```{r}
library(pool)
library(dplyr)

my_db <- dbPool(
  RMySQL::MySQL(), 
  dbname = "shinydemo",
  host = "shiny-demo.csa7qlmguqrf.us-east-1.rds.amazonaws.com",
  username = "guest",
  password = "guest"
)

# get the first 5 rows:
my_db %>% tbl("City") %>% head(5)
## # Source:   lazy query [?? x 5]
## # Database: mysql 10.0.17-MariaDB [guest@shiny-demo.csa7qlmguqrf.us-east-1.rds.amazonaws.com:/shinydemo]
##      ID           Name CountryCode      District Population
##   <dbl>          <chr>       <chr>         <chr>      <dbl>
## 1     1          Kabul         AFG         Kabol    1780000
## 2     2       Qandahar         AFG      Qandahar     237500
## 3     3          Herat         AFG         Herat     186800
## 4     4 Mazar-e-Sharif         AFG         Balkh     127800
## 5     5      Amsterdam         NLD Noord-Holland     731200

```
Como puedes ver, es bastante sencillo.
