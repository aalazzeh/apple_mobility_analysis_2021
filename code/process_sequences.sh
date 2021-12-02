#!/bin/bash

# Alaa Alzzeh
# aalazzeh@dons.usfca.edu
# November 16, 2021

# the script will calculate and report out the total number of sequences in the sars_cov_2
# fasta file provided from 2021-10-24. It wll also tally up the number of SARS-CoV-2
# sequences if the dataset from each country and sort the output from largest to smallest

# Check to see if there is a command argument present 
if  [ $# -eq 0 ]
then 
	echo "No argument provided"
	echo "To run this script, provide an argument"
	echo "Make sure to include path to a fasta file" 
	exit 1
fi

# Check to see if file contains data in the file
if ! grep -q '[^[:space:]]' "$1"; then
    echo "file is empty"
else
    echo "File has data"
fi


# Output a report containing the total number of sequences in the SARS-CoV-2 fasta file 
	echo "Total number of sequences:"
	bioawk -c fastx 'END{print NR}' "$1"


# Output a tally of the total number of SARS-CoV-2 sequences in the dataset from 
# each country sorted from largest to smallest
	bioawk -c fastx '{print $comment}' "$1" | awk '{split($0,x,"|");print x[21]}' | sort | uniq -c | sort -rn 


