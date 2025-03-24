# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv("misc/code/penguins.csv")

# Calculate the weight of the heaviest penguin.
# Don't forget to drop NAs!

penguins |> 
  summarize(max_body_mass_g = max(body_mass_g,na.rm=TRUE)) 

# Calculate the minimum and maximum weight of penguins in the dataset.

penguins |> 
  summarize(min_body_mass = min(body_mass_g, na.rm = TRUE),
            max_body_mass = max(body_mass_g,na.rm =TRUE))
