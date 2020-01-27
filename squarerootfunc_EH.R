mysqrt <- function(x, myguess=10, tol=.000001, verbose=FALSE) { #This sets the default parameters of the function
	x <- if(x < 0){return("Stop! That's illegal. This function will not allow you to take the square root of a negative number")} else if(x==0) {return(0)} else{x} #This line filters the x input to only allow the function to take square roots of postive numbers. If the input passes this test, then it the function will determine if the input is "0". If the input is "0" then the function will return "0" becuase the square root of "0" is "0". If the input is greater than "0", the input will be stored as "x". 
	newguess <- if(myguess < 0){return("Stop! That's illegal. The square root of a number cannot be negative")} else{myguess} #This line filters the inputs to only allow the function to accept guesses that are postive numbers. 
	approxy <- x/newguess 
	newguess <- (newguess + approxy)/2
	error <- newguess-approxy
	error <- if(error < 0) {error*-1} else if (error == 0){return("Your guess is correct!")} else{error} #This line is a fun conditional. If your guess is below the square root of "x" you will get a negative number for "error". In order to keep the error postive for the logical argument "error > tol" to work, the function will mulitply all negative "error" values by "-1". If your guess is correct, it will return a message stating that your guess was correct!
	error < tol
	if(verbose==TRUE) {print(paste("error:", error))} #This is a conditional that prints the difference between newguess and approxy for the first round if verbose==TRUE
	if(verbose==TRUE) {print(paste("approximate y:", approxy))} #This is a conditional the prints the approxy from the algorithm above for the first round if verbose==TRUE
	if(verbose==TRUE) {print(paste("guess Y:", newguess))} #This is a conditional the prints the new guess from the algorithm above for the first round if verbose==TRUE

	while(error > tol) { #This is the while loop that will recalculate the "error" value until it under the tolerance specifed in the argument "tol".
		approxy <- x/newguess
		newguess <- (newguess + approxy)/2 
		error <- newguess-approxy
		if(verbose==TRUE) {print(paste("error:", error))}  #This is a conditional that prints the difference between newguess and approxy for each iteration of the "while loop" if verbose==TRUE
		if(verbose==TRUE) {print(paste("approximate y:", approxy))} #This is a conditional the prints the approxy from the algorithm above for each iteration of the "while loop" if verbose==TRUE
		if(verbose==TRUE) {print(paste("guess Y:", newguess))} #This is a conditional the prints the new guess from the algorithm above for for each iteration of the "while loop" if verbose==TRUE
}
	if(verbose==TRUE) {print(paste("final answer:", round(newguess, 3)))} else{return(newguess)} #This is the "return" line of the function. If verbose==T, it will mark the "newguess" that is associated with an error < tolerance as "final answer" and round it to 3 decimal places. If verbose==F, it will just return the "newguess" that is associated with an error < tolerance.
}

#Here are some fun examples of the function in action:

#The x variable is number you want to square root:
mysqrt(x=4)

#This will also work because I have set x as the first variable:
mysqrt(4)

#The x variable is number you want to square root and you can turn on verbose to show the steps it takes to reach that answer:
mysqrt(x=4, verbose=T)

#Now you can try it on some random number:
mysqrt(1234567)

#The function will work if your guess is greater than the "x" argument:
mysqrt(x=64, myguess=100)

#The function will work if your guess is less than the "x" argument:
mysqrt(x=64, myguess=1)

#The function will print a fun message if you guess the square root correctly:
mysqrt(x=64, myguess=8)

#The function will print a fun message if your guess is a negative number:
mysqrt(x=64, myguess=-15)

#The function will print a fun message if you try to take the square root of a negative number:
mysqrt(x=-16)

#You can actually try this yourself! If you run the function in your R console, you can continue playing with it! 