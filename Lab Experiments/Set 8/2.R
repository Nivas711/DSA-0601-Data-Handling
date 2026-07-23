# Dataset
department <- c("Sales","HR","Marketing")

dept_count <- table(department)

barplot(dept_count,
        col = "skyblue",
        xlab = "Department",
        ylab = "Number of Employees",
        main = "Employees Across Departments")