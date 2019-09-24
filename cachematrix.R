## These functions try to improve performance when calculating the
## inverse of a matrix. It does so by first constructing a cached
## version of a matrix, which stores its inverse in an internal
## cache.
## The inverse is only calculated the first time and any subsequent
## calls will simply return the cached inverse.

## Takes a matrix and returns a list of operations that can be
## performed on the matrix (get, set, getinverse, setinverse)

makeCacheMatrix <- function(x = matrix()) {

}


## Takes a special matrix as provided by makeCacheMatrix and
## returns the inverse of that matrix. If the inverse has not
## been calculated before, it is calculated and stored in the
## matrix internal cache, otherwise the inverse is returned
## directly.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
