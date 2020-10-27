reyes <- scan("https://robjhyndman.com/tsdldata/misc/kings.dat")
reyes <- scan("https://robjhyndman.com/tsdldata/misc/kings.dat",skip=3)
str(reyes)
reyes <- ts(reyes)
plot(reyes)
hist(reyes)

datos <- iris
plot(iris[,-5], main="Gráfica de todos contra todos")

plot(Sepal.Length ~ Sepal.Width, iris) 
abline(lm(Sepal.Length ~ Sepal.Width, iris))

plot(iris$Petal.Length, iris$Petal.Width, pch=21, 
     bg=c("red","green3","blue")[unclass(iris$Species)])

boxplot(iris)
boxplot(Sepal.Width ~ Species, iris, las=1, 
        xaxt="n", lwd=2,
        xlab="Species", 
        ylab="Sepal Width", 
        cex.lab=1.3, 
        cex.axis=1.3,  
        col=c("blue","orange","green"))
axis(side=1, cex.lab=1.0, 
     at=c(1.0,2.0,3.0), 
     labels=c("IRSE", "IRVE", "IRVI"))
legend("top", cex=0.8, bty="n", 
       title="Species", c("I. setosa","I. versicolor","I. virginica"), 
       fill=c("blue", "orange","green"))

par(mfrow=c(2,3))
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)
plot(iris[,-5], main="Gráfica de todos contra todos")
 
