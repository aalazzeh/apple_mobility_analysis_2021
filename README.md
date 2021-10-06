# Analysis of Apple Mobility Data in the Era of COVID-19

Alaa Alazzeh  
aalazzeh@dons.usfca.edu  

The aim of this project is to analyze the mobility data made available by Apple
specifically looking at the data presented in any US state.

That data is available for download from the following URL:
https://covid19.apple.com/mobility

It currently uses dplyr to work with some of the tabular data. Eventually, it will also include use of ggplot2 to visualize the dataset.

### Change Log

* 2021-10-05: Created a function that will turn the wide subsetted apple mobility data into long data. I changed the name of my first script because of lintr recommendations to make it shorter and changed the appropriate function name accordingly (referring to 01 script). I also went back into 01_subset_data_to_a_state and 02_state_tally_data scripts to revise the read.csv and write.csv to readr::read_csv and readr::write_csv. This fixed how the dates were shown on the subsetted state data files to be the correct date format. In the subset_data_to_a_state function, I corrected the name of sub.region to sub-region and also added an argument to ensure state names do not have spaces. I also simplified my first script (01_subset_data_to_a_state) to use dplyr chain to subset the data instead of baseR. In my second script (02_state_tally_data) I revised the for loop to work by using the list.files which simplified the code.
* 2021-1O-03: Created a function that will tally up the count of cities and counties in any given state that have data from different transportation types. This allowed me to simplify my 02_count_up_counties_cities. R script. I also updated my first script that subsetted the state data (01_subset_data_to_a_state) to run in a for loop for five different states. I then updated the second script for tallying the subsetted state data with a for loop that would perform the tally for the five states from the first script. I also created two new folders within the output folder that are for the 01_subset_state_data and 02_state_tally_data. These both will hold the outputs for the first script and second script respectively. I also pushed commits and pushed up to github
* 2021-09-30: Create GitHub repository and push commits for the first time. Also added a second script to use dplyr to tally up the count of cities and counties in  a given state that have data from the different transportation types. Updated the name of 01_subset_data_to_a_state to be 01_subset_mobility_ data_to_a_state to match the function name. 
* 2021-09-27: Initialize git repository for the project
* 2021-09-25: I corrected the function subset_mobility_data_to_state to match the same name as the file exactly. Also in the 01_subset_data_to_AL_only found in the code and then archived files folder was corrected for snake_case and comma mistakes using linting.I also created a new folder called notes that contains the untouched and not clean versions of my scripts including notes_and_untouched_script_for_subset_mobility_data_to_state
* 2021-09-16: A new version of the data file was downloaded, and I also worked to refactor the code to be more general and to allow for any state to be subset from the larger file. I also created a functions folder in the code folder that includes the function to allow for any state to be subset from the data. This allowed me to simplify my script to just source the function allowing for a more clean script. Additionally I created a notes_and_not_clean_script_for_data_of_any_state that has all the notes and pre-clean up of all my work.
* 2021-08-31: The data file was originally downloaded for analysis.


