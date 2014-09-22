Following the scripts below, explanations about what was made to generate the required tidy data file as acceptable result for the assignment of the course Getting and Cleansing Data:

### At the first block of lines, references pointing the needed file's address:
# the folder containing all files
folder<-"X:\\_MyBox\\OneDrive\\_DEV\\R\\Coursera\\3-Getting and Cleaning Data\\Assignment\\UCI HAR Dataset\\"

# the address for the file that contains the activity descriptions
actL<-paste(folder, "activity_labels.txt", sep="")

# the address for the files that contains test and train results data
testF<-paste(folder, "test\\X_test.txt", sep="")
trainF<-paste(folder, "train\\X_train.txt", sep="")

# the adress for the files that contains test and train activities pointers 
testFL<-paste(folder, "test\\y_test.txt", sep="")
trainFL<-paste(folder, "train\\y_train.txt", sep="")

# the addres for the file that contains feature names
featuresF<-paste(folder, "features.txt", sep="")

### At that block, reading mapped files and storing them on local variables:
featDF<-read.table(featuresF)   
testDF<-read.table(testF)
trainDF<-read.table(trainF)
testLDF<-read.table(testFL)
trainLDF<-read.table(trainFL)
actRL<-read.table(actL)

### merging the files containing the test and train results, with the file that contains the activities pointers
### to give an activity group for each row 
mgTest<-merge(testLDF, actRL, by="V1")
mgTrain<-merge(trainLDF, actRL, by="V1")
# naming test and train results rows
names(mgTest)<-c("row","Activity")
names(mgTrain)<-c("row","Activity")
# namingtest and train results columns with the feature names
names(testDF)<-featDF$V2
names(trainDF)<-featDF$V2

# setting the activity group to the merged contents
cbTest<-cbind(testDF, mgTest["Activity"])
cbTrain<-cbind(trainDF, mgTrain["Activity"])

### 1. Merges the training and the test sets to create one data set.
mgDF<-rbind(cbTest, cbTrain)

### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
msMean<-grep("mean()",featDF$V2)
msStd<-grep("std()",featDF$V2)

newFeat<-rbind(featDF[msMean,],featDF[msStd,])
newMG<-mgDF[newFeat$V1]

### From the data set in step 4, creates a second, independent tidy data set 
### with the average of each variable for each activity and each subject.
#by(mgDF[newFeat$V1], mgDF$Activity, colMeans)

segmtTest<-by(cbTest[newFeat$V1], cbTest$Activity, colMeans)
segmtTrain<-by(cbTrain[newFeat$V1], cbTrain$Activity, colMeans)

finalFile<-rbind(unlist(segmtTest), unlist(segmtTrain))

### writing the final file 

write.table(finalFile, "X:\\_MyBox\\OneDrive\\Documents\\GitHub\\datasciencecoursera\\Getting and Cleaning Data\\Assignment\\AssignmentDataCleansing.txt", row.name=FALSE)
