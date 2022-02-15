Codebook.md file indicates all the variables and summaries calculated, along with units, and any other relevant information, in order to get the tidy data.

1.Read the train and test datasets about Human activity recognition using smartphones.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

2.Extract the 66 measurement variables on the mean and standard deviation.

3.Name the activities variables in the dataset using features.txt

4.Label the data set with descriptive variable names.

5.Create a second, independent tidy data set by columns combining with the average of each variable for each activity and each subject by using ddply function.
  new_data is the combined train & test dataset with clean variable names.
  
6.Output the final average_summary dataset into .txt file.
  average_summary is the final the average of each mean/sd measurement variable for each activity and each subject.

