Getting and Cleaning Data - Course Project
Codebook

Created on 10/23/2015

This codebook describes the transformations and resulting data used in the Getting and Cleaning Data course project.
The original data is available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

After downloading and unzipping the data files, a script was used to combine the data, select key variables, and summarize them.
The steps to do this included:

1. Reading the data from the files into R
2. Merging the training and test data into one data set
3. Selecting only those variables that capture a mean or standard deviation
4. Using descriptive names for the activities in the data
5. Labeling the data with the descriptive names
6. Creating a tidy data set that includes averages for each variable and then exporting the final data set to a txt file

Note: these steps and the associated code are contained in the script file (run_analysis.R).

As noted in the assignment, one of the most exciting areas in all of data science right now is wearable computing.
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data used in the course project represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

The data includes various measurements from a group of 30 volunteers (ages: 19-48).

Variable Names and Descriptions

Note: additional information about the original data is available in the features_info.txt file provided with the data.
In general, the information from this file is not repeated here.

subject	ID = ranges from 1 to 30, each number representing a participant in the study.
Activity = activity names for tracked activities including:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

68 combined Variable names used in the dataset:

timeBodyAccelerometer-mean()-X
timeBodyAccelerometer-mean()-Y
timeBodyAccelerometer-mean()-Z
timeBodyAccelerometer-std()-X
timeBodyAccelerometer-std()-Y
timeBodyAccelerometer-std()-Z
timeGravityAccelerometer-mean()-X
timeGravityAccelerometer-mean()-Y
timeGravityAccelerometer-mean()-Z
timeGravityAccelerometer-std()-X
timeGravityAccelerometer-std()-Y
timeGravityAccelerometer-std()-Z
timeBodyAccelerometerJerk-mean()-X
timeBodyAccelerometerJerk-mean()-Y
timeBodyAccelerometerJerk-mean()-Z
timeBodyAccelerometerJerk-std()-X
timeBodyAccelerometerJerk-std()-Y
timeBodyAccelerometerJerk-std()-Z
timeBodyGyroscope-mean()-X
timeBodyGyroscope-mean()-Y
timeBodyGyroscope-mean()-Z
timeBodyGyroscope-std()-X
timeBodyGyroscope-std()-Y
timeBodyGyroscope-std()-Z
timeBodyGyroscopeJerk-mean()-X
timeBodyGyroscopeJerk-mean()-Y
timeBodyGyroscopeJerk-mean()-Z
timeBodyGyroscopeJerk-std()-X
timeBodyGyroscopeJerk-std()-Y
timeBodyGyroscopeJerk-std()-Z
timeBodyAccelerometerMagnitude-mean()
timeBodyAccelerometerMagnitude-std()
timeGravityAccelerometerMagnitude-mean()
timeGravityAccelerometerMagnitude-std()
timeBodyAccelerometerJerkMagnitude-mean()
timeBodyAccelerometerJerkMagnitude-std()
timeBodyGyroscopeMagnitude-mean()
timeBodyGyroscopeMagnitude-std()
timeBodyGyroscopeJerkMagnitude-mean()
timeBodyGyroscopeJerkMagnitude-std()
frequencyBodyAccelerometer-mean()-X
frequencyBodyAccelerometer-mean()-Y
frequencyBodyAccelerometer-mean()-Z
frequencyBodyAccelerometer-std()-X
frequencyBodyAccelerometer-std()-Y
frequencyBodyAccelerometer-std()-Z
frequencyBodyAccelerometerJerk-mean()-X
frequencyBodyAccelerometerJerk-mean()-Y
frequencyBodyAccelerometerJerk-mean()-Z
frequencyBodyAccelerometerJerk-std()-X
frequencyBodyAccelerometerJerk-std()-Y
frequencyBodyAccelerometerJerk-std()-Z
frequencyBodyGyroscope-mean()-X
frequencyBodyGyroscope-mean()-Y
frequencyBodyGyroscope-mean()-Z
frequencyBodyGyroscope-std()-X
frequencyBodyGyroscope-std()-Y
frequencyBodyGyroscope-std()-Z
frequencyBodyAccelerometerMagnitude-mean()
frequencyBodyAccelerometerMagnitude-std()
frequencyBodyAccelerometerJerkMagnitude-mean()
frequencyBodyAccelerometerJerkMagnitude-std()
frequencyBodyGyroscopeMagnitude-mean()
frequencyBodyGyroscopeMagnitude-std()
frequencyBodyGyroscopeJerkMagnitude-mean()
frequencyBodyGyroscopeJerkMagnitude-std()

Per the assignment, a mean for each of these variables was calculated and included in the tidy dataset.

And hopefully this codebook looks ok in GitHub. Not sure how to make it more readable from a visual perspective. Figure it's more important to get something posted before the deadline!
