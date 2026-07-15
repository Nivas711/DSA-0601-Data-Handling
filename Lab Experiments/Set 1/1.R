month <- factor(c("January", "February", "March", "April", "May"))
sales <- c(15000, 18000, 22000, 20000, 23000)
plot(month, sales,
     type = "o",
     col = "blue",
     xlab = "Month",
     ylab = "Sales ($)",
     main = "Monthly Sales")