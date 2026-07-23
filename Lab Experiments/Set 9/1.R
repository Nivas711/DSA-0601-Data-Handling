# Dataset
product_name <- c("Product A", "Product B", "Product C")
quantity <- c(250, 175, 300)

barplot(quantity,
        names.arg = product_name,
        col = "skyblue",
        xlab = "Product Name",
        ylab = "Quantity Available",
        main = "Product Inventory")