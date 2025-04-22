# Load Packages -----------------------------------------------------------

library(tidyverse)

# Import Data -------------------------------------------------------------

penguins <- read_csv("misc/data/penguins.csv")

# Histograms --------------------------------------------------------------

# Make a histogram that shows the distribution of the body_mass_g variable.

# YOUR CODE HERE
ggplot(data = penguins, aes(x = body_mass_g)) +
  geom_histogram()

# Adjust your histogram so it has 50 bins.

ggplot(data = penguins, aes(x = body_mass_g)) +
  geom_histogram(bins = 50)
