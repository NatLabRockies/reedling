#' ReEDS technology map
#'
#' Maps ReEDS i set technologies to aggregated categories.
#' 
#' @format ## `tech_map`
#' A data frame with 44 rows and 3 columns:
#' \describe{
#'   \item{raw}{Technology name in ReEDS (not including class and mod/max designations)}
#'   \item{agg1, agg2}{Two alternative options for technology categories}
#' }
"tech_map"

#' ReEDS technology colors
#'
#' Named character vector with standard technology colors. The order of the entries can
#' can be used to set levels for a typical dispatch stack plot.
#' 
#' @format ## `tech_colors`
#' Named character vector of technology colors.
"tech_colors"