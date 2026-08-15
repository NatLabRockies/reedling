# Load data from outputs.h5 from ReEDS runs

Collect data from outputs.h5 files for a set of ReEDS runs.

## Usage

``` r
load_h5_data(runs, resultname, folder = "outputs")
```

## Arguments

- runs:

  datatable of runs to load outputs, generated from run_summary()

- resultname:

  data key to load from h5 file

- folder:

  optional parameter to specify folder where the h5 file resides
  (default: outputs)

## Value

data table with results by run name
