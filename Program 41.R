# Install and load required package
install.packages("tidyr")
library(tidyr)

# Create dataset
data <- data.frame(
  StudentID = c(1,2,3,4),
  Name = c("Alice","Bob","Charlie","Dana"),
  Math_2020 = c(85,90,NA,70),
  Math_2021 = c(88,NA,78,75),
  Eng_2020 = c(80,92,85,NA),
  Eng_2021 = c(82,95,NA,77),
  ExtraInfo = c("A-2020-S1","B-2021-S2","C-2020-S1",NA)
)

View(data)

# Wide to Long transformation
long_data <- gather(data, Subject_Year, Score, Math_2020:Eng_2021)
View(long_data)

# Long to Wide transformation
wide_data <- spread(long_data, Subject_Year, Score)
View(wide_data)

# Separate ExtraInfo column
separated_data <- separate(data, ExtraInfo,
                           into=c("Group","Year","Semester"), sep="-")

View(separated_data)

# Combine columns
united_data <- unite(separated_data, Info, Group, Semester, sep="_")
View(united_data)

# Remove missing values
clean_data <- drop_na(data)
View(clean_data)

# Fill missing values
filled_data <- fill(data, Math_2020)
View(filled_data)