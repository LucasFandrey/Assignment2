## The aim of this task is to create a function that produces the
## inverse matrix of any given matrix.

## In this function makeCacheMatrix() creates a matrix object that can
## cache its inverse.



makeCacheMatrix <- function(x = matrix()) {

  m<-NULL
  set<-function(y){
  x<<-y 
## <<- operator is used to assign a value in this environment (avoiding 
## scoping rules)
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}



## This function cacheSolve() returns the inverse matrix of x.

cacheSolve <- function(x, ...) {
        
m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
