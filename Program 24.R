# closing price vector
closing_prices <- c(120, 122, 118, 121, 119, 117, 123, 125, 126, 124, 128, 130, 129, 131, 135, 134, 136, 137, 140, 138, 139, 141, 142, 144, 143, 145, 146, 148, 147, 149)

# 1. calculate daily percentage returns
daily_returns <- (diff(closing_prices) / closing_prices[-length(closing_prices)]) * 100

# 2. identify days with highest and lowest returns
highest_return_day <- which.max(daily_returns)
lowest_return_day <- which.min(daily_returns)

# 3. calculate cumulative return over the month
cumulative_return <- ((closing_prices[length(closing_prices)] / closing_prices[1]) - 1) * 100

# printing results
cat("Daily returns (%):", daily_returns, "\n\n")
cat("Day with highest return:", highest_return_day + 1, "(Return:", daily_returns[highest_return_day], "%)\n\n")
cat("Day with lowest return:", lowest_return_day + 1, "(Return:", daily_returns[lowest_return_day], "%)\n\n")
cat("Cumulative monthly return:", cumulative_return, "%\n")
