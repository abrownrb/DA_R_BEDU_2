df <- read.csv('Metro_Interstate_Traffic_Volume.csv')
str(df)
sapply(df, function(x) sum(is.na(x)))
df.filter <- df[,c(2,3,4)]

mean(df.filter$temp)
mean(df.filter$rain_1h)
mean(df.filter$snow_1h)

median(df.filter$temp)
median(df.filter$rain_1h)
median(df.filter$snow_1h)

table.temp <- table(df.filter$temp)
table.temp[table.temp == max(table.temp)]

var(df.filter$temp)
sd(df.filter$temp)
max(df.filter$temp) - min(df.filter$temp)
