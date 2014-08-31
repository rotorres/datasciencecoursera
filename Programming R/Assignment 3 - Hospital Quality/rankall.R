## Programming R - Assignment 3 - part 4
rankall <- function(outcome, num = "best") {
    ## Read outcome data
    objCsvFile<-read.csv("outcome-of-care-measures.csv")
    
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
    
    ## For each state, find the hospital of the given rank
    ## Return a data frame with the hospital names and the
    ## (abbreviated) state name
    objSSCsv<-subset(objCsvFile[c(2, 7, arrOutcome[outcome])])
    objSSCsv[,3]<-as.numeric(as.vector(objSSCsv[,3]))
    objSSCsv<-objSSCsv[order(objSSCsv[,3],objSSCsv[,1], na.last=NA, decreasing=blnSortDsc),]
    colnames(objSSCsv)<-c("hospital","state","Ponctuation")
    
    arrStates<-sort(as.character(as.vector(unique(objSSCsv$state))))
    objSSCsv<-split(objSSCsv,objSSCsv$state)
    
    strHospital<-data.frame()
    for (stIdx in arrStates) {
        if (is.na(objSSCsv[[stIdx]][num,2])) {
            objSSCsv[[stIdx]][num,2]<-stIdx
        }
        objSSAux<-objSSCsv[[stIdx]][num,c(1,2)]
        strHospital<-rbind(strHospital,objSSAux)
    }
    strHospital[order(strHospital[2],na.last=TRUE),]
}
