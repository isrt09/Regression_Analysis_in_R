# Correlation in R workflow :
dt <- read.csv("LungCap.csv", header = TRUE)
View(dt)
attach(dt)
names(dt)

class(LungCap)
class(Age)

plot(Age, LungCap, main = "Scatter Plot ")
cor(Age, LungCap,  method = "pearson") 
cor(Age, LungCap)
cor(LungCap,Age)

cor(Age, LungCap,method = "spearman")
cor(Age, LungCap,method = "kendall")

help("cor.test")
?cor.test

cor.test(Age,LungCap, method = "pearson")
cor.test(Age,LungCap, method = "spearman")
cor.test(Age,LungCap, method = "spearman", exact = FALSE)

cor.test(Age,LungCap, method = "pearson", alternative = "greater",conf.level = 0.99)

pairs(dt)
names(dt)
pairs(dt[,1:3])
cor((dt[,1:3]))
cor((dt[,1:3]), method = "spearman")
cor((dt[,1:3]), method = "kendall")