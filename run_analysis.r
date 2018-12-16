# download files and unzip

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile = "download.zip")
unzip("download.zip")


# read the features file to get the 561 variable names for the data
# replace 't' and 'f' with 'time' and 'freq', and make valid, unique header names

features <- read.table("UCI HAR Dataset/features.txt", 
                         sep = " ", stringsAsFactors = FALSE)
features[,2] <- gsub("^t","time",features[,2])
features[,2] <- gsub("^f","freq",features[,2])
features[,2] <- gsub("()","",features[,2], fixed = TRUE)

headers <- make.names(make.unique(features[,2]))


# read the test and train data, including the cleaned up names as column headers

test  <- read.fwf("UCI HAR Dataset/test/X_test.txt",
                 widths = c(rep(16,561)), col.names = headers)
train <- read.fwf("UCI HAR Dataset/train/X_train.txt",
                 widths = c(rep(16,561)), col.names = headers)


# read the subject and activity files and add them as (named) columns 


testsubjects <- read.table("UCI HAR Dataset/test/subject_test.txt",
                           col.names = "subject")
testactivities <- read.table("UCI HAR Dataset/test/y_test.txt",
                             col.names = "activity")
test <- cbind(testsubjects, testactivities, test)

trainsubjects <- read.table("UCI HAR Dataset/train/subject_train.txt",
                           col.names = "subject")
trainactivities <- read.table("UCI HAR Dataset/train/y_train.txt",
                             col.names = "activity")
train <- cbind(trainsubjects, trainactivities, train)


# combine the test and training data sets

data <- rbind(test, train)


# read activity labels, clean them up, and convert the activity numbers into names

activities <- read.table("UCI HAR Dataset/activity_labels.txt", 
                       sep = " ", stringsAsFactors = FALSE,
                       col.names = c("code","activity"))
activities[,2] <- tolower(gsub("_",".",activities[,2]))

for (i in 1:10299) { data$activity[i] = 
                    activities$activity[as.integer(data$activity[i])] }


# identify the columns that contain mean or std in the name, in any position
# extract those columns, as well as the first 2 identifier columns

means <- grep("mean", names(data))
stds  <- grep("std",  names(data))
extract <- c(1,2,means,stds)

subset <- data[,extract]

# create a summary with the average of each variable for each activity/subject combination
# write the tidy dataset to a text file


library(dplyr)
subset <- group_by(subset, activity, subject)
tidy <- subset %>% summarise_all(mean)

write.table(tidy, file = "UCI HAR Dataset/final_tidy_dataset.txt",
            row.names = FALSE)

# clean up: remove temporary data

rm(test, testactivities, testsubjects,
   train, trainactivities, trainsubjects,
   features, headers, means, stds, extract)


