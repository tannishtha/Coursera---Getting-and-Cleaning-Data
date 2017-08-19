#download the file
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, "UCI_Dataset.zip", method="curl")

#unzip the file 
unzip("UCI_Dataset.zip")

# 1. Merge the training and test datasets to create one dataset

# Load the training data set
training_data <- read.table("UCI HAR Dataset/train/X_train.txt")
training_labels <- read.table("UCI HAR Dataset/train/y_train.txt")
training_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Load the test data set
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

#create a complete dataset from training and test data
dataset <- rbind(training_data, test_data)

#create a complete dataset of the labels
labels <- rbind(training_labels, test_labels)

#create a complete dataset of the subjects
subject <- rbind(training_subject, test_subject)


# 2. Extract only the measurements on the mean and standard deviation for each measurement.

# Load the feature dataset
feature <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = F)

#Extract the mean and standard deviation feature id
wantedFeatureId <- grep("(mean|std)\\(", feature[,2])

#extract only the columns with mean and standard deviation from the whole dataset
dataset <- dataset[, wantedFeatureId]

#give the column names to the dataset from the wanted features
colnames(dataset) <- feature$V2[wantedFeatureId]


# 3. Use descriptive activity names to name the activities in the data set. 
#load the activity label file with descriptive names
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

#Get the actual names to the dataset
labels$V1 <- activity_labels[labels$V1, 2]

#change the column name of labels
colnames(labels) <- c("Activity")

#Merge labels with the complete dataset
dataset <- cbind(labels, dataset)


# 4. Appropriately label the data set with descriptive variable names.

#Rename the column name of the subject data frame
colnames(subject) <- c("Subject")

#Merge all the dataset with the subject dataset
dataset <- cbind(subject, dataset)


#5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

#make the subject column as a factor
dataset$Subject <- as.factor(dataset$Subject)

#create the tidy dataset
tidy_dataset <- aggregate(.~Subject+Activity, dataset, mean)
tidy_dataset <- tidy_dataset[order(tidy_dataset$Subject), ]

#write the output to a file
write.table(tidy_dataset, "tidy_dataset.txt", sep="\t", quote=F, row.names = F)
