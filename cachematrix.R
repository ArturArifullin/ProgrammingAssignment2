## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        setvalue <- function( ){
                x <<- y
                m <<- NULL
        }
        getvalue <- function( ) x
        setreverse <- function(reverse) m <<- reverse
        getreverse <- function() m 
        list( setvalue= setvalue, getvalue= getvalue, 
              setreverse= setreverse, getreverse= getreverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getreverse()
        if( !is.null(m) ){
                message("I'll get cashing data")
                return(m)
        }
        data <- x$getvalue()
        m <- solve(data, ...)
        x$setreverse(m)
        m
}


