
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


# Data Visualization ------------------------------------------------------

#Question 1
#What is Cook County childcare rate over time?

cook_data <- raw_data_childcare |> 
  filter(county_name == 'Cook County' & state_abbreviation == 'IL') |>
  mutate(study_year = as.integer(study_year))

cook_data |> ggplot(aes(x=study_year, y =median_center_infant))+
  geom_line() 

#How does Cook County compare to the state child care rate over time between in 2018
#Wisconsin, Illinois,Indiana,Minnesota

#take the average child center data in the state
#first filter for the state
chiland_childcare <- childcare_2018 |>
  filter(state_name %in% c("Wisconsin", "Illinois", "Minnesota","Missouri"))

#then use group_by + summarize
avg_childcare <- chiland_childcare |> group_by(state_name) |>
  summarize(avg = mean(median_center_infant, na.rm = TRUE))

avg_childcare |>
  ggplot(aes(x=state_name,y=avg)) +
  geom_bar(stat="identity")

#Question 3
#What is the midwest average of time
#States that make up the midwest "Wisconsin", "Illinois", "Minnesota","Missouri"

midwest_states = c("Illinois", "Iowa", "Kansas",
                   "Michigan", "Minnesota", "Nebraska","North Dakota",
                   "Ohio", "South Dakota", "Wisconsin")

midwest_states = c("Wisconsin", "Illinois", "Minnesota","Missouri")

#filter

raw_data_childcare |> filter(state_name %in% midwest_states)|>
  group_by(study_year,state_name) |>
  summarise(avg = mean(median_center_infant,na.rm = TRUE)) |>
  drop_na() |>
  ggplot(aes(x=study_year,y=avg,group=state_name,color=state_name)) +
  geom_line()

  
  



