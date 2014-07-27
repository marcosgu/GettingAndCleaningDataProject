# Getting and Cleaning Data Project
Project for the Getting and Cleaning Data from Coursera's John Hopkins Data Science Specialization.

## Scripts list
Provided scripts:

* [a relative link](run_analysis.R)
Main analysis script
* [a relative link](prepare_data.R)
Prepare data script
* [a relative link](extract_and_tidy_data.R)
Extract and tidy data script

## Requirements
Place all the scripts in the root folder of the UCI HAR Dataset, so the scripts have access to:
* test folder
* train folder
* features.txt
* activity_labels.txt

## Usage
To run the analysis script:

	source("run_analysis.R")
	
The script will create a results.txt result file.