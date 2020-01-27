# Function to solve for the square root of x

mysqrt <- function( x=81, tol=.00001, myguess=27, verbose=FALSE){

	newguess <- myguess #rename your guess to new guess
	approxy <- x/newguess #test your guess
	newguess <- (newguess+approxy)/2 
	error = newguess - approxy #find error between newguess and approx y
	abs(error) #make sure the error is not a negative value
	error > tol #is the error greater than the tolerance?
	
	#make some default returns for "unfriendly" square root values
	if (x < 0) return("You can't take the square root of a negative number.")
	if (myguess < 0) return("The square root of a number can never be negative.")
	if (x == 0) return("ZERO.")
	
	#repeat the process until you reach an error that is less than the tolerance
	while ( error > tol ) { 
		approxy <- x/newguess
		newguess <- (newguess+approxy)/2 
		error = newguess - approxy
		abs(error)
		
		#set values to print if verbose=TRUE
		if(verbose==TRUE){print(error < tol)} 
		if(verbose==TRUE){print(newguess)}
		if(verbose==TRUE){print(error)}
	
	}
	return( newguess ) #if verbose=FALSE, only return new guess/square root output
}
