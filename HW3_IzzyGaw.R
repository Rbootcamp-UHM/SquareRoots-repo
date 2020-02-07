#################
######HW 3#######
#################


mysqrt <- function( x=81, tol=.000001, myguess=27, verbose=FALSE){  #This function finds the square root of your input (x)!

	newguess <- myguess 
	
	if (x>0) { #this makes it so you cannot use negatives in the input, and if you do, you get a custom error message
	
	approxy <- x/newguess 
	newguess <- (newguess+approxy)/2 
	error = newguess - approxy #finds the error 
	error <- abs(error) #making sure the error is positive by using the absolute value function
	error < tol #made the tolerance higher than the error
	
	if (verbose==T) {print(error < tol)} #if true, this function would print if the error is larger or smaller than the tolerance.
	if (verbose==T) {print(newguess)} #if true, this function would print newguess.
	if (verbose==T) {print(error)} #if true, this function would print error.

	while ( error > tol ) { #if the error is larger than the tolerance, then ...
	  approxy <- x/newguess  
	  newguess <- (newguess+approxy)/2  
	  error = newguess - approxy 
	  error <- abs(error)  #find the absolute value of error and rename to "error"
	  if (verbose==T) {print(error < tol)} 
	  if (verbose==T) {print(newguess)} 
	  if (verbose==T) {print(error)} 
	}
	
	return( newguess ) 
	}else print("BAD. DO NOT USE NEGATIVES") #this is the custom error message

}


#Testing the above function with small, large, and negative numbers

mysqrt(16) 
mysqrt(16, verbose=TRUE) 
mysqrt(-16)

mysqrt(49)
mysqrt(-49)
mysqrt(49, verbose=TRUE)

mysqrt(361)
mysqrt(-361)
mysqrt(361, verbose=TRUE)

mysqrt(10000)
mysqrt(-10000)
mysqrt(10000, verbose=TRUE)

mysqrt(810000)
mysqrt(-810000)
mysqrt(810000, verbose=TRUE)

