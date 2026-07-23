# Install packages (Run once if not installed)
# install.packages("corrplot")

library(corrplot)

# Dataset
student <- c("A","B","C","D","E","F","G","H","I","J")
marks <- c(60,68,74,79,82,85,88,91,94,97)
attendance <- c(75,80,84,88,90,92,94,95,97,99)
study_hours <- c(2,3,4,5,5,6,6,7,8,9)
projects <- c(1,2,2,3,3,4,4,5,5,6)

data <- data.frame(student, marks, attendance, study_hours, projects)

# -----------------------------------
# Q1. Bubble Plot
# X = Marks
# Y = Attendance
# Bubble Size = Study Hours
# -----------------------------------
symbols(data$marks,
        data$attendance,
        circles = data$study_hours,
        inches = 0.3,
        bg = "skyblue",
        fg = "black",
        xlab = "Marks",
        ylab = "Attendance (%)",
        main = "Bubble Plot")

text(data$marks,
     data$attendance,
     labels = data$student,
     pos = 3)

# -----------------------------------
# Q2. Scatter Plot Matrix
# -----------------------------------
pairs(data[,2:5],
      main = "Scatter Plot Matrix")

# -----------------------------------
# Q3. Correlation Matrix
# -----------------------------------
correlation <- cor(data[,2:4])
print(correlation)

# -----------------------------------
# Q4. Student with Highest Marks
# and Largest Bubble
# -----------------------------------
highest <- data[which.max(data$marks),]

print(highest)

# -----------------------------------
# Q5. Heatmap
# -----------------------------------
corrplot(correlation,
         method = "color",
         addCoef.col = "black",
         tl.col = "black",
         number.cex = 0.8)