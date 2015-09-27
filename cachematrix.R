## These two functions caclculate, cash, and retrieve the inverse of a square matrix
## Both are based off of the example functions given in the assignment description


## This function chaches and calculates a given matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  reset_matrix <- function(y){
    x <<- y
    m <<- solve(x)
  }
  retrn_matrix <- function() x 
  solve_matrix <- function() m <<- solve(x)
  solve_matrix()
  get_inverse <- function() m 
  list(retrn_matrix = retrn_matrix, reset_matrix = reset_matrix,
       solve_matrix = solve_matrix,
       get_inverse = get_inverse)
}



##  This function returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  m <- x$get_inverse()
  if(!is.null(m)) {
    message("cached, getting data")
    return(m)
  }
  if(is.null(m)) {
    message("Not cached, solving !")
    m <- x$solve_matrix()
    return(m)
  }
  
}



## Example inputs

## Store the matrix and its inverse in object 'a'
#a <- makeCacheMatrix(matrix(c(3,5,7,9),2,2))

##  Retrieve cached inverse of object 'a'
#cacheSolve(a)  

## Return matrix stored in object 'a'
#a$retrn_matrix()

## if(matrix is solved), Returns cached inverse in object 'a'
#a$get_inverse()

# Test new square matrix
#a$reset_matrix(matrix(c(2,9,4,8),2,2))

## To see message "Not cached, solving !", hashtag solve_matrix() to look like this 
#solve_matrix()