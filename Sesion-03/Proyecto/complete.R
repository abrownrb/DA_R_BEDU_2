# Function #2

# Write a function that reads a directory full of files and reports the number of 
# completely observed cases in each data file. The function should return a data 
# frame where the first column is the name of the file and the second column is the 
# number of complete cases.

complete <- function(direct, id=1:332){
    setwd(direct)
    file_names = list.files(pattern="*.csv")
    for (i in id) {
        filedir = paste(direct,file_names[i],sep="")
        df = read.csv(file=filedir, header=TRUE, sep=",")
        if (i==id[1]) {
            observations <- sum(complete.cases(df))
        } 
        else {
            observations = c(observations,sum(complete.cases(df)))
        }
    }
    dataf <- data.frame("id" = id, "nobs" = observations)
    dataf
}