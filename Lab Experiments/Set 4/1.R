# Product names
product <- c("Product A", "Product B", "Product C", "Product D", "Product E")

# Quantity available
quantity <- c(250, 175, 300, 200, 220)

# Bar Chart
barplot(quantity,
        names.arg = product,
        main = "Quantity Available for Each Product",
        xlab = "Products",
        ylab = "Quantity Available",
        col = "skyblue",
        border = "black")