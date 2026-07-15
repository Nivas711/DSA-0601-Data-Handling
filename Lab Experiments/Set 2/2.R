score <- c(4, 5, 3, 4, 5)
count <- table(score)
pie(count,
    labels = names(count),
    col = rainbow(length(count)),
    main = "Customer Satisfaction Scores")