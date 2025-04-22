# Load Packages -----------------------------------------------------------

library(tidyverse)

# Import Data -------------------------------------------------------------

penguins <- read_csv("penguins.csv")

# Setting x and y Scales --------------------------------------------------

# Copy the code for the last bar chart you made
# Update it so that the y axis goes from 0 to 200


count_species_df = penguins %>% 
  group_by(species) %>% 
  summarise(species_count = n())



ggplot(data = count_species_df, aes(x=species,
                                    y=species_count)) +
  geom_col() +
  scale_y_continuous(limits = c(0,200))




# Copy the code you just wrote
# Update it so that it has breaks on the y axis at 0, 40, 80, 120, and 160
ggplot(data = count_species_df, aes(x=species,
                                    y=species_count,
                                    fill = species)) +
  geom_col() +
  scale_fill_viridis_d() +
  scale_y_continuous(limits = c(0,200), breaks = c(0,40,80,120,160))
