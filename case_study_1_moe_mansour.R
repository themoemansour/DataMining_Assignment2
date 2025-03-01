# Load the dataset (assuming the CSV file is named 'NFL_2024.csv')
nfl_data <- read.csv("NFL_2024.csv")

# Understand the problem & data
# Compute correlation coefficients
cor_facebook <- cor(nfl_data$Facebook, nfl_data$Franchise_Value)
cor_facebook
cor_twitter <- cor(nfl_data$Twitter, nfl_data$Franchise_Value)
cor_twitter

plot(nfl_data$Facebook, nfl_data$Franchise_Value, 
     main="Scatter Plot: Franchise Value vs Facebook Fans", 
     xlab="Facebook Fans (millions)", 
     ylab="Franchise Value (billions)", 
     pch=16, col="blue")
abline(lm(Franchise_Value ~ Facebook, data = nfl_data), col="red")

plot(nfl_data$Twitter, nfl_data$Franchise_Value, 
     main="Scatter Plot: Franchise Value vs Twitter Followers", 
     xlab="Twitter Followers (millions)", 
     ylab="Franchise Value (billions)", 
     pch=16, col="darkgreen")
abline(lm(Franchise_Value ~ Twitter, data = nfl_data), col="red")

# Model 1: Franchise Value ~ Facebook Fans
# Define the dependent and independent variables
model1 <- lm(Franchise_Value ~ Facebook, data = nfl_data)

# Print the summary of Model 1
summary(model1)

# Hypothesis test for Model 1
# H0: The coefficient of Facebook fans is 0
# H1: The coefficient of Facebook fans is not 0
p_value_model1 <- summary(model1)$coefficients[2,4]

# Residual plots for Model 1
residuals_model1 <- residuals(model1)
plot(model1$fitted.values, residuals_model1, main="Residual Plot for Model 1", xlab="Fitted Values", ylab="Residuals")
abline(h=0, col="red")

# Normality check for residuals of Model 1
hist(residuals_model1, main="Histogram of Residuals for Model 1", xlab="Residuals", breaks=10)
qqnorm(residuals_model1, main="QQ Plot for Model 1")
qqline(residuals_model1, col="red")

shapiro.test(residuals(model1))

# R-squared value for Model 1
r_squared_model1 <- summary(model1)$r.squared
r_squared_model1
# Model 2: Franchise Value ~ Twitter Followers
# Define the dependent and independent variables
model2 <- lm(Franchise_Value ~ Twitter, data = nfl_data)

# Print the summary of Model 2
summary(model2)

# Hypothesis test for Model 2
# H0: The coefficient of Twitter followers is 0
# H1: The coefficient of Twitter followers is not 0
p_value_model2 <- summary(model2)$coefficients[2,4]

# Residual plots for Model 2
residuals_model2 <- residuals(model2)
plot(model2$fitted.values, residuals_model2, main="Residual Plot for Model 2", xlab="Fitted Values", ylab="Residuals")
abline(h=0, col="red")

# Normality check for residuals of Model 2
hist(residuals_model2, main="Histogram of Residuals for Model 2", xlab="Residuals", breaks=10)
qqnorm(residuals_model2, main="QQ Plot for Model 2")
qqline(residuals_model2, col="red")

# R-squared value for Model 2
r_squared_model2 <- summary(model2)$r.squared
r_squared_model2
# Moel Deployment: Predicting Kansas City Chiefs Franchise Value
chiefs_facebook <- nfl_data$Facebook[nfl_data$Team == "Kansas City Chiefs"]
chiefs_twitter <- nfl_data$Twitter[nfl_data$Team == "Kansas City Chiefs"]
actual_chiefs_value <- nfl_data$Franchise_Value[nfl_data$Team == "Kansas City Chiefs"]

predicted_chiefs_value_model1 <- predict(model1, newdata = data.frame(Facebook = chiefs_facebook))
predicted_chiefs_value_model2 <- predict(model2, newdata = data.frame(Twitter = chiefs_twitter))

# Compute prediction errors
error_model1 <- actual_chiefs_value - predicted_chiefs_value_model1
error_model2 <- actual_chiefs_value - predicted_chiefs_value_model2
chiefs_facebook
chiefs_twitter
actual_chiefs_value
predicted_chiefs_value_model1
predicted_chiefs_value_model2
