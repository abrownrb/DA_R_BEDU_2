
# Para ver la ruta de dónde estamos trabajando
getwd()

# Para bajar dos niveles del directorio de trabajo 
# utilizamos ../.. y para accesar a una nueva carpeta ponemos su nombre, Data
setwd('../../Data')

# Vemos la ruta cambiada
getwd()

# Leemos dataframe
breast.cancer <- read.csv('C:/Users/AnaLuisaOrtegaRenter/Downloads/wdbc.data', header = FALSE)

# Cambiamos nombre de las columnas
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

# Paso 1. Seleccionamos solo columnas de interés
breast.cancer.filter <- breast.cancer[,c('id','diagnosis','radius_mean')]

# Paso 2. Seleccionamos columna de radius mean
interest.col <- breast.cancer.filter$radius_mean

# Paso 3. Encontramos deciles
quant.col <- quantile(interest.col, c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1))

# Paso 4. Usamos cut para ver en que decil esta cada observacion
breast.cancer.filter$qcuts <- cut(interest.col, breaks = quant.col)

# Paso 5. Vemos el restultado de nuestro cut
table(breast.cancer.filter$qcuts)

# Paso 6. Vemos nuestr dataframe con una columna nueva
head(breast.cancer.filter,10)

# Paso 7. Summary del dataframe
summary(breast.cancer.filter)
