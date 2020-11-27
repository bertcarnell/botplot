# RScript main program
#  1. Ensure that the necessary packages are installed
#  1. Read files in the data directory
#  2. Loop over the files, Creating a webpage of plots
#  3. Modify the index.html to include the new webpages

# TODO come up with a method so that you don't have to re-make all the plots
#   if the data hasn't changed

### constants
plotting_rmd <- file.path("R", "4145_WorBots_Data_Plotting.Rmd")
index_rmd <- file.path("R", "index.Rmd")

# 1. Ensure that the necessary packages are installed
if (!require(rmarkdown))
{
  install.packages("rmarkdown")
}
if (!require(knitr))
{
  install.packages("knitr")
}
if (!require(tools))
{
  stop("Error in R installation")
}

# 1. Read files in the data directory
#   The Rscript will be run from the top level repository directory
data_files <- list.files(path = "data", pattern = "[.][Cc][Ss][Vv]", 
                         full.names = TRUE, recursive = TRUE)

# 2. Loop over the files creating a webpage of plots
for (data_file in data_files)
{
  # from the perspective of the .rmd
  output_file <- file.path("..", "docs", "html", 
                           paste0(tools::file_path_sans_ext(basename(data_file)), 
                                  ".html"))
  # need to pass parameter file paths from the perspective of the .rmd file
  rmarkdown::render(input = plotting_rmd, output_format = "all", 
                    output_file = output_file, params = list(
                      data_file = file.path("..", data_file)))
}

# 3. modify index.html with the plot pages
rmarkdown::render(input = index_rmd, output_format = "all",
                  output_file = file.path("..", "docs", "index.html"),
                  params = list(data_files = data_files))


