#################
######HW 3#######
#################

######CLASS STUB#########
mysqrt <- function (x=64, tol=.0001, myguess=10)
{
newguess <- myguess
error <- tol + 1

while (error> tol) {
approxy<- x/newguess
newguess <- (newguess+approxy)/2
error = newguess - approxy
print(error < tol)
print(newguess)
print(error)
}
}

mysqrt()

###########STUB##########
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

## Add an argument for verbose=FALSE in the function definition
## Change the print lines to be conditional 
## statements to be run only if the user chooses verbose=TRUE
## The function should then return only the final solution

#if else # conditional statements, else is optional
####EX. if x>y print(x) else print(y)
#while #while the condition is true, run this code.
####EX. while (tolerance > .001)
#repeat #repeat. "break" is required to stop execution
####EX. if (condition) {break}
##########

######MY WORK######

mysqrt <- function( x=81, tol=.00001, myguess=27, verbose=FALSE){

	newguess <- myguess
	error <- tol + 1

	while ( error > tol ) { 
	  approxy <- x/newguess
	  newguess <- (newguess+approxy)/2 
	  error = newguess - approxy
	  if (error < tol) print(newguess)
	  else print(error)
	}
	
}
mysqrt(16)


x=81
myguess <- 27
#####THIS ONE##########
mysqrt <- function( x=81, tol=.000001, myguess=27, verbose=FALSE){

	newguess <- myguess
	newguess
	approxy <- x/newguess
	approxy
	newguess <- (newguess+approxy)/2
	newguess
	error = newguess - approxy
	error <- abs(error)
	error < tol
	if (verbose==T) {print(error < tol)} 
	if (verbose==T) {print(newguess)}
	if (verbose==T) {print(error)}

	while ( error > tol ) { 
	  approxy <- x/newguess
	  newguess <- (newguess+approxy)/2
	  error = newguess - approxy
	  error <- abs(error)
	  if (verbose==T) {print(error < tol)} 
	  if (verbose==T) {print(newguess)}
	  if (verbose==T) {print(error)}
	}
	return( newguess )
}

mysqrt(16)
mysqrt(49)
mysqrt(361)
mysqrt(10000, verbose=T)

################################
