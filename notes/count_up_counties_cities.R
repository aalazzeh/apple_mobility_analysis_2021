# Script to read in Apple mobility data from a csv file
# and subset the data to just include rows from any particular US state
# and should tally the rows grouped by city/county and transportation type
# and then write out a csv file that contains the tallied grouped city/county
# and transportation type


# Alaa Alazzeh
# aalazzeh@dons.usfca.edu
# September 30, 2021

# create a function to subset any US state out of the full dataset
# by using dplyr and then creating two distinct groups for city and county
# and then tallying up the grouped rows. This should also create an output
# CSV file that is named based on the input file name and the internal contents


# load the package "dplyr"
library("dplyr")


# We would like to get a count of the number of cities and the
# number of counties in a given state that have driving mobility
# data. The input to this will be the output of the previous script
# namely the state csv files that were already subsetted.

count_up_counties_cities <- function(input_file_name,
                                  state_to_subset,) {

  # load in the dataset from the previous script
  input_file_name <- "output/"
  state_data <- read.csv(input_file_name)


  # Subset the data set to only include rows where the sub.region column has
  # The state name in it and we want all columns.
  state_data <- all_covid_data[all_covid_data$sub.region == state_to_subset, ]

  # check that the subsetted data actually has data in it
  if (nrow(state_data) == 0) {
    stop("ERROR: No rows matching given state name. Did you make a typo?")
  }

  # starting off with dplyr chains
  tally_cities_counties_by_type <- state_data %>%
    select(geo_type, region, transportation_type) %>%
    group_by(geo_type, transportation_type) %>%
    tally()

  # save the state data to a new .csv file in the output directory
  write.csv(state_data, file = paste0("output/",
                                      tools::file_path_sans_ext(basename(
                                        input_file_name)),
                                      "_",
                                      state_to_subset,
                                      ".csv"))


  }



                                  }
