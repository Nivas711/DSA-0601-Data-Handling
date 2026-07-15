employee <- factor(c("E1", "E2", "E3", "E4", "E5"))
performance <- c(85, 92, 78, 90, 76)
plot(employee, performance,
     type = "o",
     col = "blue",
     xlab = "Employee",
     ylab = "Performance Score",
     main = "Employee Performance Trend")