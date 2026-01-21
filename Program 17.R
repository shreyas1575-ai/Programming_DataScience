# Function to check whether a given number is an Armstrong number
is_armstrong <- function(number) {
  # Convert the number to character to extract digits
  digits <- unlist(strsplit(as.character(number), ""))
  
  # Convert digits to integers
  digits <- as.integer(digits)
  
  # Calculate the number of digits
  n <- length(digits)
  
  # Calculate the sum of digits raised to the power of number of digits
  sum_of_powers <- sum(digits^n)
  
  if (sum_of_powers == number) {
    return("The number is an Armstrong number.")
  } else {
    return("The number is not an Armstrong number.")
  }
}

# Test the function
print(is_armstrong(153))   # Test with a three-digit Armstrong number
print(is_armstrong(123))   # Test with a non-Armstrong number
print(is_armstrong(1634))  # Test with a four-digit Armstrong number
print(is_armstrong(7))     # Test with a single-digit number
