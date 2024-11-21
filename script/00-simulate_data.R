#### Preamble ####
# Purpose: simulated data
# Author: Yiyi Feng, Sakura Hu
# Date: 21 November 2024
# Contact:yiyi.feng@mail.utoronto.ca, sakura.hu@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - The `tidyverse`package and `dplyr`package must be installed and loaded
# Any other information needed? No

#### Workspace setup ####
library(tidyverse)
library(dplyr)

set.seed(333)


#### Simulate data ####

# Define valid values for STATEICP, EDUC, and EDUCD
valid_stateicps <- c("1", "2", "3", "4", "5", "6", "11", "12", "13", "14", "21", "22", "23", "24", 
                     "25", "31", "32", "33", "34", "35", "36", "37", "40", "41", "42", "43", "44", "45", 
                     "46", "47", "48", "49", "51", "52", "53", "54", "56", "61", "62", "63", "64", "65", 
                     "66", "67", "68", "71", "72", "73", "81", "82", "83", "96", "97", "98", "99")

valid_educ_values <- c("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "99")

valid_educd_values <- c("0", "1", "2", "10", "11", "12", "13", "14", "15", "16", "17", 
                        "20", "21", "22", "23", "24", "25", "26", "30", "40", "50", "60", 
                        "61", "62", "63", "64", "65", "70", "71", "80", "81", "82", "83", 
                        "90", "100", "101", "110", "111", "112", "113", "114", "115", "116", "999")

# Simulating the dataset with valid values
simulated_data <- tibble(
  YEAR = rep(2022, 1000),  # All rows have YEAR as 2022
  SAMPLE = sample(c(202204, 202203, 202202, 202201), 1000, replace = TRUE),
  STATEICP = sample(valid_stateicps, 1000, replace = TRUE),  # Sample from valid STATEICP codes
  GQ = sample(c(0, 1, 2, 3, 4, 5, 6), 1000, replace = TRUE),
  EDUC = sample(valid_educ_values, 1000, replace = TRUE),  # Sample from valid EDUC values
  EDUCD = sample(valid_educd_values, 1000, replace = TRUE)  # Sample from valid EDUCD values
)

# View the first few rows of the simulated dataset
head(simulated_data)

#### Save data ####

# Save data as a Parquet file
write_csv(simulated_data, "data/simulated_data/simulated_ACS_data.csv")

