# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv("misc/data/penguins.csv")

# arrange() ---------------------------------------------------------------

# Use arrange() to display the penguins data frame in order by body mass

penguins |>
  arrange(body_mass_g) |> 
  View()
# Now display the penguins data in descending order by body mass

penguins |>
  arrange(desc(body_mass_g)) |> 
  View()

# Create a pipeline that does the following:
# 1. Filters to only keep penguins on Biscoe island
# 2. Drops any rows with NA values for the body_mass_g or sex variables
# 3. Calculates the average body mass by sex
# 4. Displays the result in descending order by average body mass

penguins |> 
  filter(island == "Biscoe") |> 
  drop_na(c(body_mass_g,sex)) |> 
  summarize(avg_body_mass = mean(body_mass_g), .by = sex) |> 
  arrange(desc(avg_body_mass))
  View()
