#### Preamble ####
# Purpose: Simulates the number of shooting incidents from 2004 to 2023
# Author: Hyungsoo Park
# Date: 21 January 2024
# Contact: hyungsoo.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: NA
# Any other information needed? NA


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
# set seed for the simulation
set.seed(1002415488)
number_simulations <- 1000
# set a sequence of dates (year) from 2004 to 2024 and divisions.
years <- c(2004:2023)
divisions <- c("D11", "D12", "D13", "D14", "D22","D23","D31","D32","D33","D41",
               "D42","D43","D51","D52","D53","D54","D55")
# Simulate 1000 times
rep(c(sample(years), sample(divisions)))



