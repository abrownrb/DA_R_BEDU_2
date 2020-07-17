
# Para ver la ruta de dónde estamos trabajando
getwd()

# Para bajar dos niveles del directorio de trabajo 
# utilizamos ../.. y para accesar a una nueva carpeta ponemos su nombre, Data
setwd('../../Data')

# Vemos la ruta cambiada
getwd()

#Leemos dataset
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

# Eliminamos una columna
breast.cancer$fractal_dimension_mean <- NULL

# Seleccionamos columna de interés
interest.col <- breast.cancer.filter$radius_mean

# Paso 1. Encontrar varianza
var.radius <- var(interest.col)
round(var.radius,2)
print(paste('Varianza:', round(var.radius,2)))

# Paso 2. Encontrar desviación estándar
sd.radius <- sd(interest.col)
print(paste('Desviación estándar:', round(sd.radius,3)))

# Paso 3. Verificamos relación entre varianza y desviación estándar
sd.radius**2 == var.radius

# Paso 4. Rango
max(interest.col)
min(interest.col)

max(interest.col) - min(interest.col)
