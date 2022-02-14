# Multiple Regression with mtcars datasets
attach(mtcars)
str(mtcars)
View(mtcars)

model <- lm( mpg ~ ., data = mtcars)
summary(model)

library(GGally)
ggcorr(mtcars, palette = "RdBu", label = TRUE, label_round = 2)
library(car)
vif(model)

# Stepwise Regression ( Remedial Multi-colinearity )
model2 <- lm(mpg ~ 1, data = mtcars)
model2

help("step")
step(model2,direction = "forward", scope = formula(model))

# Backward Regression ( Remedial Multi-colinearity )
step(model, direction = "backward")
step(model, direction = "backward", scope = formula(model))

step(model, direction = "both")
step(model, direction = "both", scope = list(lower = model2, upper = model))
