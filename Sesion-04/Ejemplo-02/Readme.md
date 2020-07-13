`Estadistica-Programacion-con-R` > [`Programacion con R`] > [`Sesion-04`] > [`Ejemplo-02`] 

### OBJETIVO
- Integrar Rstudio con BDs mediante librerías, drivers (odbc drivers).

#### REQUISITOS
1. Contar con RStudio.
1. Usar la carpeta de trabajo `Sesion04/Ejemplo-02`

#### DESARROLLO

#### MySQL

Para conectarse a una base de datos MySQL:

- Usar el odbc package en R. > devtools::install_github("r-dbi/odbc")
- Usar el paquete > install.packages("RMySQL")

#### Usando el odbc package.

El odbc package, proporciona soporte DBI  y una conexión ODBC.

### Driver (opciones)

- MySQL : el sitio web oficial de MySQL proporciona un controlador ODBC descargable para MySQL.

- MariaDB : MariaDB es una base de datos relacional de código abierto creada por los desarrolladores originales de MySQL. MariaDB proporciona un conector ODBC que se puede usar como reemplazo directo para un conector ODBC MySQL.

- Controladores RStudio Professional : los usuarios de RStudio Server Pro, RStudio Connect o Shiny Server Pro pueden descargar y usar los controladores RStudio Professional sin costo adicional. Estos controladores incluyen un conector ODBC para bases de datos MySQL. RStudio ofrece controladores ODBC profesionales basados en estándares, compatibles. Utiliza los Controladores RStudio Professional cuando ejecutes R o Shiny con sus sistemas de producción. Consulta los Controladores RStudio Professional para obtener más información

#### CONFIGURACIONES DE CONEXIÓN

Hay 5 configuraciones necesarias para hacer una conexión:

Driver : consulta la sección previa de controladores para obtener información sobre la configuración
Server : una ruta de red al servidor de la base de datos
UID : nombre de usuario utilizado para acceder al servidor MySQL
PWD : la contraseña correspondiente al UID proporcionado
Port : debe establecerse en 3306

Instalamos los paquetes necesarios:

```{r}
# get packages
devtools::install_github("r-dbi/odbc")
install.packages("RMySQL")
install.packages("DBI")
```

Establecemos la conexión:

```{r}
MyDataBase = dbConnect(MySQL(), user='User_DataBase', password='Password_DB', dbname='Name_DataBase', host='Your hosting')
```
Conectate con los siguientes parámetros a la BD demo de Shiny for RStudio, sin embargo no la utilices para prácticar ya que después de muchas conexiónes podrían bloquearte el acceso permanentemente:

```{r}
    MyDataBase <- dbConnect(
      drv = RMySQL::MySQL(),
      dbname = "shinydemo",
      host = "shiny-demo.csa7qlmguqrf.us-east-1.rds.amazonaws.com",
      username = "guest",
      password = "guest")
```
Listamos las tablas de nuestra base de datos:

```{r}
dbListTables(MyDataBase)
```

Listamos las columnas de una tabla:

```{r}
dbListFields(MyDataBase, 'Table1')
```

Ahora, tenemos conexión con la base de datos y utilizando la función "dbGetQuery", podemos obtener los datos que necesitamos:

```{r}
DataDB = dbGetQuery(MyDataBase, "select * from Table1")
head(DataDB)
```

#### Usando el RMariaDB package

RMariaDB es una interfaz de base de datos y un controlador MariaDB para R. Esta versión tiene como objetivo el pleno cumplimiento de la especificación DBI, como reemplazo del RMySQL package anterior. Para obtener más información, visita RMariaDB el sitio oficial en: rmariadb.r-dbi.org

Para instalar desde CRAN:

```{r}
install.packages("RMariaDB")
The development version from github:
```
Para instalar la versión de desarrollo:

```{r}
# install.packages("remotes")
remotes::install_github("r-dbi/DBI")
remotes::install_github("r-dbi/RMariaDB")
```

Para conectar:
```{r}
library(DBI)
# Connect to my-db as defined in ~/.my.cnf
con <- dbConnect(RMariaDB::MariaDB(), group = "my-db")
```

