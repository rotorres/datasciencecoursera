## Programming R - Assignment 3 - part 2
best <- function(state, outcome) {
    ## Read outcome data
    objCsvFile<-read.csv("outcome-of-care-measures.csv")
    
    ## Check if given state is valid
    arrStates <- unique(objCsvFile$State)
    if (!(state %in% arrStates)){
        stop("invalid state")
    }
    
    ## Check if given outcome is valid
    arrOutcome <- c(11, 17, 23)
    names(arrOutcome) <- c("heart attack","heart failure","pneumonia")
    if (!(outcome %in% names(arrOutcome))) {
        stop("invalid outcome")    
    }
    
    ## Return hospital name in that state with lowest 30-day death rate
    strHospital<-""
    objSSCsv<-subset(objCsvFile[c(2,arrOutcome[outcome])], objCsvFile["State"] == state)
    
    if (nrow(objSSCsv) > 0) {
        objSSCsv[,2]<-as.numeric(as.vector(objSSCsv[,2]))
        numMin <- min(objSSCsv[[2]], na.rm=TRUE)
        strHospital<-objSSCsv[objSSCsv[2]==numMin,][1]
        strHospital<-sort(as.vector(strHospital[[1]]))[1]
    }
    strHospital
}