airquality
x <- airquality[, -1] # x is a regression design matrix
y <- airquality[,  1] # y is the corresponding response


ok <- complete.cases(x, y)
sum(!ok) 
x <- x[ok,]
y <- y[ok]

nrow(airquality[complete.cases(airquality),])

getwd()
setwd("/Users/aliciabrown/Documents")
setwd("~/Documents/BEDU/A2-Estadistica-Programacion-con-R-2020-master/Sesion-03")
list.files()
list.files(full.names = TRUE)

rm(list=ls())
rm(x)

?append
x <- c(1, 2, 3)
y <- c('a','b','c')
append(x,y)
append(x, y, after = 2)

x <- -5:12
x
x %% 2 #-- is periodic
x %/% 5

