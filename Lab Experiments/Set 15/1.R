data<-data.frame(SurveyID=c(1,2,3),
                 Question1=c("A","B","C"),
                 Question2=c("B","A","A"),
                 Question3=c("C","D","B"))
counts<-table(data$Question1)
barplot(counts,beside=TRUE,
        main="Question 1 Responses",
        xlab="Answer",ylab="Frequency")