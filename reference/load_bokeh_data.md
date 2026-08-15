# Load outputs from bokeh reports

Function to collect bokeh report data from a set of ReEDS runs. Defaults
to data from "reeds-report" but be used to extract values from any bokeh
report.

## Usage

``` r
load_bokeh_data(runs, result_name, report_name = "reeds-report")
```

## Arguments

- runs:

  data table of runs to load outputs

- filename:

  filename to load

- folder:

  optional parameter to specify folder where filename resides (default:
  outputs)

- newcolname:

  optional parameter to rename value column

## Value

data table with results by run name

## Examples

``` r
avgcost <- load_bokeh_data(runs, "18_National Average Electricity")
#> Error: object 'runs' not found
```
