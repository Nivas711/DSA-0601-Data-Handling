data<-data.frame(Product=c("Product A","Product B","Product C"),
                 Quantity=c(250,175,300),
                 Price=c(20,15,18))
barplot(rbind(data$Quantity,data$Price),
        names.arg=data$Product,main="Product Inventory",
        xlab="Product",ylab="Value",legend.text=c("Quantity","Price"))