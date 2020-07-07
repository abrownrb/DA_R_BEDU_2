#1
x <- 15;f <- function(x){0}
if(x>0) {
          f <- function(x){x^2}
        }
paste("El valor de f es ",f(x))

#2
raiz = function(n,x){
if(n%%2 == 1 || x >=0 ){
  sign(x)*abs(x)^(1/n) 
  } else{ 
    NaN }
                    }

raiz(5, -32) # raíz quinta de -32

#4
for (i in 1:length(1:3)) {
         for (j in 1:10) {
            print(j+i-1)
         }}

#6
set.seed(23)
randomnr <- rnorm(3)
reps <- 1

repeat {
    print(randomnr)
    reps <- reps + 1

    if(reps > 10) {
       break}}

#7
for (i in mtcars$disp){
   if(i<160)
     next
   print (i)}


for (i in mtcars$disp){
   if(i<160)
     break
   print (i)}



