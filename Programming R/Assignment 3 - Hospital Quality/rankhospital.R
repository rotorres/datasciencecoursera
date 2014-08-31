## Programming R - Assignment 3 - part 3
rankhospital <- function(state, outcome, num = "best") {
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
    
    ## check the num parameter
    blnSortDsc<-FALSE
    if (!is.numeric(num)) { 
        blnSortDsc<-!(num=="best")
        num<-1
    }
    
    ## Return hospital name in that state with the given rank 30-day death rate
    objSSCsv<-subset(objCsvFile[c(2,arrOutcome[outcome])], objCsvFile["State"] == state)
    
    if (nrow(objSSCsv) > 0) {
        objSSCsv[,2]<-as.numeric(as.vector(objSSCsv[,2]))
        objSSCsv<-objSSCsv[order(objSSCsv[,2],objSSCsv[,1], na.last=TRUE, decreasing=blnSortDsc),]
    }
    as.vector(objSSCsv[[1]])[num]
}