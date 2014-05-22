Getting and Cleaning Data Project
=================================

# Objective:

Merge two sets of data, test and training and create a new tidy data set,
complying with the assignment directives, i.e.:

Create one R script called run_analysis.R that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive activity names. 
5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Input Data:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Additional information (optional read)

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

# Assumptions:

* The input data should be unzipped and placed in the working directory.

* Package reshape2 should already be installed on R.

# Instructions:

* Unzip the input data keeping folder structure.

* Move the unzipped folder structure to the working directory.

* Execute script run_analysis.R

# Output:

After completion of the script, the new file -UCI_Dataset_Tidy.csv-, will be available in the working directory
