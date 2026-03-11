# Task 1: Create Column Vectors
PatientID <- c("HOS1001","HOS1002","HOS1003","HOS1004","HOS1005",
               "HOS1006","HOS1007","HOS1008","HOS1009","HOS1010")

Name <- c("Arjun Menon","Bhavana Iyer","Chirag Gupta","Devika Nair","Eshwar Rao",
          "Farida Sheikh","Gaurav Kumar","Harini Krishnan","Ishita S","Jatin Verma")

Department <- c("Cardiology","Neurology","Endocrinology","Pulmonology","Cardiology",
                "Endocrinology","Neurology","Pulmonology","Cardiology","Endocrinology")

Diagnosis <- c("Hypertension","Migraine","Type-2 Diabetes","Asthma","Hypertension",
               "Thyroid Disorder","Epilepsy","COPD","Arrhythmia","Type-1 Diabetes")

Test1 <- c(82,71,90,64,95,60,78,68,87,83)
Test2 <- c(76,69,92,70,94,63,82,72,85,79)
Test3 <- c(88,73,86,67,93,61,79,70,90,77)
Test4 <- c(84,75,91,72,96,66,81,69,88,85)
Test5 <- c(88,73,86,67,93,61,79,70,90,77)

# Task 2: Build the Data Frame
patients <- data.frame(
  PatientID,
  Name,
  Department,
  Diagnosis,
  Test1,
  Test2,
  Test3,
  Test4,
  Test5,
  stringsAsFactors = FALSE
)

# Show structure and first rows
str(patients)
head(patients)

# Task 3: Patient-Level Sum, Average, Rank
# Calculate Sum
patients$Sum <- rowSums(patients[, c("Test1","Test2","Test3","Test4")])

# Calculate Average
patients$Average <- round(patients$Sum / 4, 2)

# Rank (highest Sum = rank 1)
patients$Rank <- rank(-patients$Sum, ties.method = "min")

# Print full dataframe
patients

# Sorted by Rank
patients_sorted <- patients[order(patients$Rank), ]
patients_sorted

# Task 4: Test-Wise Average (Overall)
test_cols <- c("Test1","Test2","Test3","Test4")

test_wise_avg <- colMeans(patients[, test_cols], na.rm = TRUE)

print("Test-wise Average:")
print(test_wise_avg)

# Task 5: Department-Wise Averages
dept_test_avg <- aggregate(
  patients[, test_cols],
  by = list(Department = patients$Department),
  FUN = function(x) mean(x, na.rm = TRUE)
)

# Add overall average
dept_test_avg$Overall_Average <- rowMeans(dept_test_avg[, test_cols], na.rm = TRUE)

# Sort by overall average descending
dept_test_avg <- dept_test_avg[order(-dept_test_avg$Overall_Average), ]

print("Department-wise Averages:")
print(dept_test_avg)
