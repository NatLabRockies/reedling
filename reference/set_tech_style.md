# Set tech style

Set the color style scheme file for generator techs. Should correspond
to the techs specified in the tech mapping file (see set_tech_map)
Defaults to taking bokehpivot mapping in "tech_style.csv" when passed a
path to ReEDS, but can also be used to load any custom style file

## Usage

``` r
set_tech_style(path, filename = "tech_style.csv", custom = F)
```

## Arguments

- path:

  path to ReEDS repository or a directory with a custom tech style

- filename:

  typically "tech_style.csv" but can optionally be specified as any
  custom file (default = "tech_style.csv")

- custom:

  flag indicating whether to use a custom tech style or the ReEDS
  default in bokehpivot (default = FALSE)

## Value

named list of techs and colors

## Examples

``` r
tech_style <- set_tech_style("path/to/ReEDS-2.0")
#> [1] "Reading default tech style from bokehpivot: path/to/ReEDS-2.0/postprocessing/bokehpivot/in/reeds2/tech_style.csv"
#> Error in check_dir_exists(colpath): Could not find the following path: path/to/ReEDS-2.0/postprocessing/bokehpivot/in/reeds2
tech_map <- set_tech_map("path/to/customstyle", custom=T, file="custom_tech_style.csv")
#> [1] "Reading custom tech mapping file: path/to/customstyle/custom_tech_style.csv"
#> Error in check_dir_exists(mappath): Could not find the following path: path/to/customstyle
```
