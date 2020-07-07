Metro_Interstate_Traffic_Volume <- read.csv("../../Data/Metro_Interstate_Traffic_Volume.csv")

levels(Metro_Interstate_Traffic_Volume$weather_main)

ordered.levels <- c("Clear", "Clouds", "Drizzle","Fog","Haze","Mist","Rain","Smoke","Snow","Squall","Thunderstorm")

Metro_Interstate_Traffic_Volume$weather_main_ordered <- factor(x = Metro_Interstate_Traffic_Volume$weather_main, levels = ordered.levels, ordered = TRUE)

str(Metro_Interstate_Traffic_Volume)
