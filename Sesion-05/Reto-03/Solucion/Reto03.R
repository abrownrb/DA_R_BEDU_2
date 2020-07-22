df <- read.csv('Metro_Interstate_Traffic_Volume.csv')

dtypes <- sapply(df, class)

col.factor <- dtypes[dtypes == 'factor']
col.factor
col.factor <- names(col.factor)
col.factor

df.factor <- df[, c(col.factor)]
head(df.factor)

table(df.factor$weather_main)

table(df.factor$weather_main)/length(df.factor$weather_main)

