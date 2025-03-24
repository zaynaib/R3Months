# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv("misc/data/penguins.csv")

# Create a new data frame -------------------------------------------------

# Take the pipeline that you just created and copy it below
# Then assign the result of the pipeline to an object called penguin_body_mass_by_sex

penguin_body_mass_by_sex <- penguins |> 
  filter(island == "Biscoe") |> 
  drop_na(c(body_mass_g,sex)) |> 
  summarize(avg_body_mass = mean(body_mass_g), .by = sex) |> 
  arrange(desc(avg_body_mass))
