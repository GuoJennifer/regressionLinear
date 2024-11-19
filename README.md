
<!-- README.md is generated from README.Rmd. Please edit that file -->

# regressionLinear

<!-- badges: start -->

[![R-CMD-check](https://github.com/GuoJennifer/regressionLinear/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/GuoJennifer/regressionLinear/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of regressionLinear is to replicate at least some functionality
of the lm() function in R, as a demonstration of how to create a
complete R package.

## Installation

You can install the development version of regressionLinear from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("GuoJennifer/regressionLinear")
#> ! Using bundled GitHub PAT. Please add your own PAT using `gitcreds::gitcreds_set()`.
#> ℹ Loading metadata database✔ Loading metadata database ... done
#>  
#> ℹ No downloads are needed
#> ✔ 1 pkg + 1 dep: kept 1 [4.2s]
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(regressionLinear)
## basic example code

#regressionLinear::lr_coefficients("mpg", c("cyl", "disp", "hp"), data=mtcars)
```
