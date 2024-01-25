#### Preamble ####
# Purpose: Simulates the number of shooting incidents from 2004 to 2023
# Author: Hyungsoo Park
# Date: 21 January 2024
# Contact: hyungsoo.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: NA
# Any other information needed? NA


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)

#### Download data ####
# get package
package <- show_package("4bc5511d-0ecf-487a-9214-7b2359ad8f61")
package

# get all resources for this package
resources <- list_package_resources("4bc5511d-0ecf-487a-9214-7b2359ad8f61")

# identify datastore resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the data resource
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data

#### Save data ####
write_csv(data, "inputs/data/unedited_shooting_incidents.csv")
