# function to check odd or even
check_odd_even <- function(n){
  result <- c("The number is even", "The number is odd")
  cat(result[(n %% 2) + 1])
}

# get user input
n <- readline(prompt = "Enter the number: ")
n <- as.integer(n)

# test the function
check_odd_even(n)
