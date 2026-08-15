# Inflate cost data

Inflate cost data

## Usage

``` r
inflate_cost_data(
  runs,
  cost_df,
  year_from = 2004,
  year_to = NULL,
  cols = NULL,
  drop_original = T
)
```

## Arguments

- runs:

  datatable of runs to load system costs, generated from run_summary()

- year_from:

  integer of original dollar year of data (default: 2004)

- year_to:

  integer of dollar year to conver to

- cols:

  column names to inflate

- drop_original:

  if TRUE drop original dollar year data

- df:

  data with cost information
