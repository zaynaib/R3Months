# Load Packages -----------------------------------------------------------

library(tidyverse)

# Import Data -------------------------------------------------------------

penguins <- read_csv("misc/data/penguins.csv")

# Setting color and fill Scales -------------------------------------------

# Take your scatterplot that you just made and add a scale using scale_color_manual(). 
# You can find a list of all colors you can use here:
# https://www.datanovia.com/en/blog/awesome-list-of-657-r-color-names/

ggplot(data=penguins, aes(x = flipper_length_mm, y = body_mass_g,color=island)) +
  geom_point() +
  scale_color_manual(values = c("brown1","burlywood4","darkgreen"))
                     


# Now update the last bar chart you made by manually specifying colors of the bars

count_species_df = penguins %>% 
  group_by(species) %>% 
  summarise(species_count = n())

ggplot(data = count_species_df, aes(x=species,
                                    y=species_count,
                                    fill=species)) + geom_col() +
  scale_color_manual(values = c("darkred","darkgreen","darkgoldenrod4"))




# Update your bar chart using the scale_fill_viridis_d() function instead of
# scale_fill_manual()

# YOUR CODE HERE
