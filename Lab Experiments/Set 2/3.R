agegroup <- c("20-29", "30-39", "30-39", "20-29", "40-49")
score <- c(4, 5, 3, 4, 5)
data <- table(agegroup, score)
barplot(data,
        col = rainbow(ncol(data)),
        xlab = "Age Group",
        ylab = "Number of Customers",
        main = "Customer Satisfaction by Age Group",
        legend = colnames(data))