## Put comments here that give an overall description of what your
## functions do

## This function creates a matrix whose inverse can be cached
## The function creates a list with the following functions:
## setMatrix() which sets the value of the matrix
## getMatrix() which gets the value of the matrix
## setInverse() which calculates the inverse of the matrix
## getInverse() which gets the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    setMatrix <- function(y){
        x <<- y
        m <<-NULL
    }
    getMatrix <- function() x
    setInverse <- function(solve)  m <<- solve
    getInverse <- function() m
    list(setMatrix = setMatrix, getMatrix = getMatrix , getInverse = getInverse, setInverse = setInverse)

}


## Write a short comment describing this function
## This function calculates the inverse of the matrix created above
## Checks if inverse was already calculated
## If it was, it gets inverse from memory with a message
##If it wasn't, it calculates the inverse and stores it in the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$getMatrix()
    m <- solve(data, ...)
    x$setInverse(m)
    m
}
