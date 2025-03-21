library(tidyverse)

penguins <- read_csv('misc/data/penguins.csv')

penguins

penguins |> 
  select(bill_length_mm)

penguins |>
  select(contains("bill"))

penguins |> 
  select(-bill_length_mm)

penguins |> 
  select(-(bill_length_mm:flipper_length_mm))

#helper functions for select
#- contains, starts_with,ends_with
#- : var1:varN - selects a range of functions
# -var -means select everything but this variable