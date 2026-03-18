# Intro to R

* to search things about r use the keyword "cran"



### Data Organization

* Organize by Project first then by Data Source second
* Hyphens for compound words, underscores for different data types (results_today and site-1)
* Don’t touch raw data
* GitLab or Codeburg is available as non-MS alternative to GitHub


### Bash (standard terminal language) codes
ls 		list files/folders
pwd 	name current folder
cp 		file1 my-folder/
cp 		file1 my-folder/copied file


### git vocabulary
* Repository — a folder git is tracking
* Commit — snapshot
* Branch — a name of a commit
	* Default Branch
* Fork — copy of entire repository
* Remote — URL pointing to another copy of the repository
	* Upstream — main version of repository


### open fork to local machine
* Make a directory to use (get to the folder you want to be in first using cd)
mkdir directory-name
* Click "Fork" button on github.com page and create a fork for yourself (can be same name)
* Click "Code" button, and copy the code in the SSH tab
* Clone the fork to your local machine by using this code and pasting the SSH code like the example below with the copied code starting at "git@""
git clone git@github.com:LorenShumaker/intro-r-2026.git        


### commiting changes

* first, make your changes and save the file...
* see difference between saved file\
`git diff`
* load the changes into the commit\
`git add .`
* commit the file and say what you changed (you MUST say what you changed)\
`git commit -m "say what's different"`
* push the commited changes to the fork\
`git push -u origin main`

***

# RStudio


### File Types

* .md 		markdown
* .rmd 		R markdown
* .qmd 		R markdown that allows you to show some code (rmd files can be switched to qmd files, they can also be switched to python)
* .r 		standard R file


### General Notes

* R Studio cheat sheets
> In RStudio go to Help > Cheat Sheets > whichever one you want or "Browse Cheat Sheets"

* quarto options
https://quarto-tdg.org/yaml

* R is case sensitive
* 



### Coding in R


Command + Option + i inserts new code chunk that looks like this:
```{r}

```

* Notes can go outside of that chunk, or # can start a note
* R handles data types differently if they are character, logical, vector, or numerical


### R Functions

* get the data type of whatever is in the number
typeof(8.5)












