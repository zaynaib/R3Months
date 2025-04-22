library(tidyverse)

# Import Data -------------------------------------------------------------

penguins <- read_csv("penguins.csv")

# Facets ------------------------------------------------------------------

# I've written code to give you a data frame to work with
# Run the code and take a look at the penguin_weight_by_species_and_sex data frame

penguin_weight_by_species_and_sex <- penguins |> 
  drop_na(sex) |> 
  group_by(species, sex) |> 
  summarize(mean_weight = mean(body_mass_g))

# Now see if you can recreate the plot below
# You'll need to adjust the theme, add plot labels, and use facetting.

ggplot(data = penguin_weight_by_species_and_sex, aes(x=species,
                                                     y =mean_weight,
                                                     fill = sex)) +
  geom_col() +
  facet_grid(cols = vars(sex))
