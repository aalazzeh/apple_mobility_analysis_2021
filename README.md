# Analysis of Apple Mobility Data in the Era of COVID-19

Alaa Alazzeh  
aalazzeh@dons.usfca.edu  

The aim of this project is to analyze the mobility data made available by Apple
specifically looking at the data presented in any US state.

That data is available for download from the following URL:
https://covid19.apple.com/mobility

It currently uses dplyr to work with some of the tabular data. Eventually, it will also include use of ggplot2 to visualize the dataset.

### Change Log

* 2021-09-30: Create GitHub repository and push commits for the first time. Also added a second script to use dplyr to tally up the count of cities and counties in  a given state that have data from the different transportation types. Updated the name of 01_subset_data_to_a_state to be 01_subset_mobility_ data_to_a_state to match the function name. 
* 2021-09-27: Initialize git repository for the project
* 2021-09-25: I corrected the function subset_mobility_data_to_state to match the same name as the file exactly. Also in the 01_subset_data_to_AL_only found in the code and then archived files folder was corrected for snake_case and comma mistakes using linting.I also created a new folder called notes that contains the untouched and not clean versions of my scripts including notes_and_untouched_script_for_subset_mobility_data_to_state
* 2021-09-16: A new version of the data file was downloaded, and I also worked to refactor the code to be more general and to allow for any state to be subset from the larger file. I also created a functions folder in the code folder that includes the function to allow for any state to be subset from the data. This allowed me to simplify my script to just source the function allowing for a more clean script. Additionally I created a notes_and_not_clean_script_for_data_of_any_state that has all the notes and pre-clean up of all my work.
* 2021-08-31: The data file was originally downloaded for analysis.


