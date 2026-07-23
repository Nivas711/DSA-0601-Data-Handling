# Click-through Rate
ctr <- c(2.3,2.7,2.0,2.4,2.6)

date <- c("2023-01-01","2023-01-02","2023-01-03",
          "2023-01-04","2023-01-05")

# Bar Chart
barplot(ctr,
        names.arg=date,
        col="lightgreen",
        border="black",
        main="Click-through Rate by Date",
        xlab="Date",
        ylab="Click-through Rate (%)")