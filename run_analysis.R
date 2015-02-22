DatasetDir <- "UCI HAR Dataset"

if (!file.exists(paste("./", DatasetDir, sep=""))) {
   message("Error!  UCI HAR Dataset folder does not exist")
}

library(dplyr)

# try x_train <- tbl_df() 

## Read the features and activities
features <- read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Read in the training data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

## Read in the test data
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

## Add the training subject and training activity code  
## to the training data
train_combo <- cbind(x_train, subject_train, y_train)

## Add the training subject and training activity code  
## to the training data
test_combo <- cbind(x_test, subject_test, y_test)

## Now combine all the data into one large data frame
all_combo <- rbind(train_combo, test_combo)

## Add the column names from the features file
feature_names <- as.character(features[,2])
add_columns <- c("Subject", "Activity")
New_Col_Names <- c(feature_names, add_columns)

## ADD HERE - make the column names more descriptive.
# Search the forums for gsub()


# Now ensure we have unique names before making them
# the column names for the combined data set
Unique_Col_Names <- make.names(names=New_Col_Names,unique=TRUE,allow_=TRUE)
colnames(all_combo) <- c(Unique_Col_Names)

## Update with descriptive activity names, rather 
## than the activity numbers
all_combo$Activity <- activities[match(all_combo$Activity, activities[,1]),2]
all_combo_tbldf <- tbl_df(all_combo)

## Now select only the mean and standard deviation related variables
result_tbldf <- select(all_combo_df, Subject, Activity, matches("mean.."), matches("std.."))

## Summarize by Subject and Activity, using only the mean of each variable
summary_tbldf <- summarise_each(group_by(result_tbldf, Subject, Activity), funs(mean))

## And finally, write the output to a text file for submission
write.table(summary_tbldf, "ProjectOutput.txt", row.name=FALSE)
