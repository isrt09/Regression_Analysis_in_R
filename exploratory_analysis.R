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

# Observations
# Outliers Detected : rainfalls & n_hot_rooms
# Missing Value : n_host_beds
# Useless Variable : bus_ter
# Bi-variate Relationship : Price & Crime Rate ( Negative )

# Outlier Remedial
quantile(df$n_hot_rooms, 0.99)
uv <- 3 * quantile(df$n_hot_rooms, 0.99)
df$n_hot_rooms[df$n_hot_rooms > uv] <- uv
summary(df$n_hot_rooms)

summary(df$rainfall)
lv = 0.3 * quantile(df$rainfall, 0.01)
df$rainfall[df$rainfall < lv] <- lv
summary(df$rainfall)

# Handling Missing Value
mean(df$n_hos_beds)
mean(df$n_hos_beds, na.rm = TRUE)
which(is.na(df$n_hos_beds)) 
df$n_hos_beds[is.na(df$n_hos_beds)] <- mean(df$n_hos_beds, na.rm = TRUE)
mean(df$n_hos_beds)