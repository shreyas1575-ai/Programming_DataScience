# function to make full name from first and last names
make_full_name <- function(first_name, last_name) {
  return(paste(first_name, last_name))
}
# testing the function with different inputs
name1 <- make_full_name("John", "Doe")
name2 <- make_full_name("Alice", "Smith")
name3 <- make_full_name("Rahul", "Sharma")
name4 <- make_full_name("Mary", "Anne")
# printing the results
cat("Full name 1:", name1, "\n")
cat("Full name 2:", name2, "\n")
cat("Full name 3:", name3, "\n")
cat("Full name 4:", name4, "\n")
