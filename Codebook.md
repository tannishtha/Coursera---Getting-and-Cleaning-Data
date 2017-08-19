Describig the variables used.

Downloads and unzips the data file into a directory called UCI HAR Dataset.
 2. Loads the training and test datasets into separate data frames for data, labels and subjects. Merges the training and test dataset of each of the data, labels and subjects data frames into three separate dataframes.
 3. Loads the features.txt file and extracts the indices of the features for which the mean and standard deviation has been canculated. Uses the wanted feature indices to extract the columns from the merged data dataframe. Then changes the column names of merged data to the names from the feature.txt file.
 4. Loads the activity_labels.txt file and gets the descriptive names for the merged labels dataframe. This merged dataframe is then merged with the complete data with the column name 'Activity'.
 5. The column name for the merged subjects dataframe is changed to 'Subject' and this dataframe is merged with the dataframe from the previous step to create the complete dataset with proper column names and descriptive activity names.
 6. The tidy dataset is created by taking the mean for each subject and each activity. The data is written in the following format : For each subject, the mean values of the measurements for the 6 activities are in 6 rows. 
