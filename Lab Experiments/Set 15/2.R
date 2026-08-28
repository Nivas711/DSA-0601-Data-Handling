data<-data.frame(SurveyID=c(1,2,3),
                 Question1=c("A","B","C"),
                 Question2=c("B","A","A"),
                 Question3=c("C","D","B"))
counts<-table(data[,2:4])
barplot(counts,beside=FALSE,
        main="Overall Survey Responses",
        xlab="Questions",ylab="Frequency",
        legend.text=TRUE)