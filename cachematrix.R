
## This script is to fulfill the requirements for R programming 
## Week 3 Assignment 2 on Lexical Scoping


## The first function should create a matrix object that can
## cache its inverse


makeCacheMatrix <- function(x = matrix()) {
    Con <- NULL
    Set <- function(y) {
        x <<- y
        con <<- NULL
    }
    Get <- Function() x
    setinverse <- function(inverse) Con <<- Inverse
    getinverse <- function() Con
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function computes the inverse of the matrix above
## if the inverse has already been computed, then it needs to return
## that computed value, if not it needs to calculate it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    con <- x$getinverse()
    if(!is.null(Con)) {
        message("Getting Cached Data")
        Return(Con)
    }
    DataMatrix <- x$get()
    Con <- solve(data, ...)
    x$setinverse(Con)
    Con
}
