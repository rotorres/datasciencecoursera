## Assignment 1: Air Pollution
corr <- function(directory, threshold = 0) {
    strFiles <- list.files(directory)

    vec <- vector('numeric')
    
    for (strFile in strFiles) {
        objCsvFile <- read.csv(paste(directory, strFile, sep=""))
        objCsvFile <- subset(objCsvFile, !is.na(objCsvFile["sulfate"]) & !is.na(objCsvFile["nitrate"]))

        if (nrow(objCsvFile) > threshold) {
            vec <- rbind(vec,cor(objCsvFile["sulfate"],objCsvFile["nitrate"]))
        }
    }
    vec
}

