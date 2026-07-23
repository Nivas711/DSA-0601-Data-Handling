# Quantity in two categories (Sample Data)
inventory <- matrix(c(
  150,100,
  80,95,
  180,120,
  110,90,
  140,80
), nrow=2)

colnames(inventory) <- c("Product A","Product B","Product C","Product D","Product E")
rownames(inventory) <- c("Category 1","Category 2")

# Stacked Bar Chart
barplot(inventory,
        main="Stacked Bar Chart of Product Categories",
        xlab="Products",
        ylab="Quantity",
        col=c("orange","green"),
        legend=rownames(inventory))