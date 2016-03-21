Introduction

run_analysis.R does the following

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Variables

testdata: data set X_test.txt
   testactivity: data set y_test.txt
    testsubject: data set subject_test.txt
      traindata: data set X_train.txt
  trainactivity: data set y_train.txt
   trainsubject: data set subject_train.txt
       features: data set features.txt
 activitylabels: data set activity_labels.txt
       trainall: data set from merging traindata, trainactivity and trainsubject
        testall: data set from merging testdata, testactivity and testsubject
  alldatatoextr: data set from merging trainall and testall
        alldata: data set created by keeping the columns of alldatatoextr that 
                 represent the average or the mean value of a variable plus the
                 activity and subject columns
 activitynumber: vector with the numbers that represent an activity
   activitychar: character vector with the activities
    tidysubject: tidy dataset with the average values for each variable for each
                 subject
   tidyactivity: tidy dataset with the average values for each variable for each
                 activity
           tidy: data set with the average of each variable for each activity and
                 each subject
Procedure
1. Load the required data sets in R using read.table
2. Set the column names to be descriptive names.
   a. Read the features from features.txt and rename the columns of traindata and
      testdata replacing to each column the corresponded feature.
   b. Rename column V1 in trainsubject, testsubject and trainactivity, testactivity       to subject and activity respectively.
3. Merges the training and the test sets to create one data set.
4. Extracts the measurements on the mean and standard deviation for each
   measurement and the columns subject, activity.
5. In alldata replaces the number corresponding to an activity to the activity name
   using the activitylabels data set with the help of the two vectors activitychar
   and activitynumber.
6. Appropriately labels the data set with descriptive variable names using gsub() 
   for substituting inappropriate characters and tolower() to change any upper case
   letters to lower.
7. From the data set alldata, creates a second, independent tidy data set with the
   average of each variable for each activity and each subject and outputs tidy.csv 
