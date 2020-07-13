airquality
x <- airquality[, -1] # x is a regression design matrix
y <- airquality[,  1] # y is the corresponding response

ok <- complete.cases(x, y)
sum(!ok) 
x <- x[ok,]
y <- y[ok]

airquality[complete.cases(airquality),] %>% nrow()
