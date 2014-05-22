Getting and Cleaning Data Project
=================================

# Objective:

Merge two sets of data, test and training and create a new tidy data set,
complying with the assignment directives, i.e.:

Create one R script called run_analysis.R that does the following:

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

After completion of the script, the new file -UCI_Dataset_Tidy.csv-, will be available in the working directory.

### Process description

1) Initialisation: load reshape2 and tables with code/label correlation for activities and features.

2) Merge training and test set by row-binding the files in three steps: Subject, Activities(y) and Features(x).
	(Note: At this point part 1 of the project is achieved).

3) Rename columns with descriptive names.

4) Extract columns related to means and standard deviations.
	(At this point part 2 of the project is achieved).
	
5) Create the tidy data set merging it with the descriptive activity labels.
	(Parts 3 and 4 achieved).
	
6) Melt and calculate averages by subject/activity to complete the data set.
	(Part 5 achieved).

7) Ouput the tidy data to the working directory.

NOTE: The script itself is commented where each of the above steps are coded.
      Also, a number of messages at running time describe the flow of the script.
	

### More information about the meaning of each file and columns can be found in the CodeBook:

https://github.com/George--V/GettingAndCleaningData/blob/master/CodeBook.md

