# function to calculate the area of a circle
calculate_circle_area <- function(radius) {
  return(pi * radius^2)
}
# testing the function with different inputs
area1 <- calculate_circle_area(5)
area2 <- calculate_circle_area(10)
area3 <- calculate_circle_area(0)
area4 <- calculate_circle_area(3.5)
# printing the results
cat("Area of circle with radius 5:", area1, "\n")
cat("Area of circle with radius 10:", area2, "\n")
cat("Area of circle with radius 0:", area3, "\n")
cat("Area of circle with radius 3.5:", area4, "\n")
