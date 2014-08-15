## Assignment 1: Air Pollution
pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    objDataFile <- data.frame(Date=as.Date(character()), sulfate=character(), nitrate=character(), ID=numeric())
    for (intI in id) {
        strFileName <- paste("00",intI, sep = "")
        strFileName <- paste(substr(strFileName, nchar(strFileName)-2, nchar(strFileName)), ".csv", sep="")
        strFileName <- paste(directory, strFileName, sep="")
        
        objDataFile <- rbind(objDataFile, read.csv(strFileName))
    }
    colMeans(objDataFile[pollutant], na.rm = TRUE, dims = 1)
}

