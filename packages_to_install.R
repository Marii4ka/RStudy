list.of.packages <- c("tidyverse","skimr","reshape2","ggplot2", "swirl", "forcats", "lubridate", "knitr", "kableExtra", "magrittr", "googlesheets", "httr", "htmltools", "htmlwidgets")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}