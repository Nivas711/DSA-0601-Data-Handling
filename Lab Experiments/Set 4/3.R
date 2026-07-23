# Product Price (Sample Data)
price <- c(500,700,450,650,550)

# Quantity
quantity <- c(250,175,300,200,220)

# Scatter Plot
plot(price, quantity,
     main="Price vs Quantity Available",
     xlab="Product Price (Rs.)",
     ylab="Quantity Available",
     pch=19,
     col="blue")