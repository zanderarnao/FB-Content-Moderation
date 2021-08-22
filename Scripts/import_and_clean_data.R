# load required libraries

library(tidyverse)
library(here)

# revision notes: revise the file path used when importing and saving the data 

# import Facebook Transparency Report content moderation data and save as tibble

fb_cmod_data <- read_csv(here("data/Facebook-Transparency-Data.csv")) %>% 
  as_tibble() 

# tidy the resulting data frame

# replace "N/A" with with missing values in "metrics" column
  
x1 <- na_if(fb_cmod_data$value, "N/A")

fb_cmod_clean1 <- fb_cmod_data %>% 
  mutate(value = x1)

#  filter(value != "N/A", !is.na(value))
  
# remove commas and percent signs from "value" and make numeric
 
x2 <- fb_cmod_clean1$value %>% 
  str_replace_all(",", "") %>% 
  str_replace("%", "")
    # circle back to condense these into one replace function

fb_cmod_clean2 <- fb_cmod_clean1 %>% 
  mutate(value = as.numeric(x2)) 
  
# pivot and rename our 5 variables of interest: n_actions, n_appeals,
  #  n_restore_appl, n_restore_no_appl, and proactive_rate

fb_cmod_clean3 <- fb_cmod_clean2 %>% 
  pivot_wider(id_cols = c(app, period, policy_area), 
    names_from = metric, values_from = value) %>% 
  
  rename(n_actions = "Content Actioned", n_appeals = "Content Appealed",
         n_restore_appl = "Content Restored with appeal", 
         n_restore_no_appl = "Content Restored without appeal",
         proactive_rate = "Proactive rate")

# separate "period" column "year" and "quarter"

fb_cmod_clean4 <- fb_cmod_clean3 %>% 
  separate("period", c("year", "quarter"), 
           sep = 4, remove = TRUE, convert = TRUE) 

# remove "Q" from "quarter" and make numeric
  # also turn "proactive_rate" into a proportion

x3 <- fb_cmod_clean4$quarter %>% str_replace("Q", "")

fb_cmod_clean5 <- fb_cmod_clean4 %>% 
  mutate(quarter = as.numeric(x3)) %>% 
  mutate(proactive_rate = (proactive_rate / 100))

# split into two data frames, one for Facebook and one for Instagram
  # We also select variables of interest (i.e. exclude "prevalence"-related variables)
  # Prevalence-related variables are excluded because many observations from
  # the original data are missing.

fb_cmod_tidy <- fb_cmod_clean5 %>% 
  filter(app == "Facebook") %>% 
  select(year:proactive_rate)

insta_cmod_tidy <- fb_cmod_clean5 %>% 
  filter(app == "Instagram") %>% 
  select(year:proactive_rate)

# save tidied data as .csv

fb_cmod_tidy %>% write_csv(here("data/Facebook-Content-Moderation-Data.csv"))

insta_cmod_tidy %>% write_csv(here("data/Instagram-Content-Moderation-Data.csv"))

