# Multiple Linear Regression

data <- read.csv("LungCap.csv", header = TRUE)
attach(data)
str(data)

gender <- factor(Gender)
smoke  <- factor(Smoke)
caesarean <- factor(Caesarean)
View(data)

library(GGally)
ggpairs(data)
ggpairs(data[,1:3])

# Fit a Multiple Linear Regression of Lung Capacity on Age and Height.
# Y = LungCap, X = (Age, Height)

model <- lm(LungCap ~ Age + Height)
summary(model)

# Given model is LungCap = -11.75 + 0.13 * Age + .28 * Height

# Fit a Multiple Linear Regression of Lung Capacity on Age, Height, Smoke, Gender and Cesarean
# Y = LungCap, X = (Age, Height, Smoke, Gender, Cesarean)

model2 <- lm(LungCap ~ Age + Height + Smoke + Gender + Caesarean)
summary(model2)

# model < - lm(lungCap ~ ., data = lungCap)

# Method : 1
plot(model2)

# Method : 2
plot(model2, which = 1, pch = 16, col = "blue", lty = 1, lwd = 2)
plot(model2, which = 2, pch = 16, col = "blue", lty = 1, lwd = 2)
plot(model2, which = 3, pch = 16, col = "blue", lty = 1, lwd = 2)
plot(model2, which = 5, pch = 16, col = "blue", lty = 1, lwd = 2)
plot(model2, which = 4, pch = 16, col = "blue", lty = 1, lwd = 2)