# Dataset
survey_id <- c(1,2,3)
question1 <- c("A","B","C")
question2 <- c("B","A","A")
question3 <- c("C","D","B")

survey_data <- data.frame(
  Survey_ID = survey_id,
  Question_1 = question1,
  Question_2 = question2,
  Question_3 = question3
)

print(survey_data)