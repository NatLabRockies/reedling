# Set tech map

Set the mappingfile for generator techs, which are used to aggregate
ReEDS generator techs into fewer categories. Defaults to taking
bokehpivot mapping in "tech_map.csv" when passed a path to a ReEDS repo,
but can also be used to load any custom mapping file.

## Usage

``` r
set_tech_map(path, filename = "tech_map.csv", custom = F)
```

## Arguments

- path:

  path to ReEDS repository or a directory with a custom tech mapping
  file

- filename:

  typically "tech_map.csv" but can optionally be specified as any custom
  file (default = "tech_map.csv")

- custom:

  flag indicating whether to use a custom tech mapping or the ReEDS
  default in bokehpivot (default = FALSE)

## Value

dataframe of tech categories

## Examples

``` r
tech_map <- set_tech_map("path/to/ReEDS-2.0")
#> [1] "Reading default tech mapping from bokehpivot: path/to/ReEDS-2.0/postprocessing/bokehpivot/in/reeds2/tech_map.csv"
#> Error in check_dir_exists(mappath): Could not find the following path: path/to/ReEDS-2.0/postprocessing/bokehpivot/in/reeds2
tech_map <- set_tech_map("path/to/custommap", custom=T, file="custom_tech_map.csv")
#> [1] "Reading custom tech mapping file: path/to/custommap/custom_tech_map.csv"
#> Error in check_dir_exists(mappath): Could not find the following path: path/to/custommap
```
