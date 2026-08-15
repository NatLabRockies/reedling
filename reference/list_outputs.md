# List output files

Prints a list of files in a folder of runs. Defaults to looking at the
outputs folder of the first run specified.

## Usage

``` r
list_outputs(runs, folder = "outputs", runval = NULL, keyword = NULL)
```

## Arguments

- runs:

  datatable of runs to list outputs, generated from run_summary()

- folder:

  optional parameter to specify folder to look for files (default:
  outputs)

- runval:

  optional parameter to specify name of specific run in runs to look at

## Examples

``` r
list_outputs(runs)
#> Error: object 'runs' not found
list_outputs(runs, runval="runname")
#> Error: object 'runs' not found
list_outputs(runs, folder="inputs_case")
#> Error: object 'runs' not found
```
