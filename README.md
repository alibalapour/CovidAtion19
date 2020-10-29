
<!-- README.md is generated from README.Rmd. Please edit that file -->

<img src="man/figures/logo.png" align="right" />

# CovidAtion19

<!-- badges: start -->

<!-- badges: end -->

R package to get every day and cumulative data about Covid-19 and draw
some plots about it. In this package, you can get a dataset includes
daily new cases, new deaths, all cases, and all deaths grouped by Date
and Country. Data used in this package are downloaded from Jhon Hopkins
university’s [CSSEGISandData
repository](https://github.com/CSSEGISandData/COVID-19). Contributors to
this repository, update the data every day. Also, you can plot a world
map of new cases, new deaths, all cases, and all deaths based on date.
Another feature of this package is plotting a time series of the above
parameters based on the country.

## Installation

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("alibalapour/CovidAtion19")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
df <- CovidAtion19::getData()
#> Warning: replacing previous import 'lubridate::union' by 'rgeos::union' when
#> loading 'CovidAtion19'
#> Warning: replacing previous import 'lubridate::setdiff' by 'rgeos::setdiff' when
#> loading 'CovidAtion19'
#> Warning: replacing previous import 'lubridate::intersect' by 'rgeos::intersect'
#> when loading 'CovidAtion19'
#> Warning: replacing previous import 'RCurl::complete' by 'tidyr::complete' when
#> loading 'CovidAtion19'
#> No methods found in package 'dplyr' for request: 'arrange' when loading 'CovidAtion19'
#> No methods found in package 'dplyr' for request: 'case_when' when loading 'CovidAtion19'
#> No methods found in package 'dplyr' for request: 'filter' when loading 'CovidAtion19'
#> No methods found in package 'dplyr' for request: 'group_by' when loading 'CovidAtion19'
#> No methods found in package 'dplyr' for request: 'lag' when loading 'CovidAtion19'
#> No methods found in package 'dplyr' for request: 'left_join' when loading 'CovidAtion19'
#> No methods found in package 'dplyr' for request: 'mutate' when loading 'CovidAtion19'
#> No methods found in package 'dplyr' for request: 'rename' when loading 'CovidAtion19'
#> No methods found in package 'dplyr' for request: 'select' when loading 'CovidAtion19'
#> No methods found in package 'dplyr' for request: 'summarise' when loading 'CovidAtion19'
#> No methods found in package 'ggplot2' for request: 'aes' when loading 'CovidAtion19'
#> No methods found in package 'ggplot2' for request: 'aes_string' when loading 'CovidAtion19'
#> No methods found in package 'ggplot2' for request: 'geom_line' when loading 'CovidAtion19'
#> No methods found in package 'ggplot2' for request: 'geom_sf' when loading 'CovidAtion19'
#> No methods found in package 'ggplot2' for request: 'ggplot' when loading 'CovidAtion19'
#> No methods found in package 'ggplot2' for request: 'labs' when loading 'CovidAtion19'
#> No methods found in package 'ggplot2' for request: 'scale_fill_viridis_c' when loading 'CovidAtion19'
#> No methods found in package 'stringr' for request: 'str_extract' when loading 'CovidAtion19'
#> No methods found in package 'utils' for request: 'download.file' when loading 'CovidAtion19'
#> No methods found in package 'utils' for request: 'read.csv' when loading 'CovidAtion19'
```

``` r
head(df, 20)
#> # A tibble: 20 x 6
#> # Groups:   Country [2]
#>    Country       Date       Confirmed Deaths DailyConfirmed DailyDeaths
#>    <chr>         <date>         <dbl>  <dbl>          <dbl>       <dbl>
#>  1 " Azerbaijan" 2020-02-28         1      0              0           0
#>  2 "Afghanistan" 2020-02-24         1      0              0           0
#>  3 "Afghanistan" 2020-02-25         1      0              0           0
#>  4 "Afghanistan" 2020-02-26         1      0              0           0
#>  5 "Afghanistan" 2020-02-27         1      0              0           0
#>  6 "Afghanistan" 2020-02-28         1      0              0           0
#>  7 "Afghanistan" 2020-02-29         1      0              0           0
#>  8 "Afghanistan" 2020-03-01         1      0              0           0
#>  9 "Afghanistan" 2020-03-02         1      0              0           0
#> 10 "Afghanistan" 2020-03-03         1      0              0           0
#> 11 "Afghanistan" 2020-03-04         1      0              0           0
#> 12 "Afghanistan" 2020-03-05         1      0              0           0
#> 13 "Afghanistan" 2020-03-06         1      0              0           0
#> 14 "Afghanistan" 2020-03-07         1      0              0           0
#> 15 "Afghanistan" 2020-03-08         4      0              3           0
#> 16 "Afghanistan" 2020-03-09         4      0              0           0
#> 17 "Afghanistan" 2020-03-10         5      0              1           0
#> 18 "Afghanistan" 2020-03-11         7      0              2           0
#> 19 "Afghanistan" 2020-03-12         7      0              0           0
#> 20 "Afghanistan" 2020-03-13         7      0              0           0
```

``` r
CovidAtion19::plotOnWorldMap(date = '2020-05-03',
                             type = 'Confirmed')
```

<img src="man/figures/README-example3-1.png" width="100%" />

``` r
CovidAtion19::plotTimeSeries(startDate = '2020-03-10',
                             endDate = '2020-10-10',
                             country = 'US',
                             type = 'DailyConfirmed')
```

<img src="man/figures/README-example4-1.png" width="100%" />
