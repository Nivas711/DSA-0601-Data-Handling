# Dataset
employee_id <- c(1,2,3)
department <- c("Sales","HR","Marketing")
years_service <- c(5,3,7)
performance_score <- c(85,92,78)

data <- data.frame(
  Employee_ID = employee_id,
  Department = department,
  Years_of_Service = years_service,
  Performance_Score = performance_score
)

print(data)