# Getting and Cleaning Data Course Project

# 1. Merge the training and the test sets to create one data set.
# Read the general data
features     <- read.table('UCI HAR Dataset/features.txt',header=FALSE);
activityLabels <- read.table('UCI HAR Dataset/activity_labels.txt',header=FALSE);
colnames(activityLabels)  = c('activity','activityName');

# Read the data from train data set
subjectTrain  <- read.table('UCI HAR Dataset/train/subject_train.txt',header=FALSE);
train         <- read.table('UCI HAR Dataset/train/x_train.txt',header=FALSE); # train values for each feature
activityTrain <- read.table('UCI HAR Dataset/train/y_train.txt',header=FALSE); # train activity

colnames(subjectTrain) <- "subject";
colnames(activityTrain) <- "activity";
colnames(train) <- features[,2];
TrainData <- cbind(subjectTrain, activityTrain, train);

# Read the data from test data set
subjectTest  <- read.table('UCI HAR Dataset/test/subject_test.txt',header=FALSE);
test         <- read.table('UCI HAR Dataset/test/x_test.txt',header=FALSE); # test values for each feature
activityTest <- read.table('UCI HAR Dataset/test/y_test.txt',header=FALSE); # test activity

colnames(subjectTest) <- "subject";
colnames(activityTest) <- "activity";
colnames(test) <- features[,2];
TestData  <- cbind(subjectTest,  activityTest,  test);

# Merge data
AllData <- rbind(TrainData,TestData);
names <- colnames(AllData);


# 2. Extracts only the measurements on the mean
# and standard deviation for each measurement:
# ie: contains "-std()" and "-mean()" and also "activity" and "subject"

FilterNames <- (grepl("activity",names) | grepl("subject",names) |
                grepl("-(mean|std)\\(\\)", names) );

AllData <- AllData[FilterNames==TRUE];
names <- colnames(AllData);


# 3. Uses descriptive activity names to name the activities in the data set
for (i in 1:6){
    AllData$activity[AllData$activity == i] <- as.character(activityLabels[i,2])
}

# 4. Appropriately labels the data set with descriptive variable names.
for (i in 1:length(names))
{
  names[i] <- gsub("\\()","",names[i])
  names[i] <- gsub("-std$","STD",names[i])
  names[i] <- gsub("-mean","Mean",names[i])
  names[i] <- gsub("^(t)","Time",names[i])
  names[i] <- gsub("^(f)","Freq",names[i])
  names[i] <- gsub("([Gg]ravity)","Gravity",names[i])
  names[i] <- gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",names[i])
  names[i] <- gsub("[Gg]yro","Gyroscope",names[i])
  names[i] <- gsub("AccMag","AccelerometerMagnitude",names[i])
  names[i] <- gsub("([Bb]odyaccjerkmag)","BodyAccelerometerJerkMagnitude",names[i])
  names[i] <- gsub("JerkMag","JerkMagnitude",names[i])
  names[i] <- gsub("GyroMag","GyroscopeMagnitude",names[i])
};
colnames(AllData) <- names

 # 5 . From the data set in step 4, creates a second, independent tidy data
 # set with the average of each variable for each activity and each subject.
tidyData <- aggregate(.~activity+subject,data=AllData,FUN=mean,drop=FALSE);
tidyData <- tidyData[order(tidyData$subject, tidyData$activity),];
write.table(tidyData, 'tidyData.txt',row.names=TRUE,sep='\t');
