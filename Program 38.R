# Step 1: Install and load dplyr
install.packages("dplyr")
library(dplyr)

# Step 2: Create Donors dataset
donors <- data.frame(
  Donor_Name = c("Alice Walton", "Jacqueline Mars", "Maria Franca Fissolo",
                 "Susanne Klatten", "Laurene Powell Jobs", "Francoise Bettencourt Meyers"),
  Email = c("alice.walton@gmail.com", "jacqueline.mars@gmail.com", "maria.franca.fissolo@gmail.com", "susanne.klatten@gmail.com", "laurene.powell.jobs@gmail.com", "francoise.bettencourt.meyers@gmail.com"),
  stringsAsFactors = FALSE
)

# Step 3: Create Donations dataset
donations <- data.frame(
  Donor_Name = c("Maria Franca Fissolo", "Yang Huiyan", "Maria Franca Fissolo"),
  Amount = c(100, 50, 75),
  Date = c("2018-02-15", "2018-02-15", "2018-02-15"),
  stringsAsFactors = FALSE
)

# Step 4: Inner Join - donors who made donations
donor_contributions <- inner_join(donations, donors, by = "Donor_Name")

# Step 5: Left Join - donations with donor details
donation_details <- left_join(donations, donors, by = "Donor_Name")

# Step 6: Anti Join - donations with no donor record
missing_donors <- anti_join(donations, donors, by = "Donor_Name")

# Step 7: Full Join - all records
all_records <- full_join(donations, donors, by = "Donor_Name")

# Display results
View(donor_contributions)
View(donation_details)
View(missing_donors)
View(all_records)