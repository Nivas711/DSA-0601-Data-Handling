# Load library
library(ggplot2)

# Create dataset
city <- c("Chennai","Bangalore","Hyderabad","Mumbai","Delhi",
          "Pune","Kolkata","Ahmedabad","Jaipur","Kochi")

latitude <- c(13.08,12.97,17.38,19.07,28.61,
              18.52,22.57,23.02,26.91,9.93)

longitude <- c(80.27,77.59,78.48,72.87,77.21,
               73.85,88.36,72.57,75.79,76.26)

population <- c(11,13,10,20,32,7,15,8,4,2)

data <- data.frame(city, latitude, longitude, population)

# -------------------------------
# Q1. Scatter Map
# -------------------------------
ggplot(data, aes(x = longitude, y = latitude)) +
  geom_point(color = "blue", size = 3) +
  ggtitle("Scatter Map of Cities") +
  xlab("Longitude") +
  ylab("Latitude")

# -------------------------------
# Q2. Bubble Map
# -------------------------------
ggplot(data, aes(x = longitude, y = latitude, size = population)) +
  geom_point(color = "red", alpha = 0.7) +
  ggtitle("Bubble Map of Population") +
  xlab("Longitude") +
  ylab("Latitude")

# -------------------------------
# Q3. Scatter Map with City Labels
# -------------------------------
ggplot(data, aes(x = longitude, y = latitude)) +
  geom_point(color = "blue", size = 3) +
  geom_text(aes(label = city), vjust = -0.7) +
  ggtitle("Scatter Map with City Labels") +
  xlab("Longitude") +
  ylab("Latitude")

# -------------------------------
# Q4. Bubble Map with Different Colors
# -------------------------------
ggplot(data, aes(x = longitude, y = latitude,
                 size = population,
                 color = population)) +
  geom_point() +
  ggtitle("Population-Based Color Map") +
  xlab("Longitude") +
  ylab("Latitude")

# -------------------------------
# Q5. City with Highest Population
# -------------------------------
highest <- data[which.max(data$population), ]
print(highest)