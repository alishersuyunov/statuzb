# statuzb

The R package for interaction with the public data source of the Statistics Agency of Uzbekistan - siat.stat.uz

[![R build status](https://github.com/alishersuyunov/statuzb/workflows/R-CMD-check/badge.svg)](https://github.com/alishersuyunov/statuzb/actions?workflow=R-CMD-check)

## RELEASE NOTES:

-   The beta version v0.1.0 offers the following functions interacting with the portal:
    -   `availableData()` obtains the list of available datasets from the siat.stat.uz
    -   `getTable(datasetId)` downloads the specified dataset as a data frame.
    -   `getMetaData(datasetId)` downloads the corresponding meta-data for specified dataset as a data frame.
    -   `getCounter()` collects the number of the available datasets on the siat.stat.uz portal.
    -   `getName(datasetId)` returns the name of the dataset under the given ID.

## Installation

Execute the following code to install the R package from R environment:

```{r, installation1}
remotes::install_github("alishersuyunov/statuzb")
```

```{r, installation2}
remotes::install_github("alishersuyunov/statuzb")
```

## License

The package is provided under the GPL-3 license.

If you have any feature suggestions or found any bugs, feel free to raise a trouble ticket on: <https://github.com/alishersuyunov/statuzb/issues>
