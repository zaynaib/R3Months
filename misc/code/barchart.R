# Load Packages -----------------------------------------------------------

library(tidyverse)

# Import Data -------------------------------------------------------------

penguins <- read_csv("misc/data/penguins.csv")

# Bar Charts --------------------------------------------------------------

# Use the v1 approach to make a bar chart that shows a count of the number of penguins by species.

ggplot(data = penguins, aes(x=species))+
  geom_bar()


# Use the v2 approach by doing the following:
# 1. Creating a new data frame called penguins_by_species that is a 
# count of the number of penguins by species
# 2. Plot your data frame using the v2 approach with geom_bar()
#identity -> use the actual variables. the default in bars is count

count_species_df = penguins %>% 
  group_by(species) %>% 
  summarise(species_count = n())

ggplot(data = count_species_df, aes(x=species,
                                    y=species_count)) +
  geom_bar(stat="identity")

# Make the same graph as above, but use geom_col() instead of geom_bar()

ggplot(data = count_species_df, aes(x=species,
                                    y=species_count)) +
  geom_col()


penguins |> 
  ggplot(aes(x = species,
             y = bill_length_mm)
  ) +
  geom_bar(stat = "summary", fun = "mean") 
