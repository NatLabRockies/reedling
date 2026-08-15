# List bokeh report fields

Function to list fields in the report.xlsx file associated with a bokeh
report

## Usage

``` r
list_bokeh_fields(runs, runval = NULL, report = "reeds-report")
```

## Arguments

- runs:

  data table of runs to search for bokeh report

- runval:

  optional parameter to specify name of specific run in runs to look at

- report:

  optional parameter to specify bokeh report to look for (default:
  reeds-report)

## Examples

``` r
list_bokeh_fields(runs)
#> Error: object 'runs' not found
list_bokeh_fields(runs, runval="runname")
#> Error: object 'runs' not found
list_bokeh_fields(runs, report="reeds-report-expanded")
#> Error: object 'runs' not found
```
