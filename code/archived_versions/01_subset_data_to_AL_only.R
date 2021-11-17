# Script to read in Apple mobility data from a csv file
# and subset the data to just include rows from Alabama
# and then write out a csv file that only has that Alabama subset

# Alaa Alazzeh
# aalazzeh@dons.usfca.edu
# August 31, 2021

# read in the complete csv file
all_covid_data <- read.csv("data/raw_data/applemobilitytrends-2021-08-30.csv")

# Susbset the data set to only include rows where the sub.region column has
# "Alabama" in it and we want all columns that only state Alabama.
alabama_data <- all_covid_data[all_covid_data$sub.region == "Alabama", ]

# save the Alabama data to a new .csv file in the output directory
write.csv(Alabama_data, file = "output/alabama_apple_mobility_data.csv")
