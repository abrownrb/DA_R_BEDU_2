df <- read.csv('Metro_Interstate_Traffic_Volume.csv')

head(df)

df.filter <- df[ ,c('traffic_volume','temp')]

quant <- quantile(df.filter$traffic_volume, c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1))

df.filter$qcut.traffic <- cut(df.filter$traffic_volume, breaks = quant)

head(df.filter)

table(df.filter$qcut.traffic)
