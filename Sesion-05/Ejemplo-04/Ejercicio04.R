# Para ver la ruta de dónde estamos trabajando
getwd()

# Para bajar dos niveles del directorio de trabajo 
# utilizamos ../.. y para accesar a una nueva carpeta ponemos su nombre, Data
setwd('../../Data')

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

# Paso 1. Buscamos tipos de columnas
dtypes <- sapply(breast.cancer, class)
print(dtypes)

# Paso 2. Seleccionamos las que tengan tipo factor
col.factor <- dtypes[dtypes == 'factor']
col.factor
col.factor <- names(col.factor)
col.factor

# Paso 3. Seleccionamos la columna factor
breast.cancer.factor <- breast.cancer[, c(col.factor)]
print(breast.cancer.factor)

# Paso 4. Análisis de Frecuencias
table(breast.cancer.factor)

# Paso 5. Table con proporciones
table(breast.cancer.factor)/length(breast.cancer.factor)


