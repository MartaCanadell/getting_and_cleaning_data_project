# Getting and Cleaning Data - Course Project
## Repo for the submission of the course project for the Getting and Cleaning Data course.

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

In this repo you will find the following files:
 - [README.md]: explains the analysis files is clear and understandable.
 - [CodeBook.md]: a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
 - [run_analysis.R]: the project R-code to perform the data analysis.
 - [tidyData.txt]: the project solution, that is, the clean data set as a txt file, obtained through run_analysis.R.


The R script, [run_analysis.R], does the following
 - We assume the Samsung data from
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
is already in our working directory.
 - Then, the R-file computes the following: Merges the training and the test sets to create one data set (named *AllData*), extracts only the measurements on the mean and standard deviation for each measurement, uses descriptive activity names to name the activities in the data set, appropriately labels the data set with descriptive variable names, and finally, it creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 - This tidy data set can be found in [tidyData.txt].
