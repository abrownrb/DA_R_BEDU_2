
matrix(1:6)
matrix(1:6,nrow=2)
matrix(1:6,nrow=2,byrow=T)
x = matrix(1:6,nrow=3)  # Creamos una matriz 3 x 2
length(x)               # Número de elementos de x
mode(x)                 # Tipo de datos de la matriz x
dim(x)                  # Dimensiones de la matriz x
dimnames(x)             # Nombre de las dimensiones de la matriz
rownames(x)             # Nombre de las filas de la matriz
colnames(x)             # Nombre de las columnas de la matriz
is.matrix(x)            # El objeto x, ¿es una matriz?
y<-c("blanco","negro")  # Creamos un vector de dos palabras
is.matrix(y)            # El objeto y, ¿es una matriz?
x[]                     # Se muestran todos los elementos de x
x[1,2]                  # Se muestra el elemento 1,2 de x
x[1,]                   # Se muestra la primera fila de x
x[,2]                   # Se muestra la segunda columna de x
cbind(x,c(0,0,0))      # Se añade una columna de ceros a x
rbind(x,c(0,0))        # Se añade una fila de ceros a x
datos = matrix(c(20,65,174,22,70,180,19,68,170),
               nrow=3,byrow=T) 
colnames(datos) = c("edad","peso","altura") #Se asignan nombres a las columnas
dimnames(datos)             # Nombre de las dimensiones de la matriz
rownames(datos)             # Nombre de las filas de la matriz
colnames(datos)  
datos[,"edad"]




familia = list(padre="juan",madre="maria",numero.hijos=3,
               nombre.hijos=c("luis","carlos","eva"),
               edades.hijos=c(7,5,3),ciudad="lugo")
familia$numero.hijos
familia$nombre.hijos
familia[4]
familia[[4]]
names(familia)

datos = matrix(c(20,65,174,22,70,180,19,68,170),nrow=3,byrow=T)
dimnames(datos)<-list(c("paco","pepe","kiko"),
                        c("edad","peso","altura"))
provincia = c("madrid","malaga","murcia")
datos2 = cbind(datos,provincia)
datos2
mode(datos)
mode(datos2)             # Los datos han sido convertidos a carácter

datos2 = data.frame(datos,provincia)
datos2

mean(datos2[,"edad"]) # Ahora el cálculo no da problemas
apply(datos2,2,mean)
apply(datos2[,1:3],2,mean)
datos2[,2]             # Acceso en modo matriz

datos2[,"edad"]        # Acceso en modo matriz
datos2$edad          # Acceso en modo lista
datos2[,4]



array(1:12,c(2,3,2))
x  <-array(c(45,46,65,55,170,167,48,49,68,56,169,165),c(2,3,2))
dimnames(x) = list(c("hombres","mujeres"),c("edad","peso","altura"),
                   c("villarriba","villabajo"))
dimnames(x)                   # Nombre de las dimensiones del array
x[,,"villarriba"]          # Datos para la población "Villarriba"
x["hombres",,]             # Datos de todos los hombres
x[,"edad",]                # Edades de las personas
apply(x,1,mean)     # Media de las variables edad, peso y altura
apply(x,2,mean)     # Media de la variable edad para toda la
apply(x,3,mean)     # Media de todas las variables para las villarriba  villabajo      poblaciones. En este ejemplo no tiene

dt <- cars
apply(dt,2,min) #matrices,dataframes. Por fila, columna o ambos
lapply(dt, min) #listas,vectores, dataframes. A todos
sapply(dt, min)
