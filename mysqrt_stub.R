# Function to solve for the square root of x
mysqrt <- function( x=64, tol=.00001, myguess=10){

	newguess <- myguess
	error <- tol + 1

	while ( error > tol ) { 
	  approxy <- x/newguess
	  newguess <- (newguess+approxy)/2 
	  error = newguess - approxy
	  print(error < tol) 
	  print(newguess)
	  print(error)
	}
	return( newguess )

}

## Look up help page for Control. (?Control)
## Add an argument for verbose=FALSE in the function definition
## Change the print lines to be conditional 
## statements to be run only if the user chooses verbose=TRUE
## The function should then return only the final solution