# Step 1: Install and load tidyr
install.packages("tidyr")
library(tidyr)

# Step 2: Create wide format dataset
wide_data <- data.frame(
  ID = c(1,2,3),
  Year2019 = c(10,15,20),
  Year2020 = c(12,18,24)
)

# View wide dataset
wide_data

# Step 3: Wide → Long transformation
long_data <- gather(wide_data, key = "Year", value = "Value", Year2019, Year2020)

# View long dataset
long_data

# Step 4: Create long dataset
long_dataset <- data.frame(
  ID = c(1,1,2,2,3,3),
  Year = c(2019,2020,2019,2020,2019,2020),
  Value = c(10,12,15,18,20,24)
)

# Step 5: Long → Wide transformation
wide_dataset <- spread(long_dataset, key = "Year", value = "Value")

# View wide dataset again
wide_dataset