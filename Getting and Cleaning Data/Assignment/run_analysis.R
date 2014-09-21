folder<-"X:\\_MyBox\\OneDrive\\_DEV\\R\\Coursera\\3-Getting and Cleaning Data\\Assignment\\UCI HAR Dataset\\"

actL<-paste(folder, "activity_labels.txt", sep="")

testF<-paste(folder, "test\\X_test.txt", sep="")
trainF<-paste(folder, "train\\X_train.txt", sep="")
testFL<-paste(folder, "test\\y_test.txt", sep="")
trainFL<-paste(folder, "train\\y_train.txt", sep="")

testDF<-read.table(testF)
trainDF<-read.table(trainF)
testLDF<-read.table(testFL)
trainLDF<-read.table(trainFL)
actRL<-read.table(actL)

mgTest<-merge(testLDF, actRL, by="V1")
mgTrain<-merge(trainLDF, actRL, by="V1")

names(mgTest)<-c("row","Activity")
names(mgTrain)<-c("row","Activity")

featuresF<-paste(folder, "features.txt", sep="")
featDF<-read.table(featuresF)

names(testDF)<-featDF$V2
names(trainDF) <- featDF$V2

cbTest<-cbind(testDF, mgTest["Activity"])
cbTrain<-cbind(trainDF, mgTrain["Activity"])

mgDF<-rbind(cbTest, cbTrain)

#needed measurements
msMean<-grep("mean()",featDF$V2)
msStd<-grep("std()",featDF$V2)
newFeat<-rbind(featDF[msMean,],featDF[msStd,])

newMG<-mgDF[newFeat$V1]

write.table(newMG, "X:\\_MyBox\\OneDrive\\_DEV\\R\\Coursera\\3-Getting and Cleaning Data\\Assignment\\AssignmentDataCleansing.txt")







