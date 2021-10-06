# Goal is to create a function to turn the wide subsetted data into long data
# to better functionalize the data sets for further analysis and to correct
# discrepencies in the script and write out a new csv

# Alaa Alazzeh
# September 29, 2021
# aalazzeh@dons.usfca.edu



# load in dplyr
library("dplyr")

# function for subsetting
wide_subset_data_to_long <- function(input_file_name) {
  # read in any state csv to load in the subsetted data files
  subset_state_mobility_data <- readr::read_csv(input_file_name)


  # Convert the wide subsetted state data into long data using tidyr
  long_subset_state <- tidyr::pivot_longer(subset_state_mobility_data,
                                           cols = starts_with("202"),
                                           names_to = "date",
                                           values_to = "relative_mobility")


  # write a csv to save the new long subsetted state mobility data in a new
  # output folder
  readr::write_csv(subset_state_mobility_data, file = paste0("output/",
                                                "long_subsetted_state/",
                                                tools::file_path_sans_ext(
                                                  basename(input_file_name)),
                                                "_subset_state_long_data.csv"))
}
