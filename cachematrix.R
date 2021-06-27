## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Función util que establece la matriz y la inversa
makeCacheMatrix <- function(x = matrix()) {
  inversa <- NULL
  set <- function(y) {
    x <<- y
    inversa <<- NULL
  }
  get <- function() {x}
  setInversa <- function(inversa1) {inversa <<- inversa1}
  getInversa <- function() {inversa}
  list(set = set, get = get,
       setInversa = setInversa,
       getInversa = getInversa)
}

## Write a short comment describing this function

## Calcular y almacenar en cache la inversa de una matriz
cacheSolve <- function(x, ...) {
  inversa <- x$getInversa()
  if(!is.null(inversa)) {
    message("metodo cache para matrix inversa")
    return(inversa)
  }
  data <- x$get()
  inversa <- solve(data, ...)
  x$setInversa(inversa)
  inversa
  ## Return a matrix that is the inverse of 'x'

}


