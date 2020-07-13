# Function #1

# Write a function named 'pollutantmean' that calculates the mean of a pollutant 
# (sulfate or nitrate) across a specified list of monitors. The function 
# 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. 
# Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' 
# particulate matter data from the directory specified in the 'directory' argument 
# and returns the mean of the pollutant across all of the monitors, ignoring any 
# missing values coded as NA.

pollutantmean <- function(direct, pollutant,id=1:332){
    setwd(direct)
    file_names = list.files(pattern="*.csv")
    for (i in id) {
        filedir = paste(direct,file_names[i],sep="")
        if (i==id[1]) {
            df = read.csv(file=filedir, header=TRUE, sep=",")
        } 
        else {
            df = rbind(df, read.csv(file=filedir, header=TRUE, sep=","))
        }
    }
    col = df[[pollutant]]
    means = mean(col, na.rm = TRUE)
    means
}
