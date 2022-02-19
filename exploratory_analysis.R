# Data Exploration
df <- read.csv(file.choose(), header = TRUE)
str(df)
View(df)

# Exploratory Data Analysis (EDA)

summary(df)
boxplot(df[,-c(13,16,18)], horizontal = FALSE)
hist(df$crime_rate)
hist(df$price)
pairs(~price+crime_rate+n_hos_beds+n_hot_rooms+rainfall,data = df)

barplot(table(df$airport))
barplot(table(df$waterbody))
barplot(table(df$bus_ter))
