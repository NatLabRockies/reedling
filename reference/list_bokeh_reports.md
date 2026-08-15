# List bokeh reports

Function to list available boke reports from a set of runs

## Usage

``` r
list_bokeh_reports(runs, runval = NULL)
```

## Arguments

- runs:

  data table of runs to search for bokeh report

- runval:

  optional parameter to specify name of specific run in runs to look at

## Examples

``` r
list_bokeh_reports(runs)
#> Error: object 'runs' not found
list_bokeh_reports(runs, runval="runname")
#> Error: object 'runs' not found
```
