data<-data.frame(Product=c("Product A","Product B","Product C"),
                 Quantity=c(250,175,300),Price=c(20,15,18))
barplot(data$Quantity,names.arg=data$Product,
        main="Product Inventory Quantity",xlab="Product",ylab="Quantity Available")