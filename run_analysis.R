install.packages("reshape2")
library(plyr)
library(reshape2)
## Getting and Cleaning Data Course Project using UCI HAR Datasets.
## Import activity labels and features.
dir()
labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
View(features)
str(features)

## Read the train and test datasets about Human activity recognition using smartphones.
subject_train <- read.table("train/subject_train.txt")
View(subject_train)
str(subject_train)

x_train <- read.table("train/X_train.txt")
View(x_train)
str(x_train)

y_train <- read.table("train/y_train.txt")
View(y_train)
str(y_train)

subject_test <- read.table("test/subject_test.txt")
str(subject_test)

x_test <- read.table("test/X_test.txt")
str(x_test)

y_test <- read.table("test/y_test.txt")
str(y_test)


## Merge the train and test datasets together.
x_tt <- rbind(x_train, x_test)
str(x_tt)
y_tt <- rbind(y_train, y_test)
View(y_tt)

subject_tt <- rbind(subject_train, subject_test)
View(subject_tt)

#range(colSums(is.na(x_tt))) #There's no missing data in x_tt.
#range(colSums(is.na(y_tt))) #There's no missing data in y_tt.
#range(colSums(is.na(subject_tt)))

## Extract the measurements on the mean and standard deviation for each measurement.
mean_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

x_tt <- x_tt[,mean_std_features]
View(x_tt)
str(x_tt) ## 66 variables related to the mean and standard deviation for each measurement in x_tt.

## Name the activities variables in the dataset.
labels
table(y_tt[,1]) #Summarize the 6 activities.
y_tt[,1] <- labels[y_tt[,1],2]

## Label the data set with descriptive variable names.
names(x_tt) <- features[mean_std_features, 2]
names(y_tt) <- "label"
names(subject_tt) <- "subject"

## Create a second, independent tidy data set by columns combining.
## with the average of each variable for each activity and each subject by using ddply function.
new_data <- cbind(subject_tt, x_tt, y_tt)
str(new_data)
View(new_data)
average_summary <- ddply(new_data, .(subject, label), function(x) colMeans(x[, 2:67]))
View(average_summary)
str(average_summary) # average_summary dataset contains the mean of each variable by each subject and each label. 
