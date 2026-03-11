# Step 1: Install and load required package
install.packages("dplyr")
library(dplyr)

# Step 2: Create Customers dataset
customers <- data.frame(
  CustomerName = c("John Doe", "Jane Smith", "Robert Brown", "Emily Davis", "Michael Green"),
  Email = c("john.doe@example.com", "jane.smith@example.com", "robert.brown@example.com", "emily.davis@example.com", "michael.green@example.com"),
  stringsAsFactors = FALSE
)

# Step 3: Create Purchases dataset
purchases <- data.frame(
  CustomerName = c("John Doe", "Jane Smith", "Robert Brown", "Sarah Johnson", "Emily Davis"),
  PurchaseAmount = c(150, 200, 120, 180, 220),
  Date = c("01-01-2023", "02-01-2023", "03-01-2023",
           "04-01-2023", "05-01-2023"),
  stringsAsFactors = FALSE
)

# Step 4: Left Join
left_join_result <- left_join(customers, purchases, by = "CustomerName")

# Step 5: Right Join
right_join_result <- right_join(customers, purchases, by = "CustomerName")

# Step 6: Inner Join
inner_join_result <- inner_join(customers, purchases, by = "CustomerName")

# Step 7: Full Join
full_join_result <- full_join(customers, purchases, by = "CustomerName")

# Display outputs
View(left_join_result)
View(right_join_result)
View(inner_join_result)
View(full_join_result)