# sample sensor readings (60 readings, one per minute)
set.seed(10)  # for reproducibility
temperature <- runif(60, min = 20, max = 40)   # °C
humidity <- runif(60, min = 30, max = 70)      # %
pressure <- runif(60, min = 900, max = 1100)   # hPa

# time in minutes (1 to 60)
time <- 1:60

# 1. calculate average reading for each sensor
avg_temp <- mean(temperature)
avg_humidity <- mean(humidity)
avg_pressure <- mean(pressure)

cat("Average Temperature:", avg_temp, "\n")
cat("Average Humidity:", avg_humidity, "\n")
cat("Average Pressure:", avg_pressure, "\n\n")

# 2. identify time intervals with conditions
high_temp_low_humidity <- time[temperature > 30 & humidity < 40]

cat("Minutes with Temp > 30°C and Humidity < 40%:", high_temp_low_humidity, "\n")
