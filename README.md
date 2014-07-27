# Getting and Cleaning Data Project
Project for the Getting and Cleaning Data course from Coursera's John Hopkins Data Science Specialization.

## Scripts list
Provided scripts:

* [run_analysis.R](run_analysis.R)
The main analysis script. 
Reads the UCI HAR Dataset and creates a tidy dataset that can be used to perform later analysis, saving it to a text file.
Uses two auxiliary scripts (prepare_data.R and extract_and_tidy_data.R).

* [prepare_data.R](prepare_data.R)
The prepare data script. 
Reads the test and train data parts and merges them together in a single dataset.
Also sets the activity and feature labels to make the data more readable.

* [extract_and_tidy_data.R](extract_and_tidy_data.R)
Extract and tidy data script.
Extracts the activity and subject column along with every other column that stores mean or standard deviation data.
Also tidies up the variable names so they comply with the R etiquette.

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