# List ReEDS runs

Prints the names of any ReEDS runs in a given run folder. A batch name
can also be specified to filter to select runs.

## Usage

``` r
list_runs(path, batch = NULL)
```

## Arguments

- path:

  path to a set of ReEDS runs

- batch:

  optional prefix to filter runs; can be specified as a regex pattern

## Examples

``` r
list_runs("path/to/ReEDS-2.0/runs")
#> Error in check_dir_exists(path): Could not find the following path: path/to/ReEDS-2.0/runs
list_runs("path/to/ReEDS-2.0/runs", "20241129_testrun")
#> Error in check_dir_exists(path): Could not find the following path: path/to/ReEDS-2.0/runs
```
