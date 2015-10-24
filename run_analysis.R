#Coursera - Getting and Cleaning Data Course Project

#Note: this script is dependent on first downloading required data:
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#After unzipping, the data files should be located in a folder called UCI HAR Dataset.
#Working directory is UCI HAR Dataset - script is set for my computer file structure.


#The script below does the following (per course project assignment):
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set.
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with the average
#	 of each variable for each activity and each subject.

#First, read data from files

dataActivityTest  <- read.table(file.path("test" , "Y_test.txt" ),header = FALSE)
dataActivityTrain <- read.table(file.path("train", "Y_train.txt"),header = FALSE)
dataSubjectTrain <- read.table(file.path("train", "subject_train.txt"),header = FALSE)
dataSubjectTest  <- read.table(file.path("test" , "subject_test.txt"),header = FALSE)
dataFeaturesTest  <- read.table(file.path("test" , "X_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path("train", "X_train.txt"),header = FALSE)

#Step 1: Merge the training and test sets into one data set

dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)

names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path("features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2

dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, dataCombine)

#Step 2. Extract mean ("mean") and standard deviation ("std") variables for each measurement

subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]
selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)

#Step 3. Use descriptive names for activities in the data.##Uses descriptive activity names to name the activities in the data set

activityLabels <- read.table(file.path("activity_labels.txt"),header = FALSE)
Data$activity<- factor(Data$activity)
Data$activity<- factor(Data$activity,labels=as.character(activityLabels$V2))

#Step 4. Label data with descriptive names.

names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))


#Step 5. Create tidy data set including averages and export to txt file

library(plyr);
Data2<-aggregate(. ~subject + activity, Data, mean)
Data2<-Data2[order(Data2$subject,Data2$activity),]
write.table(Data2, file = "tidydata.txt",row.name=FALSE)