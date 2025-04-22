
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
childcare_2018 %>%  
  drop_na(median_center_infant) %>% 
  group_by(state_name) %>% 
  summarise(low_childcare = mean(median_center_infant)) %>% 
  arrange(low_childcare)

#Question 3 - which county in illinois pays the most of childcare
childcare_2018 %>%  
  filter(state_name == 'Illinois') %>% 
  arrange(desc(median_center_infant)) %>% 
  select(county_name,median_income_2018,median_center_infant,poverty_families)

# In 2018 childcare was about 1140 a month in Illinois. Now 2025 childcare is about 2k in Illinois
  


