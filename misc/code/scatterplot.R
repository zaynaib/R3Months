# Load Packages -----------------------------------------------------------

library(tidyverse)

# Import Data -------------------------------------------------------------

penguins <- read_csv("misc/data/penguins.csv")

# Scatterplots ------------------------------------------------------------

# Make a scatterplot that shows flipper length on the x axis and body mass on the y axis.

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point()
