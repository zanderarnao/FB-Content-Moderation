# load necessary libraries
library(tidyverse)
library(knitr)
library(here)

# design a function that mutates a numeric "year.quarter" variables for visualizations
  # I do this instead of editing the tidy script so as to 
    # keep the "year" and "quarter" variables separate

year_quarter_f <- function(x) {
  mutate(x, quarter = quarter * 2) %>% # multiply by two for better visuals
  unite(year_quarter, year, quarter, sep = ".") %>% 
  mutate(year_quarter = as.numeric(year_quarter))
}


# duplicate "year_quarter()` but don't multiply by 2

year_quarter_f2 <- function(x) {
    unite(x, year_quarter, year, quarter, sep = ".") %>% 
    mutate(year_quarter = as.numeric(year_quarter))
}

