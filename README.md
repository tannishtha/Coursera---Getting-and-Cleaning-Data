This repository describes the course project for the course Getting and Cleaning Data on Coursera.

## Data 
The data used in this project has been collected from the accelerometers from the Samsung Galaxy S smartphone. 

## Files in the repository :
 1. analysis.R : script is run on the provided data.
 2. tidy_dataset.txt : new tidy dataset produced by analysis.R.
 3. Codebook.md : Describes the variables used in analysis.R.
 
 
## Steps in analysis.R :
 1. Downloads and unzips the data file into a directory called UCI HAR Dataset.
 2. Loads the training and test datasets and merges them.
 3. Extracts only the measurements on the mean and standard deviation for each measurement.
 4. Assigns the descriptive activity names to name the activities in the data set.
 5. Labels the data set with descriptive variable names.
 6. At the end, creates another tidy data set with the average of each variable for each activity and each subject.
