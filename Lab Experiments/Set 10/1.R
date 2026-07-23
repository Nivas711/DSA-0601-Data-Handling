# Dataset
question1 <- c("A", "B", "C")

q1_count <- table(question1)

barplot(q1_count,
        beside = TRUE,
        col = c("skyblue", "orange", "green"),
        xlab = "Responses",
        ylab = "Count",
        main = "Distribution of Answers for Question 1")