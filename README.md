
<!-- README.md is generated from README.Rmd. Please edit that file -->

# regressionLinear

<!-- badges: start -->

[![R-CMD-check](https://github.com/GuoJennifer/regressionLinear/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/GuoJennifer/regressionLinear/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/GuoJennifer/regressionLinear/graph/badge.svg)](https://app.codecov.io/gh/GuoJennifer/regressionLinear)
<!-- badges: end -->

The goal of regressionLinear is to replicate at least some functionality
of the lm() function in R, as a demonstration of how to create a
complete R package.

Currently, the package contains only one function, “lr_coefficients”,
which will calculate the estimated coefficients for an SLR or MLR linear
regression model, as well as the standard errors, and the t-tests with
p-values for each covariate.

## Installation

You can install the development version of regressionLinear from
[GitHub](https://github.com/) with:

``` r
#install.packages("devtools")
devtools::install_github("GuoJennifer/regressionLinear")
#> Skipping install of 'regressionLinear' from a github remote, the SHA1 (2cce0e20) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

Alternatively, you can use:

``` r
#install.packages("pak")
pak::pak("GuoJennifer/regressionLinear")
#> ! Using bundled GitHub PAT. Please add your own PAT using `gitcreds::gitcreds_set()`.
#> 
#> ℹ No downloads are needed
#> ✔ 1 pkg: kept 1 [2.8s]
```

## Example

This is a basic example of how to use the function “lr_coefficients” in
this package:

``` r
library(regressionLinear)

regressionLinear::lr_coefficients("mpg", c("cyl", "disp", "hp"), data=mtcars)
#>         Estimate    Std_Err t_statistic      p_value
#> [1,] 34.18491917 2.59077758   13.194849 1.536549e-13
#> [2,] -1.22741994 0.79727631   -1.539516 1.349044e-01
#> [3,] -0.01883809 0.01040369   -1.810711 8.092901e-02
#> [4,] -0.01467933 0.01465087   -1.001943 3.249519e-01
```
