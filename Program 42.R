# Step 1: Install required packages
install.packages("DBI")
install.packages("dplyr")
install.packages("RSQLite")

# Step 2: Load packages
library(DBI)
library(dplyr)
library(RSQLite)

# Step 3: Set working directory
setwd("your_directory_path")

# Step 4: Connect to SQLite database
con <- dbConnect(RSQLite::SQLite(), "songs.db")

# Step 5: Reference the songs table
songs_table <- tbl(con, "songs")

# Step 6: Construct query for songs by Queen (artist_id = 11)
queen_songs <- songs_table %>%
  filter(artist_id == 11) %>%
  select(title)

# Step 7: Show SQL query
show_query(queen_songs)

# Step 8: Retrieve actual data
queen_songs_data <- collect(queen_songs)

# Display results
print(queen_songs_data)

# Step 9: Disconnect from database
dbDisconnect(con)