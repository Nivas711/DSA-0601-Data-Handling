# Dataset
survey <- data.frame(
  Q1 = c("A","B","C"),
  Q2 = c("B","A","A"),
  Q3 = c("C","D","B")
)

responses <- table(
  factor(c(survey$Q1, survey$Q2, survey$Q3),
         levels = c("A","B","C","D")),
  rep(c("Q1","Q2","Q3"), each = 3)
)

barplot(responses,
        col = c("skyblue","orange","green","pink"),
        xlab = "Questions",
        ylab = "Count",
        main = "Overall Distribution of Survey Responses",
        legend.text = rownames(responses))