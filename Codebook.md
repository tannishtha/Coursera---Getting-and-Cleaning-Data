The variables used in analysis.R are described here.

1. The provided dataset is downloaded and unzipped in the working directory. The unzipped folder is called UCI HAR Dataset.
2. ```{training_data}```, training_labels and training_subject loads the training dataset into three dataframes for the data, activity labels and subject labels. 
3. Similarly, test_data, test_labels and test_subject loads the test dataset into three dataframes. 
4. dataset is the dataframe formed by merging training_data and test_data. labels is the dataframe formed by merging training_labels and test_labels. subject is the dataframe 
 3. Loads the features.txt file and extracts the indices of the features for which the mean and standard deviation has been canculated. Uses the wanted feature indices to extract the columns from the merged data dataframe. Then changes the column names of merged data to the names from the feature.txt file.
 4. Loads the activity_labels.txt file and gets the descriptive names for the merged labels dataframe. This merged dataframe is then merged with the complete data with the column name 'Activity'.
 5. The column name for the merged subjects dataframe is changed to 'Subject' and this dataframe is merged with the dataframe from the previous step to create the complete dataset with proper column names and descriptive activity names.
 6. The tidy dataset is created by taking the mean for each subject and each activity. The data is written in the following format : For each subject, the mean values of the measurements for the 6 activities are in 6 rows. 
