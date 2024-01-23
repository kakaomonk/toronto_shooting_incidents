#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)
# [...UPDATE THIS...]

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
