# Customer Ages
age <- c(28,35,42)

# Customer IDs
customer <- c("Customer 1","Customer 2","Customer 3")

# Bar Chart
barplot(age,
        names.arg=customer,
        col="skyblue",
        border="black",
        main="Distribution of Customer Ages",
        xlab="Customers",
        ylab="Age (Years)")