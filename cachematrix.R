## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cacheInvMatrix <- NULL
  set <- function(y)
  {	
    x <<- y
    cacheInvMatrix <<- NULL
  }
  get <- function() x
  setinverse <- function(invMatrix) cacheInvMatrix <<- invMatrix
  getinverse <- function() cacheInvMatrix 	
  list(set = set, get = get, setinverse = setinverse , getinverse = getinverse )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(!is.null(x$getinverse()))
	{
		print("getting cached inverse matrix")
		return(x$getinverse())
	}
	data <- x$get()
	inv <- solve(data)
	x$setinverse(inv)
	x$getinverse()
}
