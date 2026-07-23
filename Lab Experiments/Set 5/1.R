# Website Traffic Data
date <- c("2023-01-01","2023-01-02","2023-01-03",
          "2023-01-04","2023-01-05")

page_views <- c(1500,1600,1400,1650,1800)

# Line Chart
plot(page_views,
     type="o",
     xaxt="n",
     col="blue",
     lwd=2,
     pch=16,
     main="Daily Page Views Over Time",
     xlab="Date",
     ylab="Page Views")

axis(1, at=1:5, labels=date)