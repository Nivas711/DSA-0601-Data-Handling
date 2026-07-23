# Install package (Run once if not installed)
# install.packages("corrplot")

library(corrplot)

# Dataset
year <- c(2016,2017,2018,2019,2020,2021,2022,2023,2024,2025)
sales <- c(150,170,200,240,260,300,340,390,430,480)
profit <- c(20,25,32,40,42,55,65,72,82,95)
customers <- c(1200,1500,1800,2200,2400,2800,3300,3800,4200,4700)
branches <- c(5,6,7,8,8,10,11,12,13,15)

data <- data.frame(year, sales, profit, customers, branches)

# -----------------------------------
# Q1. Temporal Line Chart
# -----------------------------------
plot(year, sales,
     type = "l",
     lwd = 2,
     col = "blue",
     xlab = "Year",
     ylab = "Sales",
     main = "Yearly Sales Trend")

points(year, sales, pch = 19, col = "red")
grid()

# -----------------------------------
# Q2. Bubble Plot
# X = Sales
# Y = Profit
# Bubble Size = Customers
# -----------------------------------
symbols(data$sales,
        data$profit,
        circles = data$customers,
        inches = 0.3,
        bg = "skyblue",
        fg = "black",
        xlab = "Sales",
        ylab = "Profit",
        main = "Bubble Plot")

text(data$sales,
     data$profit,
     labels = data$year,
     pos = 3)

# -----------------------------------
# Q3. Correlation Matrix
# -----------------------------------
correlation <- cor(data[,2:5])
print(correlation)

# -----------------------------------
# Q4. Scatter Plot Matrix
# -----------------------------------
pairs(data[,2:5],
      main = "Scatter Plot Matrix")

# -----------------------------------
# Q5. Interpretation
# -----------------------------------
cat("Interpretation:\n")
cat("The visualizations show that as the number of branches increases,\n")
cat("sales, profits, and customers also increase.\n")
cat("This indicates a strong positive relationship between branches,\n")
cat("sales, and profits.\n")

# Heatmap (Optional)
corrplot(correlation,
         method = "color",
         addCoef.col = "black",
         tl.col = "black")