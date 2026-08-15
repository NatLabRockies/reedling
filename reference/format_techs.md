# Format techs

Recategorizes data by generator techs based on a tech mapping file.
Outputs the same data with a new column named `tech` that includes the
new mapping. Note that the mapping function will automatically convert
the mapping and target technology values to lower case.

## Usage

``` r
format_techs(
  df,
  tech_col = "i",
  mapping = NULL,
  col_from = "raw",
  col_to = "agg1",
  order_techs = T,
  tech_order = NULL
)
```

## Arguments

- df:

  data frame or table with generator technologies to map in a column
  specified by `tech_col`

- tech_col:

  column from `df` with tech names (default = `i`)

- mapping:

  data frame or table with mapping of old to new techs; by default uses
  built in `tech_map`

- col_from:

  column from `mapping` with old tech names (default = `raw`)

- col_to:

  column from `mapping` with new tech names (default = `agg1`)\`)

- order_techs:

  whether to set tech order using factor levels (default = `TRUE`)

- tech_order:

  named vector of techs in order to set for levels

## Value

data frame or table with 'tech' column added
