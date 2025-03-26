
# Load Packages -----------------------------------------------------------
library(tidyverse)

# Import data -------------------------------------------------------------

raw_data_childcare <- read_csv('data-raw/childcare_infants.csv')
counties <- read_csv('data-raw/counties.csv')

# Questions about the data ------------------------------------------------

childcare_2018 <- raw_data_childcare %>% 
  filter(study_year == 2018) 

#Question 1 - which state has the highest poverty


childcare_2018 %>% 
  group_by(state_name) %>% 
  summarise(high_poverty = max(poverty_families,na.rm = TRUE)) %>% 
  arrange(desc(high_poverty)) %>% 
  View()


#Question 2 - who has the lowest childcare
raw_data_childcare %>% 
  drop_na(median_center_infant) %>% 
  filter(study_year == 2018) %>% 
  group_by(state_name) %>% 
  summarise(low_childcare = min(median_center_infant)) %>% 
  arrange(low_childcare)

raw_data_childcare %>% 
  filter(study_year == 2018) %>% 
  group_by(state_name) %>% 
  summarise(max_income = max(median_income_2018)) %>% 
  arrange(desc(max_income))
  

raw_data_childcare %>% 
  filter(study_year == 2018 & state_name == 'Virginia') %>% 
  View()
  
