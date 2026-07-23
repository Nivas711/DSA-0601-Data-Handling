# Dataset
month <- c("Jan","Feb","Mar","Apr","May","Jun",
           "Jul","Aug","Sep","Oct","Nov","Dec")

sales <- c(120,135,150,170,190,220,210,230,250,270,290,320)

# -----------------------------------
# Q1. Create a Line Chart
# -----------------------------------
plot(sales,
     type = "l",
     xaxt = "n",
     xlab = "Month",
     ylab = "Sales (₹ Lakhs)",
     main = "Monthly Sales Trend")

# -----------------------------------
# Q2. Add Custom Month Names
# -----------------------------------
axis(1, at = 1:12, labels = month)

# -----------------------------------
# Q3. Highlight Data Points
# -----------------------------------
points(sales, pch = 19, col = "blue")

# -----------------------------------
# Q4. Display Grid Lines and
#     Proper Axis Labels
# -----------------------------------
grid()

title(xlab = "Month",
      ylab = "Sales (₹ Lakhs)")

# -----------------------------------
# Q5. Identify Month with
#     Maximum Sales
# -----------------------------------
max_month <- month[which.max(sales)]
max_sales <- max(sales)

cat("Month with Maximum Sales:", max_month, "\n")
cat("Maximum Sales:", max_sales, "Lakhs\n")