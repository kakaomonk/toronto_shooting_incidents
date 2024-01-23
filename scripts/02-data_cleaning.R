#### Preamble ####
# Purpose: Cleans all rows with 'na' value and collect only useful columns.
# Author: Hyungsoo Park
# Date: 22 January 2024
# Contact: hyungsoo.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: NA
# Any other information needed? NA

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("inputs/data/unedited_shooting_incidents.csv")

cleaned_data <- 
  raw_data |>
  select(EVENT_UNIQUE_ID, OCC_YEAR, OCC_MONTH, OCC_TIME_RANGE, DIVISION) |>
  tidyr::drop_na()

#### Save data ####
write_csv(cleaned_data, "outputs/data/cleaned_shooting_incidents.csv")

