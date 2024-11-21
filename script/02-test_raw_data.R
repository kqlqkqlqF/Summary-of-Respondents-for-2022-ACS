#### Preamble ####
# Purpose: Tests the raw data
# Author: Yiyi Feng, Sakura Hu
# Date: 21 November 2024
# Contact:yiyi.feng@mail.utoronto.ca, sakura.hu@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - The `tidyverse`, `testthat` package must be installed and loaded
# Any other information needed? No

#### Workspace setup ####
library(readr)
library(tidyverse)
library(testthat)

# Read the data
raw_data <- read_csv(file = "data/usa_00001.csv", show_col_types = FALSE)

#### Test data ####

# Test 0: Ensure there are no NA values in the dataset
test_that("No missing values in the dataset", {
  expect_false(any(is.na(raw_data)), info = "There are NA values in the dataset.")
})

# Test 1: All values in the YEAR column are 2022
test_that("All values in YEAR column are 2022", {
  expect_true(all(raw_data$YEAR == 2022), info = "Some rows have a YEAR different from 2022.")
})

# Define valid SAMPLE values
valid_samples <- c(202204, 202203, 202202, 202201)

# Test 2: SAMPLE column contains only valid values
test_that("SAMPLE column contains only valid values", {
  expect_true(all(raw_data$SAMPLE %in% valid_samples), info = "Some rows in SAMPLE contain invalid values.")
})

# Define valid STATEICP codes
valid_stateicps <- c("1", "2", "3", "4", "5", "6", "11", "12", "13", "14", "21", "22", "23", "24", 
                     "25", "31", "32", "33", "34", "35", "36", "37", "40", "41", "42", "43", "44", "45", 
                     "46", "47", "48", "49", "51", "52", "53", "54", "56", "61", "62", "63", "64", "65", 
                     "66", "67", "68", "71", "72", "73", "81", "82", "83", "96", "97", "98", "99")

# Test 3: STATEICP column contains only valid state codes
test_that("STATEICP column contains only valid state codes", {
  expect_true(all(raw_data$STATEICP %in% valid_stateicps), info = "Some rows in STATEICP contain invalid state codes.")
})

# Define valid GQ values
valid_gq_values <- c(0, 1, 2, 3, 4, 5, 6)

# Test 4: GQ column contains only valid values
test_that("GQ column contains only valid values", {
  expect_true(all(raw_data$GQ %in% valid_gq_values), info = "Some rows in GQ contain invalid values.")
})

# Define valid EDUC values
valid_educ_values <- c("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "99")

# Test 5: EDUC column contains only valid values
test_that("EDUC column contains only valid values", {
  expect_true(all(raw_data$EDUC %in% valid_educ_values), info = "Some rows in EDUC contain invalid values.")
})

# Define valid EDUCD values
valid_educd_values <- c("0", "1", "2", "10", "11", "12", "13", "14", "15", "16", "17", 
                        "20", "21", "22", "23", "24", "25", "26", "30", "40", "50", "60", 
                        "61", "62", "63", "64", "65", "70", "71", "80", "81", "82", "83", 
                        "90", "100", "101", "110", "111", "112", "113", "114", "115", "116", "999")

# Test 6: EDUCD column contains only valid values
test_that("EDUCD column contains only valid values", {
  expect_true(all(raw_data$EDUCD %in% valid_educd_values), info = "Some rows in EDUCD contain invalid values.")
})
