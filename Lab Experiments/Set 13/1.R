data<-data.frame(EmployeeID=c(1,2,3),
                 Department=c("Sales","HR","Marketing"),
                 Years=c(5,3,7),Performance=c(85,92,78))
plot(data$Years,data$Performance,type="o",main="Employee Performance Trend",xlab="Years of Service",ylab="Performance Score")