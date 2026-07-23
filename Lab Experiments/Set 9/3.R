# Dataset
product_id <- c(1,2,3)
product_name <- c("Product A","Product B","Product C")
quantity <- c(250,175,300)
price <- c(20,15,18)

inventory <- data.frame(
  Product_ID = product_id,
  Product_Name = product_name,
  Quantity_Available = quantity,
  Price = price
)

print(inventory)