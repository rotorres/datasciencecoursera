folder<-"X:\\_MyBox\\OneDrive\\_DEV\\R\\Coursera\\3-Getting and Cleaning Data\\Assignment\\UCI HAR Dataset\\"

actL<-paste(folder, "activity_labels.txt", sep="")

testF<-paste(folder, "test\\X_test.txt", sep="")
trainF<-paste(folder, "train\\X_train.txt", sep="")
testFL<-paste(folder, "test\\y_test.txt", sep="")
trainFL<-paste(folder, "train\\y_train.txt", sep="")
featuresF<-paste(folder, "features.txt", sep="")

featDF<-read.table(featuresF)
testDF<-read.table(testF)
trainDF<-read.table(trainF)
testLDF<-read.table(testFL)
trainLDF<-read.table(trainFL)
actRL<-read.table(actL)


### 3. Uses descriptive activity names to name the activities in the data set
mgTest<-merge(testLDF, actRL, by="V1")
mgTrain<-merge(trainLDF, actRL, by="V1")

names(mgTest)<-c("row","Activity")
names(mgTrain)<-c("row","Activity")

### 4. Appropriately labels the data set with descriptive variable names. 
names(testDF)<-featDF$V2
names(trainDF)<-featDF$V2

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

write.table(finalFile, "X:\\_MyBox\\OneDrive\\Documents\\GitHub\\datasciencecoursera\\Getting and Cleaning Data\\Assignment\\AssignmentDataCleansing.txt", row.name=FALSE)







