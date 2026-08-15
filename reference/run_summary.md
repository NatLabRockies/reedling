# Summarize ReEDS runs

Function to summarize metadata on set of ReEDS run in a given run
folder, with the option to subset to runs that match a specified batch
prefix. The prefix can be specified as a regex string to select runs
from multiple batches.

## Usage

``` r
run_summary(path, batch = "")
```

## Arguments

- path:

  path to a set of ReEDS runs

- batch:

  optional batch prefix to filter runs; can be specified as a regex
  pattern

## Value

datatable object of ReEDS runs and their paths;

## Details

The function returns a data table with the following information on the
runs:

- run name (dropping any batch prefix if supplied)

- batch name (if supplied)

- whether files were detected in the 'outputs' folder

- the last ReEDS step that completed, as listed in meta.csv

- the run time in hours, calculated from meta.csv

- full path to the run

## Examples

``` r
runs <- load_run_summary("path/to/ReEDS-2.0/runs", "20230416")
#> Error in load_run_summary("path/to/ReEDS-2.0/runs", "20230416"): could not find function "load_run_summary"

# runs from multiple batches can be matched by using regex expressions
runs <- load_run_summary("path/to/ReEDS-2.0/runs", "20230416|20230422")
#> Error in load_run_summary("path/to/ReEDS-2.0/runs", "20230416|20230422"): could not find function "load_run_summary"
```
