`Estadistica-Programacion-con-R` > [`Programacion con R`] > [`Sesion-03`] > [`Ejemplo-04`] 

### OBJETIVO
- Utilizar dplyr y DBI para hacer queries a MySQL.

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion04/Ejemplo-04`

#### DESARROLLO

#### Utilizar dplyr y DBI para hacer queries a MySQL

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

- Cómo usar el paquete DBI para conectar a una base de datos externa;

Ten en cuenta que no siempre es ideal vincular a una base de datos externa, ya que puede romperse y ciertamente es más costoso desde el punto de vista computacional que tratar con datos locales. Además de trabajar con datos locales en memoria almacenados en marcos de datos, dplyr también trabaja con datos remotos en disco almacenados en bases de datos. Esto es particularmente útil en este escenario:

- Tus datos ya están en una base de datos. Tienes tantos datos que no caben todos en la memoria simultáneamente y necesitas usar algún motor de almacenamiento externo. (Si tus datos encajan en la memoria, no hay ninguna ventaja en ponerlos en una base de datos: solo será más lento y más frustrante).

#### Paquete DBI

Si necesitas hacer algo más elaborado que SELECT consultas bastante simples , dplyr no podrá ayudarte. En ese caso, te recomendamos que utilices DBI para conectarte a su base de datos si hay un controlador adecuado. Aquí hay un dato sobre DBI de su página de Git Hub :

El paquete DBI define una interfaz común entre R y los sistemas de gestión de bases de datos (DBMS). La interfaz define un pequeño conjunto de clases y métodos similares en espíritu al DBI de Perl, JDBC de Java, DB-API de Python y ODBC de Microsoft. Define un conjunto de clases y métodos define qué operaciones son posibles y cómo se realizan:

- conectar / desconectar al DBMS
- crear y ejecutar declaraciones en el DBMS
- extraer resultados / resultados de declaraciones
- manejo de errores / excepciones
- información (metadatos) de los objetos de la base de datos
- gestión de transacciones (opcional)

Aquí hay un ejemplo de uso básico que destaca algunas de las capacidades DBI más comunes: establecemos una conexión a una base de datos, la consultamos, buscamos el conjunto de resultados, cerramos el conjunto de resultados y nos desconectamos cuando terminamos:

```{r}
library(DBI)
conn <- dbConnect(
    drv = RMySQL::MySQL(),
    dbname = "shinydemo",
    host = "shiny-demo.csa7qlmguqrf.us-east-1.rds.amazonaws.com",
    username = "guest",
    password = "guest")
rs <- dbSendQuery(conn, "SELECT * FROM City LIMIT 5;")
dbFetch(rs)
##   ID           Name CountryCode      District Population
## 1  1          Kabul         AFG         Kabol    1780000
## 2  2       Qandahar         AFG      Qandahar     237500
## 3  3          Herat         AFG         Herat     186800
## 4  4 Mazar-e-Sharif         AFG         Balkh     127800
## 5  5      Amsterdam         NLD Noord-Holland     731200
dbClearResult(rs)
dbDisconnect(conn)
```
