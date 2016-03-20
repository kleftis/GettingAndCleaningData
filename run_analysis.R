library(dplyr)
## Load all required data sets
testdata <- read.table("test/X_test.txt")
testactivity <- read.table("test/y_test.txt")
testsubject <- read.table("test/subject_test.txt")
traindata <- read.table("train/X_train.txt")
trainactivity <- read.table("train/y_train.txt")
trainsubject <- read.table("train/subject_train.txt")
features <- read.table("features.txt")
activitylabels <- read.table("activity_labels.txt")

##----------------------------------------------------##
## Set the column names to be descriptive names
colnames(testdata) <- features[ ,2]
colnames(traindata) <- features[ ,2]
colnames(trainsubject) <- c("subject")
colnames(testsubject) <- c("subject")
colnames(trainactivity) <- c("activity")
colnames(testactivity) <- c("activity")

##----------------------------------------------------##
## Merges the training and the test sets to create one data set.
trainall <- traindata %>% cbind(trainsubject) %>% cbind(trainactivity)
testall <- testdata %>% cbind(testsubject) %>% cbind(testactivity)
alldatatoextr <- rbind(trainall, testall)

##----------------------------------------------------##
## Extracts only the measurements on the mean and standard deviation for each measurement
## plus the activity and subject column.
alldata <- alldatatoextr[ ,grep("mean|std|activ|sub", names(alldatatoextr), value = FALSE)]

##----------------------------------------------------##
## Uses descriptive activity names to name the activity in the data set.
activitynumber <- activitylabels[,1]
activitychar <- as.character(activitylabels[,2])
for (i in activitynumber){
  alldata$activity[which(alldata$activity %in% activitynumber[i])] <- activitychar[i]
}

##----------------------------------------------------##
## Appropriately labels the data set with descriptive variable names.
names(alldata) <-gsub("-","",names(alldata))
names(alldata) <-gsub("\\()","",names(alldata))
names(alldata) <-tolower(names(alldata))

##----------------------------------------------------##
## From the data set alldata, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
tidy <- alldata %>% group_by(subject, activity) %>% summarise_each(funs(mean))
write.csv(tidy, "tidy.csv")
