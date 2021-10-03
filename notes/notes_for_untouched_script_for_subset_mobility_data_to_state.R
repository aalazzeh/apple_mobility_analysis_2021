# NOTES and NOT CLEANED 01_subset_data_to_a_state script only for
# the purpose of looking at the testing varibales function that was removed
# from the final version of the script and the function that was
# taken out from the final cleaned up script as well



# Script to read in Apple mobility data from a csv file
# and subset the data to just include rows from any particular US state
# and then write out a csv file that only has that subset

# Alaa Alazzeh
# aalazzeh@dons.usfca.edu
# September 16, 2021

# testing variables for the function
input_file_name <- "data/raw_data/applemobilitytrends-2021-09-15.csv"
state_to_subset <- "California"

# create a function to subset any US state out of the full dataset
# this should also create an output CSV file that is named based on the sate
# that is subsetted
subset_mobility_data_to_state <- function(input_file_name,
                                          state_to_subset) {
  # read in the complete csv file
  all_covid_data <- read.csv(input_file_name)

  # Subset the data set to only include rows where the sub.region column has
  # The state name in it and we want all columns.
  state_data <- all_covid_data[all_covid_data$sub.region == state_to_subset, ]

  # check that the subsetted data actually has data in it
  if (nrow(state_data) == 0) {
    stop("ERROR: No rows matching given state name. Did you make a typo?")
  }

  # save the state data to a new .csv file in the output directory
  write.csv(state_data, file = paste0("output/",
                                      basename(input_file_name),
                                      "_",
                                      state_to_subset,
                                      ".csv"))

}

# test out the use of the function
subset_mobility_data_to_state(
  input_file_name = "data/raw_data/applemobilitytrends-2021-09-15.csv",
  state_to_subset = "California")
