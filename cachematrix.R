## These functions try to improve performance when calculating the
## inverse of a matrix. It does so by first constructing a cached
## version of a matrix, which stores its inverse in an internal
## cache.
## The inverse is only calculated the first time and any subsequent
## calls will simply return the cached inverse.

## Takes a matrix and returns a list of operations that can be
## performed on the matrix (get, set, getinverse, setinverse)

makeCacheMatrix <- function(x = matrix()) {
  m_inverse <- NULL
  set <- function(y){
    x <<- y
    m_inverse <<- NULL
  }
  get <- function() x
  set_inverse <- function(inverse) m_inverse <<- inverse
  get_inverse <- function() m_inverse
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Takes a special matrix as provided by makeCacheMatrix and
## returns the inverse of that matrix. If the inverse has not
## been calculated before, it is calculated and stored in the
## matrix internal cache, otherwise the inverse is returned
## directly.
## This function assumes that the supplied matrix is square
## and that it has an inverse

cacheSolve <- function(x, ...) {
  inv <- x$get_inverse()
  if (!is.null(inv)){
    message("getting cached inverse")
    return(inv)
  }
  
  mat <- x$get()
  inv <- solve(mat, ...)
  x$set_inverse(inv)
  inv
}
