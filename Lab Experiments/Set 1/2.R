product <- c("Product A", "Product B", "Product C", "Product D", "Product E")
units <- c(250, 180, 320, 210, 290)
barplot(units,
        names.arg = product,
        col = "orange",
        xlab = "Products",
        ylab = "Units Sold",
        main = "Top Selling Products")