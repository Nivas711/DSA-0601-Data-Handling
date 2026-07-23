# Dataset
employee_id <- c(1,2,3)
department <- c("Sales","HR","Marketing")
years_service <- c(5,3,7)
performance_score <- c(85,92,78)

plot(years_service, performance_score,
     type = "o",
     pch = 19,
     col = "blue",
     xlab = "Years of Service",
     ylab = "Performance Score",
     main = "Employee Performance Trend")

grid()