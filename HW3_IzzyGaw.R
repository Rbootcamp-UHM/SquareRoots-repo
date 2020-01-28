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

###########STUB DOCUMENT##########
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



##########################
#########MY WORK##########
##########################

mysqrt <- function( x=81, tol=.000001, myguess=27, verbose=FALSE){  #This sets up the function and its arguments. It establishes the x and myguess (which both are used to find the square root), the tolerance (which is the amount of deviation allowed from the actual answer), and verbose (which if turned off will not show all the output of the conditionals (default), but if TRUE will show). 

	newguess <- myguess #renames myguess to newguess
	newguess  #check
	approxy <- x/newguess #divides x by newguess and renames approxy
	approxy #check
	newguess <- (newguess+approxy)/2 #divides the sum of new guess and approxy by 2 and renaming to newguess.
	newguess #check
	error = newguess - approxy #finding the error 
	error <- abs(error) #making sure the error is positive by using the absolute value function
	error < tol #made the tolerance higher than the error
	if (verbose==T) {print(error < tol)} #if the user wanted, this function would print if the error is larger or smaller than the tolerance.
	if (verbose==T) {print(newguess)} #if the user wanted, this function would print the value of newguess.
	if (verbose==T) {print(error)} #if the user wanted, this function would print the value of the error.

	while ( error > tol ) { #this function says, if the error is larger than the tolerance, then ...
	  approxy <- x/newguess  #divide x/newguess
	  newguess <- (newguess+approxy)/2  #add newguess and approxy then divide by 2
	  error = newguess - approxy #subtract approxy from newguess
	  error <- abs(error)  #find the absolute value of error and rename to "error"
	  if (verbose==T) {print(error < tol)} #if the user wanted, this function would print if the error is larger or smaller than the tolerance.
	  if (verbose==T) {print(newguess)} #if the user wanted, this function would print the value of newguess.
	  if (verbose==T) {print(error)} #if the user wanted, this function would print the value of the error.
	}
	return( newguess ) #
}


#Testing the above function with various values.

mysqrt(16) #does not show conditionals
mysqrt(16, verbose=TRUE) #shows conditionals
mysqrt(49)
mysqrt(49, verbose=TRUE)
mysqrt(361)
mysqrt(361, verbose=TRUE)
mysqrt(10000)
mysqrt(10000, verbose=TRUE)
mysqrt(810000)
mysqrt(810000, verbose=TRUE)


###HW2 RENDER####
setwd("C:/Users/izzyg/Documents/rbootclass/SquareRoots-repo")
require(rmarkdown)
Sys.setenv(RSTUDIO_PANDOC="C:/Program Files/RStudio/bin/pandoc")
render("HW3_IzzyGaw.Rmd", output_format="html_document") # to html
