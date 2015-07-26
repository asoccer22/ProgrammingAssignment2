## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function caches a matrix that it is commanded to.
## I do not know what else to say. I really do not like comments especially
## I understand it helps communicate the code but whatever. Here is my function.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) i <<- inv
  getinverse <- function() i
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}


## Write a short comment describing this function
## This function solves the inverse matrix which was created in the
## previous function then it prints it. Pretty simple.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  m <- x$get()
  i <- solve(m, ...)
  x$setinverse(i)
  i
}
