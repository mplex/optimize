
## FORCE-DIRECTED LAYOUT ALGORITHM
## FUNCTION forced() 
## INPUT:     x (a square and binary matrix with network data)
## ARGUMENTS: seed (integer, the seed for the initial random distribution)
##            maxiter (integer, number of iterations)

forced <- function (x, seed=NULL, maxiter=100) {

# matrix size is the number of rows
n <- nrow(x)

# initial coordinates X and Y with a seed
set.seed(seed)

# record the generated random uniformed distributed data as data frame 'crd'
crd <- data.frame(X=round(stats::runif(n)*1L,5),Y=round(stats::runif(n)*1L,5))

# 1st and 2nd columns of 'crd' are "location" coordinates X and Y
locx <- crd[ ,1]
locy <- crd[ ,2]

# a factor of the square root of the ratio between product of the difference of 
# max and min values of the two locations to the matrix size
k <- .75 * sqrt(((max(locx) - min(locx)) * (max(locy) - min(locy))) / n)

# vectors with "forces" on locations X and Y are initial zero
forcex <- rep(0, n)
forcey <- rep(0, n)

# iteration begins from 1 to the indicated 'maxiter'
for(niter in seq_len(maxiter)) { #
 
 # start with rows 1 to n
 for(i in seq_len(n)) { #
  
  # scalar forces for X and Y are initial zero
  forcevx <- 0
  forcevy <- 0
  
  # for columns reverse n to 1
  for(j in rev(seq_len(n))) {
   
   # define distance of elements i and j in x if these are not equal
   if(i != j) {
   
   dx <- locx[j] - locx[i]
   dy <- locy[j] - locy[i]
   # distance formula
   d <- sqrt(dx^2 + dy^2)
   
   # apply a quadratic force when i and j are linked
   if(x[i, j] != 0) {
       force <- (d / k) -k^2 / d^2
   #  or a repulsive force otherwise
       } else if(x[i, j] == 0) {
       force <- -k^2 / d^2
   }
   
   # update scalars with distances
   forcevx <- forcevx + force * dx
   forcevy <- forcevy + force * dy
   }
   
  }
  
  # then update force vectors with scalars
  forcex[i] <- forcevx
  forcey[i] <- forcevy
  
 }
 
 # finally update n locations in X and Y and cool down with a 'scala'
 for(i in seq_len(n)) {

     # distance between forces
     fd <- sqrt(forcex[i]^2 + forcey[i]^2)
     scala <- min(fd, 2L / niter) / fd

     locx[i] <- locx[i] + (forcex[i] * scala)
     locy[i] <- locy[i] + (forcey[i] * scala)

 }
 
}

# initial coordinates are updated
crd[,1] <- locx
crd[,2] <- locy

return(crd)

}
