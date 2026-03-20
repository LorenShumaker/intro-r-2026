# Intro to R

-   to search things about r use the keyword "cran"

### Entering Directory in Terminal

-   cd path/name/for/directory

### Data Organization

-   Organize by Project first then by Data Source second
-   Hyphens for compound words, underscores for different data types (results_today and site-1)
-   Don’t touch raw data
-   GitLab or Codeburg is available as non-MS alternative to GitHub

### Common Bash (standard terminal language) codes

-   list files/folders\
    `ls`
-   list all files/folders including hidden\
    `ls -a`
-   name current folder\
    `pwd`
-   copy file\
    `cp file1 my-folder/`
-   copy folder\
    `cp file1 my-folder/copied file`

### Git Vocabulary

-   Repository — a folder git is tracking
-   Commit — snapshot
-   Branch — a name of a commit
    -   Default Branch
-   Fork — copy of entire repository
-   Remote — URL pointing to another copy of the repository
    -   Upstream — main version of repository

### Open Fork on Local Machine

-   Make a directory to use (get to the folder you want to be in first using cd) mkdir directory-name
-   Click "Fork" button on github.com page and create a fork for yourself (can be same name)
-   Click "Code" button, and copy the code in the SSH tab
-   Clone the fork to your local machine by using this code and pasting the SSH code like the example below with the copied code starting at "git\@"" git clone git\@github.com:LorenShumaker/intro-r-2026.git

### Commiting Changes from Local to Git

-   first, make your changes and save the file...
-   see if there are modified files to update\
    `git status`
-   see difference between saved file\
    `git diff`
-   load the changes into the commit\
    `git add .`
-   commit the file and say what you changed (you MUST say what you changed)\
    `git commit -m "say what's different"`
-   push the committed changes to the fork\
    `git push -u origin main`

# 

------------------------------------------------------------------------

# 

# RStudio

### File Types

-   `.md` markdown
-   `.rmd` R markdown
-   `.qmd` R markdown that allows you to show some code (rmd files can be switched to qmd files, they can also be switched to python)
-   `.r` standard R file
-   `.rds` compressed R file with retained formatting

### General Notes

-   R Studio cheat sheets:
    -   In RStudio go to Help \> Cheat Sheets \> whichever one you want or "Browse Cheat Sheets"
-   quarto options
    -   <https://quarto-tdg.org/yaml>
-   R is case sensitive

### Coding in R

-   Command + Option + i inserts new code chunk that looks like this:
````
```{{r}}

```
````

-   Notes can go outside of that chunk, or \# can start a note
-   R handles data types differently if they are character, logical, vector, or numerical
-   Commenting out toggle **`⌘ + Shift + C`** (on PC **`Ctrl + Shift + C`**)

### R Packages

-   To learn more about a package like `rio` you can type `?? rio` in the RStudio Console
-   some common packages (provided in the training resources):

```         
pkgs <- c(
  "rio",        # import/export by file extension
  "tidyverse",  # dplyr, tidyr, ggplot2, readr, etc.
  "lubridate",  # date-time parsing
  "stringr",    # string utilities
  "janitor",    # clean_names(), tabyl(), etc.
  "scales",     # percent_format and friends
  "tidycensus"  # ACS API wrapper (optional bonus section)
  "strex"       # Makes a lot of string searching easier than using regex
  "tidytext"    # More text management
  "pdftools"    # Package to import PDFs
)
```

-   You can also install cran verified packages by going to the Packages pane in RStudio and clicking "Install" then searching for the name of a package \##### Other valuable packages

-   `summarytools` Provides more detailed tools for sumarizing, after installed and loaded use the function `dfSummary()`

### Importing Dat

-   Be sure to prevent characters from being imported as factors with `### R Functions`\
`raw_stations <- read.csv("data/raw/stations.csv"), stringsAsFactors = F)`


### R Functions

-   Functions can be recognizable when they are followed by parentheses
-   To learn more about a function like `typeof()` you can type `? typeof()` in the RStudio Console
-   `typeof()`: get the data type of whatever is passed in the parentheses:\
    `typeof(8.5)`
-   `getwd()` enter into the RStudio Console to see where you are in the folder structure
-   `clean_names()` standardizes and tidies the column names of a data frame

##### Functions for Exploring Data

-   Structure of data\
    `str()`
-   Returns the first rows or elements of a data frame, matrix, table, or vector\
    `head()`
-   Returns the last six elements (for vectors) or last six rows (for data frames/matrices)\
    `tail()`
-   Produce "result summaries" of various model-fitting functions, data frames, or vectors\
    `summary()`
-   Provide a transposed, compact summary of a data frame or tibble\
    `glimpse()`
-   Create a frequency table of values\
    `table(table(data-frame-name$column-name))`
-   Get the mean of a column (see filters below if getting error from NA values)\
    `mean(data-frame-name$column-name)`
-   Get a histogram for a column\
    `hist(data-frame-name$column-name)`
-   Index for data-frames of a row, column, or cell (not a function but also useful):\
    `data-frame-name[2, ]     data-frame-name[ , 2]     data-frame-name[2, 3]`

### R Filters

##### These are dplyr functions, be sure to install and load the package first. See the dplyr cheat sheet for more filtering functions

-   filter occupancy column (for example) to greater than 20\
    `new-filtered-object-name <- data-frame-name |>`\
    `filter(occupancy > 20)`
-   filter occupancy column (for example) to less than 10 and speed column (also for example) to greater than 80\
    `new-filtered-object-name <- data-frame-name |`\
    `filter(occupancy < 20 & speed > 80)`
-   create an object to filter out NAs (which mean or other functions can then be run on)\
    `new-filtered-object-name <- data-frame-name |>`\
    `filter(is.na(column-name))`

### Plotting

-   ggplot2 is useful for plotting (see package install above)

-   Sample plot:

    ```         
        speed_vol_fig <- clean_df |>
        filter(detector_id < 101100) |>
        filter(speed > 40) |>
        ggplot(aes(x = speed, y = volume, color = as.factor(detector_id))) +
        geom_point()

    speed_vol_fig
    ```

-   plotly is useful for being able to hover over elements on a plot (also needs to be installed)

-   Sample plot using plotly to all:\
    `det_speed_figly <- ggplotly(speed_occ_fig)     det_speed_figly`

### Custom Functions

```

figure_function <- function(){
  
}

```

example (put the flexible aspects in te function parentheses on the first line, then replace it where you need something to change in the function code, everything the function does is in the curly brackets):
```

```

### Mapping

- Tigris is a good package to bring in that will allow you to bring in polygons and other mapping parts
- See section5_mapping.R file for examples of mapping with popup styling

