# Load Packages -----------------------------------------------------------

library(tidyverse)

# Import Data -------------------------------------------------------------

penguins <- read_csv("misc/data/penguins.csv")

# Setting color and fill Aesthetic Properties -----------------------------

# Take your graph that uses geom_col() and make the inside of each bar a different color.

count_species_df = penguins %>% 
  group_by(species) %>% 
  summarise(species_count = n())

ggplot(data = count_species_df, aes(x=species,
                                    y=species_count,
                                    fill=species)) +
  geom_col()

# Make your scatterplot from before with flipper length on the x axis and body mass on the y axis
# but make the points different colors based on the island variable

ggplot(data=penguins, aes(x = flipper_length_mm, y = body_mass_g,color=island)) +
  geom_point()
