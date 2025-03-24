# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv("misc/data/penguins.csv")

# mutate() ----------------------------------------------------------------

# Use mutate() to create a variable called observation_station and set its value to "Palmer"

penguins |> 
  mutate(observation_station =  "Palmer") |> 
  View()

# 2. Create a new variable based on other variables:

penguins |> 
  mutate(body_mass_lb = body_mass_g *0.0022046226) |> 
  View()

# 3. Change an existing variable

penguins |> 
  mutate(bill_length_mm = bill_length_mm * 0.0393701) |>
  View()
