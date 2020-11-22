##Initialization & Getting the data

library(dplyr)

file_name <- "getdata_projectfiles_UCI HAR Dataset"
folder_name <- "UCI HAR Dataset"
url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!file.exists(file_name))
{
  download.file(url, destfile = file_name)
}

if(!dir.exists(folder_name))
{
  unzip(file_name)
}

##Reading data

features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

##Binding test and train data together

merged_X <- rbind(X_train, X_test)
merged_Y <- rbind(y_train, y_test)
merged_subjects <- rbind(subject_train, subject_test)

##Changing merged_X data variable names to features list
names(merged_X) <- features$V2

##Getting mean & standard deviation data and merging with labels & subjects

##Mean data from merged training & test set
mean_merged_X <- merged_X[, grepl(pattern = "mean", x = names(merged_X))]

##Standard deviation data from merged training & test set
std_merged_X <- merged_X[, grepl(pattern = "std", x = names(merged_X))]

##Combining mean, std X data with Y lables & subjects
merged_X_Y <- cbind(mean_merged_X, std_merged_X, merged_Y, merged_subjects)

##Renaming the numeric Y labels to Descriptive Activity Names

##Storing activity names in a vector (will be used in a for loop later)
activity_vector <- activity_labels$V2

##for loop will get indices for each activity and replace it with corresponding
##descriptive activity name from the activity vector

for (i in 1:6)
{

  merged_X_Y$V1[grepl(pattern = i, x = merged_X_Y$V1)] = activity_vector[i]
  
}

##We have the data in the required form. Now we rename each variable name
##to its descriptive name through multiple steps

names(merged_X_Y) <- gsub(pattern = "^t", replacement = "Time", x = names(merged_X_Y))
names(merged_X_Y) <- gsub(pattern = "Acc", replacement = "Acceleration", x = names(merged_X_Y))
names(merged_X_Y) <- gsub(pattern = "Gyro", replacement = "Gyroscope", x = names(merged_X_Y))
names(merged_X_Y) <- gsub(pattern = "^f", replacement = "frequency", x = names(merged_X_Y))
names(merged_X_Y) <- gsub(pattern = "Freq", replacement = "Frequency", x = names(merged_X_Y))
names(merged_X_Y) <- gsub(pattern = "Mag", replacement = "Magnitude", x = names(merged_X_Y))
names(merged_X_Y) <- gsub(pattern = "std", replacement = "StandardDeviation", x = names(merged_X_Y))
names(merged_X_Y)[(length(names(merged_X_Y)))-1] <- "Activity"
names(merged_X_Y)[length(names(merged_X_Y))] <- "Subject"


##Getting tidydata by grouping and mean
tidy_data <- group_by(merged_X_Y, Activity, Subject)
tidy_data <- summarise_all(tidy_data, funs(mean))

write.table(tidy_data, file = "Tidy_Data.txt", row.names = FALSE)



