## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

#assigning null value to start with
        im <- NULL

#Function which sets the value of matrix with special operator
        set <- function(y) {
                x <<- y
                im <<- NULL
        }

#calling function to get value of matrix
        get <- function() x

#Setting the inverse of matrix
        setinv <- function(solve) im <<- solve

#Get the value for matrix inversion
        getinv <- function() im

#Getting list object
        list(set = set, get = get,
             setinv = setinv ,
             getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
#Assigning retained object to a desired vector
        im <- x$getinv()

#Checking the availability of inversed matrix and returning the existing value
        if(!is.null(im)) {
                message("getting cached data")
                return(im)
        }

#Creating matrix if inversted matrix does not exist before
        data <- x$get()

#Getting inverse of matrix 
        im <- solve(data, ...)

#Getting matrix inversion
        x$setinv(m)

#Printing result
        im

}
