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

# We would like to get a count of the number of cities, the
# number of counties, and transportation type in a given state that have
# mobility data. The input to this will be the output of the previous script
# namely the state csv files that were already subsetted.

count_up_counties_cities <- function(input_file_name) {
  # read in the last csv file, load in the dataset from the previous script
  state_data <- readr::read_csv(input_file_name)

  # Use dplyr chain to group each state by city, county and then
   # transportaion type
    tally_cities_counties_by_type <- state_data %>%
    select(geo_type, region, transportation_type) %>%
    group_by(geo_type, transportation_type) %>%
    tally()

    # check that tally data actually has data in it
    if (nrow(tally_cities_counties_by_type) == 0) {
      stop("ERROR: No tally. Did you make a typo?")
    }


  # save the state data to a new .csv file in the output directory
  # write out the result of the dplyr chain
  readr::write_csv(tally_cities_counties_by_type,
            file = paste0("output/02_state_tally_data/",
                                      tools::file_path_sans_ext(basename(
                                        input_file_name)),
                                      "_tally_cities_counties.csv"))

  # return the tallied data frame
  return(tally_cities_counties_by_type)
}
