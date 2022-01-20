library(peopleanalyticsdata) 
library(tidyverse) 


# load and store graduates data 

graduates <- graduates

# majors with strong starting salaries 
starting_salaries <- graduates %>%
  filter(Median_salary > 50000) %>% 
  select(Discipline) %>%
  table() 

starting_salaries <- data.frame(starting_salaries) 
colnames(starting_salaries) <- c("Discipline", "Count") 
starting_salaries
