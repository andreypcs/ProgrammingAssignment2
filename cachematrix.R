## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

### This function stores a matrix and caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<-function(y) {
    x<<-y
    i<<-NULL
  }
  get <- function() x
    SetInverse<-function(inverse) i<<-inverse
    GetInverse<-function() i
    list(set=set, get=get, SetInverse=SetInverse, GetInverse=GetInverse)
}


## Write a short comment describing this function

### This function displays the result returned by the anterior function. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<-x$GetInverse()
  if(!is.null(i)){
      message("getting cached data")
      return(i)
    }
  data<-x$get()
  i<-solve(data, ...)
  x$SetInverse(i)
  i
}

