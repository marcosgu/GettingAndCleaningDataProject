# Getting and Cleaning Data Project
Project for the Getting and Cleaning Data course from Coursera's John Hopkins Data Science Specialization.

## Scripts list
Provided scripts:

* [run_analysis.R](run_analysis.R)
Main analysis script
* [prepare_data.R](prepare_data.R)
Prepare data script
* [extract_and_tidy_data.R](extract_and_tidy_data.R)
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