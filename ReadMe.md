# README

## PROJECT DESCRIPTION

This repo contains the files for the "Getting and Cleaning Data Course Project."  The goal is to take raw data from several files and create a tidy dataset for future analysis.

The raw data for the project is from the UCI Machine Learning Repository, namely the "Human Activity Recognition (HAR) Using Smartphones Data Set."  Detailed information about the source is found here:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

More information on the original study and the data are also found in the readme.txt and features_info.txt files that are part of the dataset.

## CONTENTS

This repo contains the following files:

* R script that converts the raw data into a tidy dataset
* Codebook that details the data and all variables
* ReadMe that describes the analysis process
* Tidy dataset

## SCRIPT

The `run_analysis.r` script contains the R code to take the raw data and turn it into a tidy summary.  Note that it requires the `dplyr` package be installed.  

The script contains the following steps:

1. Download and unzip the entire UCI HAR dataset.
2. Read the features file to get the variable names for the data, and turn them into readable, valid, unique names.
3. Read the test and training data sets, and give them their proper column names.
4. Read the subject and activity files, and add them as columns to the data files.
5. Combine the test and training data into one comprehensive file with all the labels.
6. Read the activity labels, and change the activity numbers into descriptive labels.
7. Identify the columns that contain any mean or standard deviation data, and create a subset with only those columns.
8. Create a tidy data file that contains the means of the selected columns, summarized by activity and subject.

**Please note:**  I added labels to the test and training data BEFORE merging the two files.  That's different from the project instructions but I believe it is actually BETTER practice, to make sure that data is labeled immediately, before making any other changes (such as merging with other data).

## TIDY FILE

The output of the script is a tidy dataset.  The format is "wide" = 180 rows by 82 columns, and it is tidy because:
* There is one observation in each row (one for each of the 180 activity/subject combinations)
* There is one variable in each column (the average of the 79 mean/std dev columns)
* The activity labels and column names are descriptive and in proper format

The script also writes the output to a csv file, but other file formats could be used.
