# Code Book for Getting and Cleaning Data Project.
=================================================

## The original description of the data set states the following:

### Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) 
on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, 
where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters 
and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter 
into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

### Description of files and variables:

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. 
  Every row shows a 128 element vector. The same description applies for the 
  'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. 
   The units are radians/second. 

# Project - Data Analysis

## Objective

Merge two sets of data, test and training and create a new tidy data set,
complying with the assignment directives, i.e.:

Create one R script called run_analysis.R that does the following:

1.Merges the training and the test sets to create one data set.

2.Extracts only the measurements on the mean and standard deviation for each measurement. 

3.Uses descriptive activity names to name the activities in the data set

4.Appropriately labels the data set with descriptive activity names. 

5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


## Methodology

The script run_analysis.R has been created to analyse the data sets available for this research.

The analysis is carried out by merging training and test data which are separated in three files each (subject, activities and features)
(see section "Description of files and variables" above)

Also, the activity labels which are given in a separate file are merged to the new set to give descriptive names to each activity and feature.

From the the new merge set of data only the measurements related to mean and standard deviation are extracted.

Then the data is grouped by subject/activity averaging each of the measurements.

Finally, this new tidy data set is persisted as a csv file with the format and description detailed in the next section.

## Output Data

Column position, names and descriptions.

- New labels:


1 "Subject" = Identifier of the subject being measured

2 "Activity_Id" = Activity Code

3 "Activity_Name" = Corresponding Activity Description

- Measurements (see section "Description of files and variables") :

4 "tBodyAcc-mean()-X"

5 "tBodyAcc-mean()-Y"

6 "tBodyAcc-mean()-Z"

7 "tBodyAcc-std()-X"

8 "tBodyAcc-std()-Y"

9 "tBodyAcc-std()-Z"

10 "tGravityAcc-mean()-X"

11 "tGravityAcc-mean()-Y"

12 "tGravityAcc-mean()-Z"

13 "tGravityAcc-std()-X"

14 "tGravityAcc-std()-Y"

15 "tGravityAcc-std()-Z"

16 "tBodyAccJerk-mean()-X"

17 "tBodyAccJerk-mean()-Y"

18 "tBodyAccJerk-mean()-Z"

19 "tBodyAccJerk-std()-X"

20 "tBodyAccJerk-std()-Y"

21 "tBodyAccJerk-std()-Z"

22 "tBodyGyro-mean()-X"

23 "tBodyGyro-mean()-Y"

24 "tBodyGyro-mean()-Z"

25 "tBodyGyro-std()-X"

26 "tBodyGyro-std()-Y"

27 "tBodyGyro-std()-Z"

28 "tBodyGyroJerk-mean()-X"

29 "tBodyGyroJerk-mean()-Y"

30 "tBodyGyroJerk-mean()-Z"

31 "tBodyGyroJerk-std()-X"

32 "tBodyGyroJerk-std()-Y"

33 "tBodyGyroJerk-std()-Z"

34 "tBodyAccMag-mean()"

35 "tBodyAccMag-std()"

36 "tGravityAccMag-mean()"

37 "tGravityAccMag-std()"

38 "tBodyAccJerkMag-mean()"

39 "tBodyAccJerkMag-std()"

40 "tBodyGyroMag-mean()"

41 "tBodyGyroMag-std()"

42 "tBodyGyroJerkMag-mean()"

43 "tBodyGyroJerkMag-std()"

44 "fBodyAcc-mean()-X"

45 "fBodyAcc-mean()-Y"

46 "fBodyAcc-mean()-Z"

47 "fBodyAcc-std()-X"

48 "fBodyAcc-std()-Y"

49 "fBodyAcc-std()-Z"

50 "fBodyAccJerk-mean()-X"

51 "fBodyAccJerk-mean()-Y"

52 "fBodyAccJerk-mean()-Z"

53 "fBodyAccJerk-std()-X"

54 "fBodyAccJerk-std()-Y"

55 "fBodyAccJerk-std()-Z"

56 "fBodyGyro-mean()-X"

57 "fBodyGyro-mean()-Y"

58 "fBodyGyro-mean()-Z"

59 "fBodyGyro-std()-X"

60 "fBodyGyro-std()-Y"

61 "fBodyGyro-std()-Z"

62 "fBodyAccMag-mean()"

63 "fBodyAccMag-std()"

64 "fBodyBodyAccJerkMag-mean()"

65 "fBodyBodyAccJerkMag-std()"

66 "fBodyBodyGyroMag-mean()"

67 "fBodyBodyGyroMag-std()"

68 "fBodyBodyGyroJerkMag-mean()"

69 "fBodyBodyGyroJerkMag-std()"


## More information and instructions to run the analysis can be found in the README file. 

https://github.com/George--V/GettingAndCleaningData/blob/master/README.md
