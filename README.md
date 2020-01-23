# HW3: Home-Canned Pickles, Preserves, and SQUARE ROOTS
## Do While, Function practice and Intro to Numerical Algorithms
## <span style="color:blue">Due by Monday by midnight</span>

# R Task 

1. Clone and create your own branch off of `SquareRoots-repo`(instructions below if you need) and review code in
   ```
   mysqrt_stub.R  
   ```
2. Our goal in this homework is to produce a square-root solving function. You may start with the stub we developed in class. As you recall, we learned how to write a do-while loop, and learned about an iterative method. We took a guess, figured out how to apply an algorithm to get us a bit closer to the true solution, and repeat until we are within a tolerance at which point we stop and call that the solution.  
    1. Start by understanding the flowchart. Make sure that you have clean code that represents each step accurately in the flowchart.
    2. Look up the help page for Control (?Control) and read up on what you are using.
    3. Come up with tests to challenge your square root function. Test weird inputs, like negative numbers. Does it work? If it breaks, figure out why and try to fix it. 
	4. Add an argument for verbose=FALSE in the function definition. 
	5. Change the print lines to be conditional statements to be run only if the user chooses verbose=TRUE.
    6. The default behavior of the function should then return only the final solution

# Submission
 
3. Write up and push back up to GitHub:
	1. R script (.R) that contains your working function
	2. Rmarkdown and html files that introduces your new function to the world.  Be sure to explain its essential elements and include examples of its use.
	
4. Generate a pull request for your work on the GitHub website to complete submission.  

---
# Helpful Notes on Rmarkdown and Git/GitHub
---

# Rmarkdown

[Rmarkdown basics](https://rmarkdown.rstudio.com/authoring_basics.html)

# Generating html with Rmarkdown

From within R (make sure the .Rmd file is in your R working directory): 
   ```{r}
   require(rmarkdown)
   
   render("markdown_example.Rmd", output_format="html_document") # to html
   # render("markdown_example.Rmd", output_format="word_document")  # to word doc
   # render("markdown_example.Rmd", output_format="pdf_document")  # to pdf
   # render("markdown_example.Rmd", output_format="md_document")  # to markdown
   ```

# Working with GitHub:

Cloning the repository. From your Rclass directory in your CMD or Terminal window:
   ```
    git clone https://github.com/Rbootcamp-UHM/SquareRoots-repo.git
   ```
Check the status of your branches:
   ```
   git branch 
   ```
Making your own branch (give it your own name) and check it out (this means Git will start tracking the branch):
   ```
   git branch my-awesome-branch
   git checkout my-awesome-branch
   ```

## Pushing your new files or changes back up to the repository. 

Check status first:
   ```
   git status
   ```
You should get a message that you have changes not staged for commit on your branch. 
Add the new files on the docket to push up to your branch on github:
   ```
   git add myscript.R    
   ```
Write a commit message:
   ```
   git commit -m "Add script to do xx"
   ```
Finally push up the changes to **your own branch**. Donʻt worry it will not change the "master":
   ```
   git push origin my-awesome-branch
   ```
Every time you made edits you have to do all three:
   ```
   git add myscript.R    
   git commit -m "edits to myscript.R"
   git push origin my-awesome-branch
   ```

## If any files in your branch have been changed on the server (through the browser or someone else changed them), you will need to update your local branch before pushing your new files up to the repository:

Check the status of your branch (and confirm which one youʻre on):
   ```
   git branch 
   ```
If you have new changes on the remote my-awesome-branch and need to update your local files:
    ```
    git pull origin my-awesome-branch
    ```
Check if all is up to date:
   ```
   git status
   ```
   
If everyting is up to date it will say `Your branch is up-to-date with 'origin/master'. nothing to commit, working tree clean`

## Browsing branches

List all branches. Checkout a cool looking branch. Check which branch youʻre on:
   ```
   git branch -a
   git checkout someones-cool-branch
   git branch
   ```
To go back to your own branch, or to master:
   ```
   git checkout my-awesome-branch
   git branch
   git checkout master
   git branch
   ```


## Submission

Generate a pull request to submit your branch for review. Do this on the GitHub website.

Provide comments (at least 2) on your classmates work. Do this through the GitHub website. They have a very nice interface. 
- Click on `Pull requests` along the upper menu
- Click on one of the pull requests (branches)
- Click on `Files changed` along the second upper menu
- Highlight the rows you want to comment on
- You can checkout their branch to run the code or markdown on your own computer

[Video tutorial on how to comment on other peopleʻs code in a Pull Request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/reviewing-proposed-changes-in-a-pull-request)



