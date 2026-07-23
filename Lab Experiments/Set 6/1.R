# Product Sales Data
sales <- matrix(c(
  2000,1500,1200,
  2200,1800,1400,
  2400,1600,1100),
  nrow = 3,
  byrow = TRUE)

colnames(sales) <- c("Product A","Product B","Product C")
rownames(sales) <- c("January","February","March")

# Grouped Bar Chart
barplot(sales,
        beside = TRUE,
        col = c("skyblue","orange","lightgreen"),
        main = "Quarter 1 Product Sales",
        xlab = "Products",
        ylab = "Sales",
        legend = rownames(sales))