# Getting-and-Cleaning-Data-Course-Project_UCI-HAR-

This Getting and Cleaning Data Course project uses Human Activity Recognition Using Smartphones Dataset (Version 1.0), which obtains a group of 30 volunteers (19-48 years old) performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The subject wear a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The dataset can found here (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), which includes the following files:
=========================================
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.


The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.
Preparing a tidy data is key for later analysis.


Based on the instructions of this project assignment. run_analysis.R was written in the following 5 steps.
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names. 
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Codebook.md file indicates all the variables and summaries calculated, along with units, and any other relevant information, in order to get the tidy data.

README.md explains the project, its purpose and related analysis files.

