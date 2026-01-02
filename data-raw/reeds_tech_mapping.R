library(usethis)
library(devtools)

setwd("/Users/bsergi/Documents/Tools/reedling/data-raw")

## ReEDS technology mapping
tech_map <- read.csv("tech_map.csv")

## ReEDS technology colors
tech_colors_in <- read.csv("tech_colors.csv")

# check for techs in mapping but not in colors
alltechs <- unique(c(tech_map$agg1, tech_map$agg2))
missing <- alltechs[!(alltechs %in% tech_colors_in$display)]
if(length(missing) > 0){
    print(paste("Missing from tech_colors:", paste(missing, collapse=", ")))
}

# reformat colors as named vector
tech_colors <- tech_colors_in$color
names(tech_colors) <- tech_colors_in$display

## Save to package
usethis::use_data(tech_map, overwrite=T)
usethis::use_data(tech_colors, overwrite=T)

# update documentation after editing data.R
devtools::document()

# for testing locally
devtools::install()
