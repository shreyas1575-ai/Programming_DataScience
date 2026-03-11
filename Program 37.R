# Step 1: Install and load dplyr and the starwars dataset
install.packages("dplyr")   # only if not installed
library(dplyr)

# Load starwars dataset
data("starwars", package = "dplyr")
View(starwars)

# Step 2: Select relevant columns
# Extract: name, species, height, mass, homeworld, gender
sw_data <- starwars %>%
  select(name, species, height, mass, homeworld, gender)
View(sw_data)

# Step 3: Filter species with more than 2 characters
species_counts <- sw_data %>%
  group_by(species) %>%
  tally() %>%
  filter(n > 2)

filtered_data <- sw_data %>%
  filter(species %in% species_counts$species)
View(filtered_data)

# Step 4: Create new columns
# Convert height to meters and categorize mass into weight categories
# Categories: Underweight (<50), Normal (50-80), Overweight (80-100), Obese (>100)
processed_data <- filtered_data %>%
  mutate(
    height_m = height / 100,
    weight_category = case_when(
      mass < 50 ~ "Underweight",
      mass >= 50 & mass < 80 ~ "Normal",
      mass >= 80 & mass < 100 ~ "Overweight",
      mass >= 100 ~ "Obese",
      TRUE ~ NA_character_
    )
  )
View(processed_data)

# Step 5: Average height per species-gender combination
avg_height <- processed_data %>%
  group_by(species, gender) %>%
  summarize(avg_height = mean(height, na.rm = TRUE))
View(avg_height)

# Step 6: Identify top 3 species with highest average height
top3_species <- avg_height %>%
  group_by(species) %>%
  summarize(mean_height_species = mean(avg_height, na.rm = TRUE)) %>%
  arrange(desc(mean_height_species)) %>%
  slice(1:3)
View(top3_species)