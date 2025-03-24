# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv("misc/data/penguins.csv")

# filter() ----------------------------------------------------------------

# Use filter() to only keep female penguins

penguins |> 
  filter(sex == "female") |> 
  View()

# Use filter() to only keep penguins NOT on Torgersen island

penguins |> 
  filter(island != 'Torgersen') |> 
  View()

# Use filter() to only keep penguins on Torgersen island or Biscoe island
# Use the or logical operator (|) to do this

penguins |> 
  filter(island == 'Torgersen' | island == 'Biscoe') |> 
  View()

# Rewrite your filter() code above to keep the penguins from Torgersen island or Biscoe island
# This time, though, use the %in% operator

penguins |> 
  filter(island %in% c('Torgersen', 'Biscoe')) |> 
  View()

# Use a comparison operator to keep penguins with flipper lengths greater than or equal to 193 millimeters

penguins |> 
  filter(flipper_length_mm >= 193) |> 
  View()

# Drop any rows that have missing data in the flipper_length_mm variable

# Do this first with !is.na()

penguins |> 
  filter(!is.na(flipper_length_mm )) |> 
  View()

# Do this a second time with drop_na()

penguins |> 
  drop_na(flipper_length_mm ) |> 
  View()
