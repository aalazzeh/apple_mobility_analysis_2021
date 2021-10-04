# the goal of this script is to use the dplyr package to count up the
# number of cities and counties in a given state that have detailed
# Apple mobility data available and then eventually to save it to a csv

# Alaa Alazzeh
# September 30, 2021
# aalazzeh@dons.usfca.edu

# load the package "dplyr"
library("dplyr")


# We would like to get a count of the number of cities and the
# number of counties in a given state that have driving mobility
# data. The input to this will be the output of the previous script
# namely the state csv files that were already subsetted.

source("code/functions/count_up_counties_cities.R")

# load in the dataset from the previous script
for (file_state in c("Montana", "Alaska", "Utah", "Colorado",
                     "Arizona")) {
count_up_counties_cities(input_file_name =
        paste0("output/01_subset_state_data/applemobilitytrends-2021-09-29_",
                                     file_state, ".csv"))
        }
