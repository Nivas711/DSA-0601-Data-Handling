data<-data.frame(EmployeeID=c(1,2,3),
                 Department=c("Sales","HR","Marketing"),
                 Years=c(5,3,7),Performance=c(85,92,78))
barplot(table(data$Department),
        main="Employees by Department",
        xlab="Department",ylab="Number of Employees")