Files:

CodeBook.md                 : it's this file
README.md                   : you will find more detailed explanations about the scripts contained in run_analysis.R
run_analysis.R              : the scripts made to generate the tidy data file AssignmentDataCleansing.txt
AssignmentDataCleansing.txt : the generated tidy data file that contains mean calculation by variable segmented by activity type.

below, you'll find the Variables in the tidy data file, divided by activity type, 
and an example explaining their mean, that justify how they were named. 
For each variable, you will see two lines of values: the first one, the mean of the the "test" results. 
The second, the mean of the "train" results.

LAYING.tBodyAcc-mean()-X            : time body accelerometer mean  of the axis X
LAYING.tBodyAcc-mean()-Y
LAYING.tBodyAcc-mean()-Z
LAYING.tGravityAcc-mean()-X
LAYING.tGravityAcc-mean()-Y
LAYING.tGravityAcc-mean()-Z
LAYING.tBodyAccJerk-mean()-X
LAYING.tBodyAccJerk-mean()-Y
LAYING.tBodyAccJerk-mean()-Z
LAYING.tBodyGyro-mean()-X
LAYING.tBodyGyro-mean()-Y
LAYING.tBodyGyro-mean()-Z
LAYING.tBodyGyroJerk-mean()-X
LAYING.tBodyGyroJerk-mean()-Y
LAYING.tBodyGyroJerk-mean()-Z
LAYING.tBodyAccMag-mean()
LAYING.tGravityAccMag-mean()
LAYING.tBodyAccJerkMag-mean()
LAYING.tBodyGyroMag-mean()
LAYING.tBodyGyroJerkMag-mean()
LAYING.fBodyAcc-mean()-X
LAYING.fBodyAcc-mean()-Y
LAYING.fBodyAcc-mean()-Z
LAYING.fBodyAcc-meanFreq()-X
LAYING.fBodyAcc-meanFreq()-Y
LAYING.fBodyAcc-meanFreq()-Z
LAYING.fBodyAccJerk-mean()-X
LAYING.fBodyAccJerk-mean()-Y
LAYING.fBodyAccJerk-mean()-Z
LAYING.fBodyAccJerk-meanFreq()-X
LAYING.fBodyAccJerk-meanFreq()-Y
LAYING.fBodyAccJerk-meanFreq()-Z
LAYING.fBodyGyro-mean()-X
LAYING.fBodyGyro-mean()-Y
LAYING.fBodyGyro-mean()-Z
LAYING.fBodyGyro-meanFreq()-X
LAYING.fBodyGyro-meanFreq()-Y
LAYING.fBodyGyro-meanFreq()-Z
LAYING.fBodyAccMag-mean()
LAYING.fBodyAccMag-meanFreq()
LAYING.fBodyBodyAccJerkMag-mean()
LAYING.fBodyBodyAccJerkMag-meanFreq()
LAYING.fBodyBodyGyroMag-mean()
LAYING.fBodyBodyGyroMag-meanFreq()
LAYING.fBodyBodyGyroJerkMag-mean()
LAYING.fBodyBodyGyroJerkMag-meanFreq()
LAYING.tBodyAcc-std()-X
LAYING.tBodyAcc-std()-Y
LAYING.tBodyAcc-std()-Z
LAYING.tGravityAcc-std()-X
LAYING.tGravityAcc-std()-Y
LAYING.tGravityAcc-std()-Z
LAYING.tBodyAccJerk-std()-X
LAYING.tBodyAccJerk-std()-Y
LAYING.tBodyAccJerk-std()-Z
LAYING.tBodyGyro-std()-X
LAYING.tBodyGyro-std()-Y
LAYING.tBodyGyro-std()-Z
LAYING.tBodyGyroJerk-std()-X
LAYING.tBodyGyroJerk-std()-Y
LAYING.tBodyGyroJerk-std()-Z
LAYING.tBodyAccMag-std()
LAYING.tGravityAccMag-std()
LAYING.tBodyAccJerkMag-std()
LAYING.tBodyGyroMag-std()
LAYING.tBodyGyroJerkMag-std()
LAYING.fBodyAcc-std()-X
LAYING.fBodyAcc-std()-Y
LAYING.fBodyAcc-std()-Z
LAYING.fBodyAccJerk-std()-X
LAYING.fBodyAccJerk-std()-Y
LAYING.fBodyAccJerk-std()-Z
LAYING.fBodyGyro-std()-X
LAYING.fBodyGyro-std()-Y
LAYING.fBodyGyro-std()-Z
LAYING.fBodyAccMag-std()
LAYING.fBodyBodyAccJerkMag-std()
LAYING.fBodyBodyGyroMag-std()
LAYING.fBodyBodyGyroJerkMag-std()
SITTING.tBodyAcc-mean()-X
SITTING.tBodyAcc-mean()-Y
SITTING.tBodyAcc-mean()-Z
SITTING.tGravityAcc-mean()-X
SITTING.tGravityAcc-mean()-Y
SITTING.tGravityAcc-mean()-Z
SITTING.tBodyAccJerk-mean()-X
SITTING.tBodyAccJerk-mean()-Y
SITTING.tBodyAccJerk-mean()-Z
SITTING.tBodyGyro-mean()-X
SITTING.tBodyGyro-mean()-Y
SITTING.tBodyGyro-mean()-Z
SITTING.tBodyGyroJerk-mean()-X
SITTING.tBodyGyroJerk-mean()-Y
SITTING.tBodyGyroJerk-mean()-Z
SITTING.tBodyAccMag-mean()
SITTING.tGravityAccMag-mean()
SITTING.tBodyAccJerkMag-mean()
SITTING.tBodyGyroMag-mean()
SITTING.tBodyGyroJerkMag-mean()
SITTING.fBodyAcc-mean()-X
SITTING.fBodyAcc-mean()-Y
SITTING.fBodyAcc-mean()-Z
SITTING.fBodyAcc-meanFreq()-X
SITTING.fBodyAcc-meanFreq()-Y
SITTING.fBodyAcc-meanFreq()-Z
SITTING.fBodyAccJerk-mean()-X
SITTING.fBodyAccJerk-mean()-Y
SITTING.fBodyAccJerk-mean()-Z
SITTING.fBodyAccJerk-meanFreq()-X
SITTING.fBodyAccJerk-meanFreq()-Y
SITTING.fBodyAccJerk-meanFreq()-Z
SITTING.fBodyGyro-mean()-X
SITTING.fBodyGyro-mean()-Y
SITTING.fBodyGyro-mean()-Z
SITTING.fBodyGyro-meanFreq()-X
SITTING.fBodyGyro-meanFreq()-Y
SITTING.fBodyGyro-meanFreq()-Z
SITTING.fBodyAccMag-mean()
SITTING.fBodyAccMag-meanFreq()
SITTING.fBodyBodyAccJerkMag-mean()
SITTING.fBodyBodyAccJerkMag-meanFreq()
SITTING.fBodyBodyGyroMag-mean()
SITTING.fBodyBodyGyroMag-meanFreq()
SITTING.fBodyBodyGyroJerkMag-mean()
SITTING.fBodyBodyGyroJerkMag-meanFreq()
SITTING.tBodyAcc-std()-X
SITTING.tBodyAcc-std()-Y
SITTING.tBodyAcc-std()-Z
SITTING.tGravityAcc-std()-X
SITTING.tGravityAcc-std()-Y
SITTING.tGravityAcc-std()-Z
SITTING.tBodyAccJerk-std()-X
SITTING.tBodyAccJerk-std()-Y
SITTING.tBodyAccJerk-std()-Z
SITTING.tBodyGyro-std()-X
SITTING.tBodyGyro-std()-Y
SITTING.tBodyGyro-std()-Z
SITTING.tBodyGyroJerk-std()-X
SITTING.tBodyGyroJerk-std()-Y
SITTING.tBodyGyroJerk-std()-Z
SITTING.tBodyAccMag-std()
SITTING.tGravityAccMag-std()
SITTING.tBodyAccJerkMag-std()
SITTING.tBodyGyroMag-std()
SITTING.tBodyGyroJerkMag-std()
SITTING.fBodyAcc-std()-X
SITTING.fBodyAcc-std()-Y
SITTING.fBodyAcc-std()-Z
SITTING.fBodyAccJerk-std()-X
SITTING.fBodyAccJerk-std()-Y
SITTING.fBodyAccJerk-std()-Z
SITTING.fBodyGyro-std()-X
SITTING.fBodyGyro-std()-Y
SITTING.fBodyGyro-std()-Z
SITTING.fBodyAccMag-std()
SITTING.fBodyBodyAccJerkMag-std()
SITTING.fBodyBodyGyroMag-std()
SITTING.fBodyBodyGyroJerkMag-std()
STANDING.tBodyAcc-mean()-X
STANDING.tBodyAcc-mean()-Y
STANDING.tBodyAcc-mean()-Z
STANDING.tGravityAcc-mean()-X
STANDING.tGravityAcc-mean()-Y
STANDING.tGravityAcc-mean()-Z
STANDING.tBodyAccJerk-mean()-X
STANDING.tBodyAccJerk-mean()-Y
STANDING.tBodyAccJerk-mean()-Z
STANDING.tBodyGyro-mean()-X
STANDING.tBodyGyro-mean()-Y
STANDING.tBodyGyro-mean()-Z
STANDING.tBodyGyroJerk-mean()-X
STANDING.tBodyGyroJerk-mean()-Y
STANDING.tBodyGyroJerk-mean()-Z
STANDING.tBodyAccMag-mean()
STANDING.tGravityAccMag-mean()
STANDING.tBodyAccJerkMag-mean()
STANDING.tBodyGyroMag-mean()
STANDING.tBodyGyroJerkMag-mean()
STANDING.fBodyAcc-mean()-X
STANDING.fBodyAcc-mean()-Y
STANDING.fBodyAcc-mean()-Z
STANDING.fBodyAcc-meanFreq()-X
STANDING.fBodyAcc-meanFreq()-Y
STANDING.fBodyAcc-meanFreq()-Z
STANDING.fBodyAccJerk-mean()-X
STANDING.fBodyAccJerk-mean()-Y
STANDING.fBodyAccJerk-mean()-Z
STANDING.fBodyAccJerk-meanFreq()-X
STANDING.fBodyAccJerk-meanFreq()-Y
STANDING.fBodyAccJerk-meanFreq()-Z
STANDING.fBodyGyro-mean()-X
STANDING.fBodyGyro-mean()-Y
STANDING.fBodyGyro-mean()-Z
STANDING.fBodyGyro-meanFreq()-X
STANDING.fBodyGyro-meanFreq()-Y
STANDING.fBodyGyro-meanFreq()-Z
STANDING.fBodyAccMag-mean()
STANDING.fBodyAccMag-meanFreq()
STANDING.fBodyBodyAccJerkMag-mean()
STANDING.fBodyBodyAccJerkMag-meanFreq()
STANDING.fBodyBodyGyroMag-mean()
STANDING.fBodyBodyGyroMag-meanFreq()
STANDING.fBodyBodyGyroJerkMag-mean()
STANDING.fBodyBodyGyroJerkMag-meanFreq()
STANDING.tBodyAcc-std()-X
STANDING.tBodyAcc-std()-Y
STANDING.tBodyAcc-std()-Z
STANDING.tGravityAcc-std()-X
STANDING.tGravityAcc-std()-Y
STANDING.tGravityAcc-std()-Z
STANDING.tBodyAccJerk-std()-X
STANDING.tBodyAccJerk-std()-Y
STANDING.tBodyAccJerk-std()-Z
STANDING.tBodyGyro-std()-X
STANDING.tBodyGyro-std()-Y
STANDING.tBodyGyro-std()-Z
STANDING.tBodyGyroJerk-std()-X
STANDING.tBodyGyroJerk-std()-Y
STANDING.tBodyGyroJerk-std()-Z
STANDING.tBodyAccMag-std()
STANDING.tGravityAccMag-std()
STANDING.tBodyAccJerkMag-std()
STANDING.tBodyGyroMag-std()
STANDING.tBodyGyroJerkMag-std()
STANDING.fBodyAcc-std()-X
STANDING.fBodyAcc-std()-Y
STANDING.fBodyAcc-std()-Z
STANDING.fBodyAccJerk-std()-X
STANDING.fBodyAccJerk-std()-Y
STANDING.fBodyAccJerk-std()-Z
STANDING.fBodyGyro-std()-X
STANDING.fBodyGyro-std()-Y
STANDING.fBodyGyro-std()-Z
STANDING.fBodyAccMag-std()
STANDING.fBodyBodyAccJerkMag-std()
STANDING.fBodyBodyGyroMag-std()
STANDING.fBodyBodyGyroJerkMag-std()
WALKING.tBodyAcc-mean()-X
WALKING.tBodyAcc-mean()-Y
WALKING.tBodyAcc-mean()-Z
WALKING.tGravityAcc-mean()-X
WALKING.tGravityAcc-mean()-Y
WALKING.tGravityAcc-mean()-Z
WALKING.tBodyAccJerk-mean()-X
WALKING.tBodyAccJerk-mean()-Y
WALKING.tBodyAccJerk-mean()-Z
WALKING.tBodyGyro-mean()-X
WALKING.tBodyGyro-mean()-Y
WALKING.tBodyGyro-mean()-Z
WALKING.tBodyGyroJerk-mean()-X
WALKING.tBodyGyroJerk-mean()-Y
WALKING.tBodyGyroJerk-mean()-Z
WALKING.tBodyAccMag-mean()
WALKING.tGravityAccMag-mean()
WALKING.tBodyAccJerkMag-mean()
WALKING.tBodyGyroMag-mean()
WALKING.tBodyGyroJerkMag-mean()
WALKING.fBodyAcc-mean()-X
WALKING.fBodyAcc-mean()-Y
WALKING.fBodyAcc-mean()-Z
WALKING.fBodyAcc-meanFreq()-X
WALKING.fBodyAcc-meanFreq()-Y
WALKING.fBodyAcc-meanFreq()-Z
WALKING.fBodyAccJerk-mean()-X
WALKING.fBodyAccJerk-mean()-Y
WALKING.fBodyAccJerk-mean()-Z
WALKING.fBodyAccJerk-meanFreq()-X
WALKING.fBodyAccJerk-meanFreq()-Y
WALKING.fBodyAccJerk-meanFreq()-Z
WALKING.fBodyGyro-mean()-X
WALKING.fBodyGyro-mean()-Y
WALKING.fBodyGyro-mean()-Z
WALKING.fBodyGyro-meanFreq()-X
WALKING.fBodyGyro-meanFreq()-Y
WALKING.fBodyGyro-meanFreq()-Z
WALKING.fBodyAccMag-mean()
WALKING.fBodyAccMag-meanFreq()
WALKING.fBodyBodyAccJerkMag-mean()
WALKING.fBodyBodyAccJerkMag-meanFreq()
WALKING.fBodyBodyGyroMag-mean()
WALKING.fBodyBodyGyroMag-meanFreq()
WALKING.fBodyBodyGyroJerkMag-mean()
WALKING.fBodyBodyGyroJerkMag-meanFreq()
WALKING.tBodyAcc-std()-X
WALKING.tBodyAcc-std()-Y
WALKING.tBodyAcc-std()-Z
WALKING.tGravityAcc-std()-X
WALKING.tGravityAcc-std()-Y
WALKING.tGravityAcc-std()-Z
WALKING.tBodyAccJerk-std()-X
WALKING.tBodyAccJerk-std()-Y
WALKING.tBodyAccJerk-std()-Z
WALKING.tBodyGyro-std()-X
WALKING.tBodyGyro-std()-Y
WALKING.tBodyGyro-std()-Z
WALKING.tBodyGyroJerk-std()-X
WALKING.tBodyGyroJerk-std()-Y
WALKING.tBodyGyroJerk-std()-Z
WALKING.tBodyAccMag-std()
WALKING.tGravityAccMag-std()
WALKING.tBodyAccJerkMag-std()
WALKING.tBodyGyroMag-std()
WALKING.tBodyGyroJerkMag-std()
WALKING.fBodyAcc-std()-X
WALKING.fBodyAcc-std()-Y
WALKING.fBodyAcc-std()-Z
WALKING.fBodyAccJerk-std()-X
WALKING.fBodyAccJerk-std()-Y
WALKING.fBodyAccJerk-std()-Z
WALKING.fBodyGyro-std()-X
WALKING.fBodyGyro-std()-Y
WALKING.fBodyGyro-std()-Z
WALKING.fBodyAccMag-std()
WALKING.fBodyBodyAccJerkMag-std()
WALKING.fBodyBodyGyroMag-std()
WALKING.fBodyBodyGyroJerkMag-std()
WALKING_DOWNSTAIRS.tBodyAcc-mean()-X
WALKING_DOWNSTAIRS.tBodyAcc-mean()-Y
WALKING_DOWNSTAIRS.tBodyAcc-mean()-Z
WALKING_DOWNSTAIRS.tGravityAcc-mean()-X
WALKING_DOWNSTAIRS.tGravityAcc-mean()-Y
WALKING_DOWNSTAIRS.tGravityAcc-mean()-Z
WALKING_DOWNSTAIRS.tBodyAccJerk-mean()-X
WALKING_DOWNSTAIRS.tBodyAccJerk-mean()-Y
WALKING_DOWNSTAIRS.tBodyAccJerk-mean()-Z
WALKING_DOWNSTAIRS.tBodyGyro-mean()-X
WALKING_DOWNSTAIRS.tBodyGyro-mean()-Y
WALKING_DOWNSTAIRS.tBodyGyro-mean()-Z
WALKING_DOWNSTAIRS.tBodyGyroJerk-mean()-X
WALKING_DOWNSTAIRS.tBodyGyroJerk-mean()-Y
WALKING_DOWNSTAIRS.tBodyGyroJerk-mean()-Z
WALKING_DOWNSTAIRS.tBodyAccMag-mean()
WALKING_DOWNSTAIRS.tGravityAccMag-mean()
WALKING_DOWNSTAIRS.tBodyAccJerkMag-mean()
WALKING_DOWNSTAIRS.tBodyGyroMag-mean()
WALKING_DOWNSTAIRS.tBodyGyroJerkMag-mean()
WALKING_DOWNSTAIRS.fBodyAcc-mean()-X
WALKING_DOWNSTAIRS.fBodyAcc-mean()-Y
WALKING_DOWNSTAIRS.fBodyAcc-mean()-Z
WALKING_DOWNSTAIRS.fBodyAcc-meanFreq()-X
WALKING_DOWNSTAIRS.fBodyAcc-meanFreq()-Y
WALKING_DOWNSTAIRS.fBodyAcc-meanFreq()-Z
WALKING_DOWNSTAIRS.fBodyAccJerk-mean()-X
WALKING_DOWNSTAIRS.fBodyAccJerk-mean()-Y
WALKING_DOWNSTAIRS.fBodyAccJerk-mean()-Z
WALKING_DOWNSTAIRS.fBodyAccJerk-meanFreq()-X
WALKING_DOWNSTAIRS.fBodyAccJerk-meanFreq()-Y
WALKING_DOWNSTAIRS.fBodyAccJerk-meanFreq()-Z
WALKING_DOWNSTAIRS.fBodyGyro-mean()-X
WALKING_DOWNSTAIRS.fBodyGyro-mean()-Y
WALKING_DOWNSTAIRS.fBodyGyro-mean()-Z
WALKING_DOWNSTAIRS.fBodyGyro-meanFreq()-X
WALKING_DOWNSTAIRS.fBodyGyro-meanFreq()-Y
WALKING_DOWNSTAIRS.fBodyGyro-meanFreq()-Z
WALKING_DOWNSTAIRS.fBodyAccMag-mean()
WALKING_DOWNSTAIRS.fBodyAccMag-meanFreq()
WALKING_DOWNSTAIRS.fBodyBodyAccJerkMag-mean()
WALKING_DOWNSTAIRS.fBodyBodyAccJerkMag-meanFreq()
WALKING_DOWNSTAIRS.fBodyBodyGyroMag-mean()
WALKING_DOWNSTAIRS.fBodyBodyGyroMag-meanFreq()
WALKING_DOWNSTAIRS.fBodyBodyGyroJerkMag-mean()
WALKING_DOWNSTAIRS.fBodyBodyGyroJerkMag-meanFreq()
WALKING_DOWNSTAIRS.tBodyAcc-std()-X
WALKING_DOWNSTAIRS.tBodyAcc-std()-Y
WALKING_DOWNSTAIRS.tBodyAcc-std()-Z
WALKING_DOWNSTAIRS.tGravityAcc-std()-X
WALKING_DOWNSTAIRS.tGravityAcc-std()-Y
WALKING_DOWNSTAIRS.tGravityAcc-std()-Z
WALKING_DOWNSTAIRS.tBodyAccJerk-std()-X
WALKING_DOWNSTAIRS.tBodyAccJerk-std()-Y
WALKING_DOWNSTAIRS.tBodyAccJerk-std()-Z
WALKING_DOWNSTAIRS.tBodyGyro-std()-X
WALKING_DOWNSTAIRS.tBodyGyro-std()-Y
WALKING_DOWNSTAIRS.tBodyGyro-std()-Z
WALKING_DOWNSTAIRS.tBodyGyroJerk-std()-X
WALKING_DOWNSTAIRS.tBodyGyroJerk-std()-Y
WALKING_DOWNSTAIRS.tBodyGyroJerk-std()-Z
WALKING_DOWNSTAIRS.tBodyAccMag-std()
WALKING_DOWNSTAIRS.tGravityAccMag-std()
WALKING_DOWNSTAIRS.tBodyAccJerkMag-std()
WALKING_DOWNSTAIRS.tBodyGyroMag-std()
WALKING_DOWNSTAIRS.tBodyGyroJerkMag-std()
WALKING_DOWNSTAIRS.fBodyAcc-std()-X
WALKING_DOWNSTAIRS.fBodyAcc-std()-Y
WALKING_DOWNSTAIRS.fBodyAcc-std()-Z
WALKING_DOWNSTAIRS.fBodyAccJerk-std()-X
WALKING_DOWNSTAIRS.fBodyAccJerk-std()-Y
WALKING_DOWNSTAIRS.fBodyAccJerk-std()-Z
WALKING_DOWNSTAIRS.fBodyGyro-std()-X
WALKING_DOWNSTAIRS.fBodyGyro-std()-Y
WALKING_DOWNSTAIRS.fBodyGyro-std()-Z
WALKING_DOWNSTAIRS.fBodyAccMag-std()
WALKING_DOWNSTAIRS.fBodyBodyAccJerkMag-std()
WALKING_DOWNSTAIRS.fBodyBodyGyroMag-std()
WALKING_DOWNSTAIRS.fBodyBodyGyroJerkMag-std()
WALKING_UPSTAIRS.tBodyAcc-mean()-X
WALKING_UPSTAIRS.tBodyAcc-mean()-Y
WALKING_UPSTAIRS.tBodyAcc-mean()-Z
WALKING_UPSTAIRS.tGravityAcc-mean()-X
WALKING_UPSTAIRS.tGravityAcc-mean()-Y
WALKING_UPSTAIRS.tGravityAcc-mean()-Z
WALKING_UPSTAIRS.tBodyAccJerk-mean()-X
WALKING_UPSTAIRS.tBodyAccJerk-mean()-Y
WALKING_UPSTAIRS.tBodyAccJerk-mean()-Z
WALKING_UPSTAIRS.tBodyGyro-mean()-X
WALKING_UPSTAIRS.tBodyGyro-mean()-Y
WALKING_UPSTAIRS.tBodyGyro-mean()-Z
WALKING_UPSTAIRS.tBodyGyroJerk-mean()-X
WALKING_UPSTAIRS.tBodyGyroJerk-mean()-Y
WALKING_UPSTAIRS.tBodyGyroJerk-mean()-Z
WALKING_UPSTAIRS.tBodyAccMag-mean()
WALKING_UPSTAIRS.tGravityAccMag-mean()
WALKING_UPSTAIRS.tBodyAccJerkMag-mean()
WALKING_UPSTAIRS.tBodyGyroMag-mean()
WALKING_UPSTAIRS.tBodyGyroJerkMag-mean()
WALKING_UPSTAIRS.fBodyAcc-mean()-X
WALKING_UPSTAIRS.fBodyAcc-mean()-Y
WALKING_UPSTAIRS.fBodyAcc-mean()-Z
WALKING_UPSTAIRS.fBodyAcc-meanFreq()-X
WALKING_UPSTAIRS.fBodyAcc-meanFreq()-Y
WALKING_UPSTAIRS.fBodyAcc-meanFreq()-Z
WALKING_UPSTAIRS.fBodyAccJerk-mean()-X
WALKING_UPSTAIRS.fBodyAccJerk-mean()-Y
WALKING_UPSTAIRS.fBodyAccJerk-mean()-Z
WALKING_UPSTAIRS.fBodyAccJerk-meanFreq()-X
WALKING_UPSTAIRS.fBodyAccJerk-meanFreq()-Y
WALKING_UPSTAIRS.fBodyAccJerk-meanFreq()-Z
WALKING_UPSTAIRS.fBodyGyro-mean()-X
WALKING_UPSTAIRS.fBodyGyro-mean()-Y
WALKING_UPSTAIRS.fBodyGyro-mean()-Z
WALKING_UPSTAIRS.fBodyGyro-meanFreq()-X
WALKING_UPSTAIRS.fBodyGyro-meanFreq()-Y
WALKING_UPSTAIRS.fBodyGyro-meanFreq()-Z
WALKING_UPSTAIRS.fBodyAccMag-mean()
WALKING_UPSTAIRS.fBodyAccMag-meanFreq()
WALKING_UPSTAIRS.fBodyBodyAccJerkMag-mean()
WALKING_UPSTAIRS.fBodyBodyAccJerkMag-meanFreq()
WALKING_UPSTAIRS.fBodyBodyGyroMag-mean()
WALKING_UPSTAIRS.fBodyBodyGyroMag-meanFreq()
WALKING_UPSTAIRS.fBodyBodyGyroJerkMag-mean()
WALKING_UPSTAIRS.fBodyBodyGyroJerkMag-meanFreq()
WALKING_UPSTAIRS.tBodyAcc-std()-X
WALKING_UPSTAIRS.tBodyAcc-std()-Y
WALKING_UPSTAIRS.tBodyAcc-std()-Z
WALKING_UPSTAIRS.tGravityAcc-std()-X
WALKING_UPSTAIRS.tGravityAcc-std()-Y
WALKING_UPSTAIRS.tGravityAcc-std()-Z
WALKING_UPSTAIRS.tBodyAccJerk-std()-X
WALKING_UPSTAIRS.tBodyAccJerk-std()-Y
WALKING_UPSTAIRS.tBodyAccJerk-std()-Z
WALKING_UPSTAIRS.tBodyGyro-std()-X
WALKING_UPSTAIRS.tBodyGyro-std()-Y
WALKING_UPSTAIRS.tBodyGyro-std()-Z
WALKING_UPSTAIRS.tBodyGyroJerk-std()-X
WALKING_UPSTAIRS.tBodyGyroJerk-std()-Y
WALKING_UPSTAIRS.tBodyGyroJerk-std()-Z
WALKING_UPSTAIRS.tBodyAccMag-std()
WALKING_UPSTAIRS.tGravityAccMag-std()
WALKING_UPSTAIRS.tBodyAccJerkMag-std()
WALKING_UPSTAIRS.tBodyGyroMag-std()
WALKING_UPSTAIRS.tBodyGyroJerkMag-std()
WALKING_UPSTAIRS.fBodyAcc-std()-X
WALKING_UPSTAIRS.fBodyAcc-std()-Y
WALKING_UPSTAIRS.fBodyAcc-std()-Z
WALKING_UPSTAIRS.fBodyAccJerk-std()-X
WALKING_UPSTAIRS.fBodyAccJerk-std()-Y
WALKING_UPSTAIRS.fBodyAccJerk-std()-Z
WALKING_UPSTAIRS.fBodyGyro-std()-X
WALKING_UPSTAIRS.fBodyGyro-std()-Y
WALKING_UPSTAIRS.fBodyGyro-std()-Z
WALKING_UPSTAIRS.fBodyAccMag-std()
WALKING_UPSTAIRS.fBodyBodyAccJerkMag-std()
WALKING_UPSTAIRS.fBodyBodyGyroMag-std()
WALKING_UPSTAIRS.fBodyBodyGyroJerkMag-std()

