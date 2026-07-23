# Gender Data
gender_count <- c(2,1)

names(gender_count) <- c("Female","Male")

# Pie Chart
pie(gender_count,
    main="Distribution of Customers by Gender",
    col=c("pink","lightblue"))