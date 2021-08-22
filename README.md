# hw05

### For this homework assignment, you will need the following libraries: 
libarary(tidyverse)
library(knitr)
library(here)
library(RColorBrewer)

### Overview of the assignment: 

This assignment entailed me finding a data set, cleaning and tidying it, importing, and then finally analyzing and visualizing it to answer three questions. Specifically, I utilized the data Facebook released about its content moderation going back to 2017 within its most recent quarterly report. I tidied it and wrote a report that analyzes 1) recent patterns of content moderation in response to public pressure and 2) challenges its machine learning algorithms face for classifying correctly certain categories of context-depndent content. 

### Links to relevant files and scripts: 

* [exploratory_visualizations.R](https://github.com/zanderarnao/hw06/blob/2054195981b7b485bedab5d58869daa9e4b4300e/Scripts/exploratory_visualizations.R)

* [function_code.R](https://github.com/zanderarnao/hw06/blob/2054195981b7b485bedab5d58869daa9e4b4300e/Scripts/function_code.R)

* [import_and_clean_data.R](https://github.com/zanderarnao/hw06/blob/2054195981b7b485bedab5d58869daa9e4b4300e/Scripts/import_and_clean_data.R)

* [report_document.Rmd](https://github.com/zanderarnao/hw06/blob/2054195981b7b485bedab5d58869daa9e4b4300e/report_document.Rmd)

* [report_document.md](https://github.com/zanderarnao/hw06/blob/2054195981b7b485bedab5d58869daa9e4b4300e/report_document.md)


### Steps for running scripts: 

To successfully render this document, please

1. run import_and_clean_data.R to download and tidy the needed data set. 

2. run report_document.Rmd to knit a git hub markdown document. 

The needed data and figures should already be in the "data" and "report_document_files" folders within the repo. But if they are not, the above should recreate them successfully. 

The other two R scripts linked above do not need to be run upon startup. The function_code.R script simply creates two functions to assist with visualization and is called within the .Rmd. The exploratory_visualizations.R script is not intended for presentation. It document my initial visual exploration of the data without the prim and proper formatting demanded by this assignment. Please, do not grade this script, but feel free to peruse (because it shows effort! and that I know how to code quick and dirty...).