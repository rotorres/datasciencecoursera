## Assignment 1: Air Pollution
complete <- function(directory, id = 1:332) {
    
    objDataFile <- data.frame(numeric(), numeric())
    for (intI in id) {
        strFileName <- paste("00",intI, sep = "")
        strFileName <- paste(substr(strFileName, nchar(strFileName)-2, nchar(strFileName)), ".csv", sep="")
        strFileName <- paste(directory, strFileName, sep="")
        
        objCsvFile <- read.csv(strFileName)
        objCsvFile <- subset(objCsvFile, !is.na(objCsvFile["sulfate"]) & !is.na(objCsvFile["nitrate"]))
        
        objDataFile <- rbind(objDataFile, c(intI, nrow(objCsvFile)))
    }
    names(objDataFile) <- c("id","nobs")
    objDataFile
}

