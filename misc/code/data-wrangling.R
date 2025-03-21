# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv('misc/data/penguins.csv')

# select() ----------------------------------------------------------------

# Use select() to keep only the sex variable

penguins |> 
  select(sex)

# Use select() to keep the island and sex variables

penguins |> 
  select(c(island,sex))

# Use one of the select() helper functions to keep all variables that have the letter s in their names

penguins |> 
  select(contains("s"))

# Use one of the select() helper functions to keep all variables that start with the letter b


penguins |> 
  select(starts_with("b"))

# Use select() to keep the variables from island to the end

penguins |> 
  select(("island":last_col()))

# Use the dropping syntax with - to keep the same variables as above (island to the end)

penguins |> 
  select(-("species"))
# Drop all variables from bill_length_mm to body_mass_g
penguins |> 
  select(-(bill_length_mm: body_mass_g))