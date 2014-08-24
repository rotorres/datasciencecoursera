## Functions for caching special functions for Matrix Methods
## On this script you'll find cache function for Solve operation

## This first function has as objective, cache data and make available
## the method Solve for inverse calculation on the Matrix data 
## Last update: Rober Torres on 08/24/2014
makeCacheMatrix <- function(x = matrix()) {
    mtxSolve <- NULL
    
    set <- function(mtx) {
        x <<- mtx
        mtxSolve <<- NULL
    }
    get <- function() x
    
    setSolve <- function(mSolve) mtxSolve <<- mSolve
    getSolve <- function() mtxSolve
    
    list(set = set, get = get, setSolve = setSolve, getSolve = getSolve)
}


## This function can address the method Solve on a given Matrix
## returning the result of the execution, or returning the cached data 
## if available
## Last update: Rober Torres on 08/24/2014

cacheSolve <- function(x, ...) {
    mSolve <- x$getSolve()
    
    if (is.null(mSolve)){
        mtxData <- x$get()
        mSolve <- solve(mtxData, ...)
        x$setSolve(mSolve)
        mSolve
    }
    else
    {
        message("We are now using cached data")
        mSolve
    }
}