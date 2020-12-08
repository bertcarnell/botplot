# botplot

A demo website to automatically plot data from a high school warbot using R

![R](https://github.com/bertcarnell/botplot/workflows/R/badge.svg)

Visit [here](https://bertcarnell.github.io/botplot/)

## Quick Start

### Add a New CSV

1. `git pull` or right click -> TortoiseGit -> Pull
1. Copy a new `.csv` data file to the `data` directory
    - avoid committing a `.xlsx` file or other binary format to `git`
1. `git add file.csv` or right click -> TortoiseGit -> Add
1. Check the status of files to be committed using `git status` or the icon overlays
1. `git commit -m "my commit message about file.csv"` or right click -> Git Commit
1. `git push` or right click -> ToroiseGit -> Push
1. Wait a few minutes for the project to build and deploy
1. You can check on the progress of the build [here](https://github.com/bertcarnell/botplot/actions)
    - Errors will be shown in build logs
1. Finally, view the results [here](https://bertcarnell.github.io/botplot/)

### Delete a CSV

1. `git pull` or right click -> TortoiseGit -> Pull
1. `git rm file.csv` or right click -> TortoiseGit -> Delete
    - You must use the git system to delete the file.  Simply deleteing the file in the normal way will not remove it from the repository.
1. Check the status of files to be committed using `git status` or the icon overlays
1. Commit, Push, and view the results as above.


## Development Environment

- **[R Project](https://www.r-project.org/)**
    - R is a free software environment for statistical computing and graphics.
    - [Download R](https://cloud.r-project.org/)
    - Install R according to the directions for your operating system
- **[RStudio](https://rstudio.com/)**
    - RStudio is an integrated development environment (IDE) for R
    - [Download RStudio](https://rstudio.com/products/rstudio/download/#download)
    - Install RStudio according to the directions for your operating system
- **[git](https://git-scm.com/)**
    - Git is a free and open source distributed version control system designed 
    to handle everything from small to very large projects with speed and efficiency.
    - [Download git](https://git-scm.com/downloads)
    - Install git according to the directions for your operating system

For Windows users, you can also use **TortoiseGit**

- **[TortoiseGit](https://tortoisegit.org/)**
    - TortoiseGit provides overlay icons showing the file status, a powerful context menu for Git and much more!
	- [Download tortoisegit](https://tortoisegit.org/download/)

## Contributing

### R Project

- Open `botplot.Rproj`

### Make changes to how a CSV is parsed

The most likely changes that need to be made are to the way that a CSV file
is parsed.  These changes are going to be made in `4145_Worbots_data_plotting.Rmd`.  If changes
are made here, then care must be taken to make the code backward compatible with older plots,
or delete the older plot data.

**In RStudio,**

- Open `R/4145_Worbots_data_plotting.Rmd`
- locate the `setup` chunk which includes the data cleaning that had to be done 
to read the CSV
    - Relay any problems with the CSV file back to the development team so that 
    a clean CSV can be created from the bot
- To run the new dataset without pushing to the repository:
    - **Option A**
        - Open `R/4145_Worbots_data_plotting.Rmd`
        - Locate the file name in this section `params: data_file: "default.csv"` 
        and change `default.csv` to the right filename
        - Click the `knit` button in RStudio
        - Check the output html in the same directory
        - Checking in any of the created files is not recommended here.  Only changes to 
        `4145_Worbots_data_plotting.Rmd` should be comitted to the repo, not any test files.
    - **Option B**
        - Open `R/main.R`
        - Click `source` to run the whole script

## Detailed Explanation

### Github Webpages

### Github actions

### R Script
