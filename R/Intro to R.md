# Intro to R

* to search things about r use the keyword "cran"



### Entering Directory

* 



### Data Organization

* Organize by Project first then by Data Source second
* Hyphens for compound words, underscores for different data types (results_today and site-1)
* Don’t touch raw data
* GitLab or Codeburg is available as non-MS alternative to GitHub


### Common Bash (standard terminal language) codes
* list files/folders
`ls`
* list all files/folders including hidden
`ls -a`
* name current folder
`pwd`
* copy file
`cp file1 my-folder/`
* copy folder
`cp file1 my-folder/copied file`


### Git Vocabulary
* Repository — a folder git is tracking
* Commit — snapshot
* Branch — a name of a commit
	* Default Branch
* Fork — copy of entire repository
* Remote — URL pointing to another copy of the repository
	* Upstream — main version of repository


### Open Fork on Local Machine
* Make a directory to use (get to the folder you want to be in first using cd)
mkdir directory-name
* Click "Fork" button on github.com page and create a fork for yourself (can be same name)
* Click "Code" button, and copy the code in the SSH tab
* Clone the fork to your local machine by using this code and pasting the SSH code like the example below with the copied code starting at "git@""
git clone git@github.com:LorenShumaker/intro-r-2026.git        


### Commiting Changes from Local to Git

* first, make your changes and save the file...
* see if there are modified files to update\
`git status`
* see difference between saved file\
`git diff`
* load the changes into the commit\
`git add .`
* commit the file and say what you changed (you MUST say what you changed)\
`git commit -m "say what's different"`
* push the commited changes to the fork\
`git push -u origin main`

#

***

#

# RStudio


### File Types

* `.md` markdown
* `.rmd` R markdown
* `.qmd` R markdown that allows you to show some code (rmd files can be switched to qmd files, they can also be switched to python)
* `.r` standard R file


### General Notes

* R Studio cheat sheets:
	* In RStudio go to Help > Cheat Sheets > whichever one you want or "Browse Cheat Sheets"
* quarto options
	* https://quarto-tdg.org/yaml
* R is case sensitive 


### Coding in R

* Command + Option + i inserts new code chunk that looks like this:
````
```{r}

```
````

* Notes can go outside of that chunk, or # can start a note
* R handles data types differently if they are character, logical, vector, or numerical


### R Functions

* Functions can be recognizable when they are followed by parentheses
* To learn more about a function like `typeof()` you can type `? typeof()` in the RStudio Console
* `typeof()`: get the data type of whatever is in the parentheses:\
`typeof(8.5)`
* `getwd()` enter into the RStudio Console to see where you are in the folder structure

##### Exploring Data Functions

* Structure of data
`str()`
* Returns the first rows or elements of a data frame, matrix, table, or vector
`head()`
* Returns the last six elements (for vectors) or last six rows (for data frames/matrices)
`tail()`
* Produce "result summaries" of various model-fitting functions, data frames, or vectors
`summary()`
* Provide a transposed, compact summary of a data frame or tibble
`glimpse()`
* Create a frequency table of values
`table(table(data-frame0name$column-name))`


### R Packages

* To learn more about a package like `rio` you can type  `?? rio` in the RStudio Console
* some common packages (provided in the training resources):\
`
pkgs <- c(
  "rio",        # import/export by file extension
  "tidyverse",  # dplyr, tidyr, ggplot2, readr, etc.
  "lubridate",  # date-time parsing
  "stringr",    # string utilities
  "janitor",    # clean_names(), tabyl(), etc.
  "scales",     # percent_format and friends
  "tidycensus"  # ACS API wrapper (optional bonus section)
)`


* You can also install cran verified packages by going to the Packages pane in RStudio and clicking "Install" then searching for the name of a package
* Other valuable packages
	* `summarytools` Provides more detailed tools for sumarizing, after installed and loaded use the function `dfSummary()`









