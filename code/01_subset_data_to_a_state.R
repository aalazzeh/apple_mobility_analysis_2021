# Script to read in Apple mobility data from a csv file
# and subset the data to just include rows from any particular US state
# and then write out a csv file that only has that subset
# uses functions in the code/function directory

# Alaa Alazzeh
# aalazzeh@dons.usfca.edu
# September 16, 2021

# load functions
source("code/functions/01_subset_data_to_a_state.R")

# test out the use of the function
subset_mobility_data_to_state(
  input_file_name = "data/raw_data/applemobilitytrends-2021-09-15.csv",
  state_to_subset = "California")
