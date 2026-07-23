# Dataset
category <- matrix(c(100,150,
                     75,100,
                     120,180),
                   nrow = 2)

colnames(category) <- c("Product A","Product B","Product C")
rownames(category) <- c("Category 1","Category 2")

barplot(category,
        col = c("skyblue","orange"),
        main = "Quantity by Product Category",
        xlab = "Products",
        ylab = "Quantity",
        legend.text = rownames(category))