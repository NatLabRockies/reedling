# Load outputs from ReEDS runs

Collect csv output data from a set of ReEDS runs. Defaults to data in
the "outputs" folder of the ReEDS runs, but can also be used for data
stored in "inputs_case" or other ReEDS run folders.

## Usage

``` r
load_run_data(runs, filename, folder = "outputs", header = T)
```

## Arguments

- runs:

  datatable of runs to load outputs, generated from run_summary()

- filename:

  filename to load

- folder:

  optional parameter to specify folder where filename resides (default:
  outputs)

## Value

data table with results by run name

## Examples
