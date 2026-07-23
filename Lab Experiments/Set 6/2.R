month <- rep(c("January", "February", "March"), each = 3)
product <- rep(c("Product A", "Product B", "Product C"), times = 3)
sales <- c(2000,1500,1200,
           2200,1800,1400,
           2400,1600,1100)

data <- data.frame(month, product, sales)

ggplot(data, aes(x = month, y = sales, fill = product)) +
  geom_area(position = "stack") +
  labs(title = "Stacked Area Chart of Product Sales",
       x = "Month",
       y = "Sales")