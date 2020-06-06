## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{
  inverse_matrix <- NULL
  set <- function(y) {
    x <<- y
    inverse_matrix<<- NULL
  }
  get <- function() x
  setinverse <- function(inverse_matrix_value) inverse_matrix<<- inverse_matrix_value
  getinverse<- function() inverse_matrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse_value<-x$getinverse();
  if(!is.null(inverse_value))
  {
    print("cached data");
    return (inverse_value);
    
  }
  else
  {
    matrix<-x$get();
    inverse_value<-solve(matrix);
    x$setinverse(inverse_value);
    inverse_value;
  }
}
