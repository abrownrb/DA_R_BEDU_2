
# Para ver la ruta de dónde estamos trabajando
getwd()

# Para bajar dos niveles del directorio de trabajo 
# utilizamos ../.. y para accesar a una nueva carpeta ponemos su nombre, Data
setwd('/Users/aliciabrown/Documents/BEDU/A2-Estadistica-Programacion-con-R-2020-master/Data/')

# Vemos la ruta cambiada
getwd()

# Leemos dataset

breast.cancer <- read.csv('wdbc.data', header = FALSE)

# Cambiamos el nombre de las columnas

names(breast.cancer) <- c('id','diagnosis','radius_mean',
                          'texture_mean','perimeter_mean','area_mean',
                          'smoothness_mean','compactenss_mean',
                          'concavity_mean','concave_points_mean',
                          'symmetry_mean','fractal_dimension_mean',
                          'radius_se','texture_se','perimeter_se',
                          'area_se','smoothnsess_se','compactness_se',
                          'concavity_se','concave_points_se','symmetry_se',
                          'fractal_dimension_se','radius_worst',
                          'texture_worst','perimeter_worst','area_worst',
                          'smoothnes_worst','compactness_worst',
                          'concavity_worst','concave_points_worst',
                          'symmetry_worst','fractal_dimension_worst')

# Inspeccionamos el dataframe
head(breast.cancer)

# Paso 1. Revisamos que no haya na
sapply(breast.cancer, function(x) sum(is.na(x)))

# Paso 2. Vemos estructura en general (Identificar tipo de datos)
str(breast.cancer)

# Paso 3. Vemos summary en general
summary(breast.cancer)

# Paso 4. Seleccionamos variables de interes
wanted.cols <- c('id','diagnosis','radius_mean','perimeter_mean','radius_worst','perimeter_worst')
breast.cancer.filter <- breast.cancer[,wanted.cols]

# Paso 5. Selecciona una variable numérica continua de breast.cancer.filter
interest.col <- breast.cancer.filter$radius_mean

# Paso 6. Encuentra la media y mediana
print(paste('Promedio :', mean(interest.col)))
print(paste('Mediana :', median(interest.col)))

# Pasto 7. Encuentra la moda
table.col <- table(interest.col)
print(table.col)

max.table.col <- max(table.col)
mode.col <- table.col[table.col == max.table.col]
print(paste('Moda:', names(mode.col)))



