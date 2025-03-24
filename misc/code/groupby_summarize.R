# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv("misc/code/data/penguins.csv")

# group_by() and summarize() ----------------------------------------------

# Calculate the weight of the heaviest penguin on each island.

penguins |> 
  group_by(island) |> 
  summarize(max(body_mass_g, na.rm = TRUE)) 

# Calculate the weight of the heaviest penguin on each island for each year.

penguins |> 
  summarize(min(body_mass_g,na.rm=TRUE),.by=island)
