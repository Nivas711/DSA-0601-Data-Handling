department <- c("Sales", "HR", "Marketing", "Sales", "HR")
count <- table(department)
barplot(count,
        col = "orange",
        xlab = "Department",
        ylab = "Number of Employees",
        main = "Employees by Department")