# Load run metadata

Load and format meta.csv files from list of runs. Can provide detailed
runtime by step or a summary of total runtime and the last processing
step for each run.

## Usage

``` r
load_meta(runs, summarize = FALSE, skip_lines = 3)
```

## Arguments

- runs:

  data table object with run and path information, generated from
  run_summary()

- summarize:

  if TRUE summarizes run time and last processing step

- skip_lines:

  number of lines to skip in the metadata header

## Value

data table object of run metadata
