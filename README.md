
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rounders

The rounders package implements rounding algorithms

  - `floor_gap(x, width)` and `ceiling_gap(x, width)` round to the
    nearest gap in a sequence.

<!-- end list -->

``` r
library(rounders)

example(round_gap)
#> 
#> rnd_gp> floor_gap(c(5, 7, 8, 11, 15, 17, 25), width = 3)
#> [1]  5  5  5 11 15 15 25
#> 
#> rnd_gp> ceiling_gap(c(5, 7, 8, 11, 15, 17, 25), width = 3)
#> [1]  8  8  8 11 17 17 25
```

## Installation

You can install the development version from GitHub with devtools or
remotes.

``` r
install.packages("devtools")
devtools::install_github("nacnudus/rounders")
```
