The variables used in analysis.R are described here.

1. The provided dataset is downloaded and unzipped in the working directory. The unzipped folder is called UCI HAR Dataset.
2. ```training_data```, ```training_labels``` and ```training_subject``` loads the training dataset into three dataframes for the data, activity labels and subject labels. 
3. Similarly, ```test_data```, ```test_labels``` and ```test_subject``` loads the test dataset into three dataframes. 
4. ```dataset``` is the dataframe formed by merging training_data and test_data. ```labels``` is the dataframe formed by merging training_labels and test_labels. ```subject``` is the dataframe formed by merging training_subject and test_subject. Thus, there are 3 merged dataframes so far.
5. For extracting the indices of only the measurements on the mean and standard deviation of each measurement, the features.txt file is loaded in the dataframe ```feature```.  The ```wantedFeatureId``` has the indices of the required features and it is used to extract the columns from the merged dataframe ```dataset```. The column names of ```dataset``` are changed to the names of the required features.
6. ```activity_labels``` is the dataframe produced by loading the activity_labels.txt file. The descriptive names for the activities are got from this loaded dataframe and are used in ```labels```. The column name for ```labels``` is changed to 'Activity' and it is merged with ```dataset```.
7. The column name for ```subject``` is changed to 'Subject' and this dataframe is merged with ```dataset``` to form the complete dataset with appropriate column names and descriptive activity names.
8. ```tidy_dataset``` is created by taking the mean for each subject and each activity from ```dataset```. The data is written in the following format : For each subject, the mean values of the measurements for the 6 activities are written in 6 rows. Thus for 30 subjects, there are 180 (30*6) rows. 
