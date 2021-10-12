# Script to read in Apple mobility data from a csv file
# and subset the data to just include rows from any particular US state
# and then write out a csv file that only has that subset

# Alaa Alazzeh
# aalazzeh@dons.usfca.edu
# September 16, 2021

# Load dplyr package
library("dplyr")

# create a function to subset any US state out of the full dataset
# this should also create an output CSV file that is named based on the state
# that is subsetted
subset_data_to_a_state <- function(input_file_name,
                                           state_to_subset) {
   # read in the complete csv file
  all_covid_data <- readr::read_csv(input_file_name)


  # Subset the data set to only include rows where the sub.region column has
  # The state name in it and we want all columns. Use dplyr for this and chnage
  # the name from sub.region to sub-region
    state_data <- all_covid_data %>%
    dplyr::filter(`sub-region` == state_to_subset)

  # check that the subsetted data actually has data in it
  if (nrow(state_data) == 0) {
    stop("ERROR: No rows matching given state name. Did you make a typo?")
  }


  # ensures state name doesn't have any spaces ex. New_York instead of New York
  state_no_spaces <- gsub(state_to_subset, pattern = " ", replacement = "_")

  # return the subsetted data frame
  return(state_data)

  # save the state data to a new .csv file in the output directory
  readr::write_csv(state_data, file = paste0("output/01_subset_state_data/",
                                    tools::file_path_sans_ext(basename(
                                      input_file_name)),
                                    "_",
                                    state_to_subset,
                                    ".csv"))

}
