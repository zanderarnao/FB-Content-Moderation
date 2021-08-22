# The New Governor: Facebook's Content Moderation

### To replicate this project, you will need the following libraries: 
* libarary(tidyverse)
* library(knitr)
* library(here)
* library(RColorBrewer)

### Overview: 

In this report, I analyzed data released by Facebook about its content moderation going back to 2017 as part of its most recent [Transparency Report](https://transparency.fb.com/data/community-standards-enforcement/). I came to conclusions about recent changes in Facebook's content moderation, possibly responding to public pressure, and limitations faced by its machine learning algorithms for correctly classifying certain categories of content. From download to final commit, I followed imported and tidied the data, explored them through visualization, and finally wrote up the report. 

### How to view the report: 

You can view the report by following [this link]( https://github.com/zanderarnao/FB-Content-Moderation/blob/0eb7efc309982ce4326d5c7ee6096081c6e1266d/report_document.md) or clicking "report_document.md" below. You can also view the source code for the Markdown document by viewing "report_document.Rmd". 

If for some reason the Markdown document does not render or you would like to replicate the steps I followed while creating the report, please follow the steps below. The needed data and figures should already be in the "data" and "report_document_files" folders within the repository. But if for some reason they do not work, the bekiw procedure will recreate them successfully. 

To successfully render the a report locally,

1. run "import_and_clean_data.R" to download and tidy the needed data set. 

2. run "report_document.Rmd" to knit a markdown document. 

The other two R scripts linked above do not need to be run upon startup. The function_code.R script simply creates two functions to assist with visualization and is called within the .Rmd. The exploratory_visualizations.R script is not intended for presentation. It documents my initial visual exploration of the data. Feel free to peruse if you are interested. 

### Links to relevant files and scripts: 

* [report_document.md](https://github.com/zanderarnao/FB-Content-Moderation/blob/0eb7efc309982ce4326d5c7ee6096081c6e1266d/report_document.md)

* [report_document.Rmd](https://github.com/zanderarnao/FB-Content-Moderation/blob/0eb7efc309982ce4326d5c7ee6096081c6e1266d/report_document.Rmd)

* [import_and_clean_data.R](https://github.com/zanderarnao/FB-Content-Moderation/blob/0eb7efc309982ce4326d5c7ee6096081c6e1266d/Scripts/import_and_clean_data.R)

* [exploratory_visualizations.R](https://github.com/zanderarnao/FB-Content-Moderation/blob/0eb7efc309982ce4326d5c7ee6096081c6e1266d/Scripts/exploratory_visualizations.R)

* [function_code.R](https://github.com/zanderarnao/FB-Content-Moderation/blob/0eb7efc309982ce4326d5c7ee6096081c6e1266d/Scripts/function_code.R)
