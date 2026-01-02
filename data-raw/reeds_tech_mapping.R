library(usethis)
library(devtools)

setwd("/Users/bsergi/Documents/Tools/reedling/data-raw")

# ReEDS technology mapping
tech_map <- read.csv("tech_map.csv")
usethis::use_data(tech_map, overwrite=T)

# ReEDS technology colors


# update documentation
devtools::document()

