## This script is coursera Getting and Cleaning Data Project.
## It completes with the following requisites:
## 1) Merges the training and the test sets to create one data set.
## 2) Extracts only the measurements on the mean and standard deviation for 
##      each measurement. 
## 3) Uses descriptive activity names to name the activities in the data set
## 4) Appropriately labels the data set with descriptive activity names. 
## 5) Creates a second, independent tidy data set with the average of 
##      each variable for each activity and each subject. 

# Initialisation: load reshape2 and create a table for label/activity correlation
message("Process started...")

library(reshape2)
actLabel <- read.table("UCI HAR Dataset/activity_labels.txt")
feature <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = F)

# Merge the training and test sets
message("Merging datasets...")

    ## Subject
subjTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjMerged <- rbind(subjTrain, subjTest)

    ## Activity (y_)
yTest <- read.table("UCI HAR Dataset/test/y_test.txt")
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
activityMerged <- rbind(yTest, yTrain)

    ## Features (x_)
xTest <- read.table("UCI HAR Dataset/test/X_test.txt")
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
featureMerged <- rbind(xTest, xTrain)

# Set column names data
message("Setting column names...")

colnames(actLabel) <- c("Activity_Id", "Activity_Name")
colnames(feature) <- c("Feature_Position", "Feature_Name")

colnames(subjMerged) <- c("Subject")
colnames(activityMerged) <- c("Activity_Id")
colnames(featureMerged) <- feature$Feature_Name

# Grep measurement mean and standard deviation
message("Extracting mean and standard deviations...")

meansAndSd <- grep("mean\\(\\)|std\\(\\)", feature$Feature_Name)
meansAndSd <- featureMerged[meansAndSd]


# Create tidy data set
message("Building tidy dataset...")

actMergedLabel <- merge(activityMerged, actLabel)
tidyData <- cbind(subjMerged, actMergedLabel)
tidyData <- cbind(tidyData, meansAndSd)
tidyData <- melt(tidyData, id = c(1:3))
tidyData <- dcast(tidyData , 
                  Subject + Activity_Id + 
                  Activity_Name ~ variable, mean)

# Output and Exit
message("Writing to disk...")

write.csv(tidyData, "UCI_Dataset_Tidy.csv")
message("Process completed,")
message("  please find 'UCI_Dataset_Tidy.csv' in your working directory.")
