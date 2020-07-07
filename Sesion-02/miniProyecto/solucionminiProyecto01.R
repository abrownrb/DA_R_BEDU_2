a = c(3,7,NA, 9)
b = c(2,NA,9,3)
f = c(5,2,5,6)
d = c(NA,3,4,NA)

mydf = data.frame(a=a,b=b,f=f,d=d);mydf

mydf[,5] <- ifelse(is.na(mydf[,1]) & !is.na(mydf[,2]),
               mydf[,2],
               ifelse(is.na(mydf[,2]) & !is.na(mydf[,4]),
               mydf[,4], mydf[,3]))


mydf
