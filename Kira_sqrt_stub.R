mysqrt <- function( x=81, tol=.00001, myguess=10, verbose=FALSE){		#begining the function with starting parameters
	if(x<0) {						#creates absolute value function so it will work with negative numbers
		x <- abs(x)
	}
	newguess <- myguess		#must rename myguess in the begining so as it cycles through guesses it does not keep going back to your first guess
	approx <- x/newguess	#get approximate number that might be the root
	newguess <- (newguess + approx)/2		#forming new newguess from your guess and approximate number
	error <- newguess - approx		#calculating error as the difference between your guess and the approximate number 
	error <- abs(error) 	#must calculate the absolute value of the error to correctly assess if it is under the tolerance
	error < tol		#if the tolerance is higher than the error right now (how we want it to be), then it is safe to print the following values for error<tol, newguess, and error
	 if (verbose == T) {print(error < tol)} 
	 if (verbose == T) {print(newguess)}
	 if (verbose == T) {print(error)}

	while ( error > tol ) { 		#if error is greater than tolerance, meaning we are not done with our guesses, then we must cycle through again
	  approx <- x/newguess		#get approximate number that might be the root
	  newguess <- (newguess+approx)/2 		#form new newguess from your previous guess and approximate number
	  error <- newguess - approx	  #calculating error as the difference between your newest guess and the approximate number 
	  error <- abs(error) 		#must calculate the absolute value of the error to correctly assess if it is under the tolerance. If this step is left out the function will not run after one round and will just return its newest guess from this round, not the actual square root.
	  if (verbose == T) {print(error < tol)} 		#we can now print the values we want
	  if (verbose == T) {print(newguess)}
	  if (verbose == T) {print(error)}
	}
	return(newguess)		#when entering mysqrt(), the value that will appear is the newest guess
}

mysqrt()			#testing the function
mysqrt(x=-81)		#testing a negative
mysqrt(x=625, myguess=5)		#testing a large number and a small guess to ensure that the function will run as many times is necessary
mysqrt(x=100, myguess=100)		#testing giving it the same number
mysqrt(x=100, myguess=10)		#testing giving it the answer to start with