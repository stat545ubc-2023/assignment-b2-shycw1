
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PlottingTools (Chunyu Wang)

<!-- badges: start -->
<!-- badges: end -->

The goal of PlottingTools is to plot histograms for a given data
attribute in a dataframe. The package simplifies the process of
generating histograms for exploratory data analysis and reduce repeated
code use.

## Installation

You can install the development version of PlottingTools like so:

``` r

# install.packages("devtools")
devtools::install_github("https://github.com/stat545ubc-2023/assignment-b2-shycw1.git")
#> Skipping install of 'PlottingTools' from a github remote, the SHA1 (56dd213a) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

## Load the package

``` r
library(PlottingTools)
```

## Example

Basic examples which shows you how to solve a common problem:

**CORRECT Usage 1** plot the histogram of radius_worst with default
histogram bins

``` r

histogram_radius_worst <- plot_histogram(datateachr::cancer_sample, radius_worst)
print(histogram_radius_worst)
```

<img src="man/figures/README-correct-usage-1.png" width="100%" />

**CORRECT Usage 2** plot the histogram of radius_worst with specified
histogram bins

``` r

histogram_radius_worst_100 <- plot_histogram(datateachr::cancer_sample, radius_worst, 100)
print(histogram_radius_worst_100)
```

<img src="man/figures/README-correct-usage-2-1.png" width="100%" />

**CORRECT Usage 3** plot the histogram of area_mean with specified
histogram bins

``` r

histogram_area_mean <- plot_histogram(datateachr::cancer_sample, area_mean, 30)
print(histogram_area_mean)
```

<img src="man/figures/README-correct-usage-3-1.png" width="100%" />

# Check if passing devtools::test()

``` r

devtools::test()
#> ℹ Testing PlottingTools
#> ✔ | F W S  OK | Context
#> ⠏ |         0 | plot_histogram                                                  ✔ |         4 | plot_histogram
#> 
#> ══ Results ═════════════════════════════════════════════════════════════════════
#> [ FAIL 0 | WARN 0 | SKIP 0 | PASS 4 ]
# the test block is self-contained and there's no need to remove object with rm()
```

# Check if passing check

``` r

devtools::check()
#> ══ Documenting ═════════════════════════════════════════════════════════════════
#> ℹ Updating PlottingTools documentation
#> ℹ Loading PlottingTools
#> 
#> ══ Building ════════════════════════════════════════════════════════════════════
#> Setting env vars:
#> • CFLAGS    : -Wall -pedantic
#> • CXXFLAGS  : -Wall -pedantic
#> • CXX11FLAGS: -Wall -pedantic
#> • CXX14FLAGS: -Wall -pedantic
#> • CXX17FLAGS: -Wall -pedantic
#> • CXX20FLAGS: -Wall -pedantic
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#>      checking for file ‘/Users/johnny/Downloads/assignment-b2-shycw1-main/DESCRIPTION’ ...  ✔  checking for file ‘/Users/johnny/Downloads/assignment-b2-shycw1-main/DESCRIPTION’
#>   ─  preparing ‘PlottingTools’:
#>      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘PlottingTools_0.1.0.tar.gz’
#>      
#> ══ Checking ════════════════════════════════════════════════════════════════════
#> Setting env vars:
#> • _R_CHECK_CRAN_INCOMING_REMOTE_               : FALSE
#> • _R_CHECK_CRAN_INCOMING_                      : FALSE
#> • _R_CHECK_FORCE_SUGGESTS_                     : FALSE
#> • _R_CHECK_PACKAGES_USED_IGNORE_UNUSED_IMPORTS_: FALSE
#> • NOT_CRAN                                     : true
#> ── R CMD check ─────────────────────────────────────────────────────────────────
#>   ─  using log directory ‘/private/var/folders/sv/7_dg2x4s60dggxszfh_4b8gc0000gn/T/RtmpXfzttL/file27233ec1baf0/PlottingTools.Rcheck’
#> ─  using R version 4.3.1 (2023-06-16)
#>   ─  using platform: aarch64-apple-darwin20 (64-bit)
#> ─  R was compiled by
#>        Apple clang version 14.0.0 (clang-1400.0.29.202)
#>        GNU Fortran (GCC) 12.2.0
#> ─  running under: macOS Ventura 13.0
#> ─  using session charset: UTF-8
#>   ─  using options ‘--no-manual --as-cran’
#>      checking for file ‘PlottingTools/DESCRIPTION’ ...  ✔  checking for file ‘PlottingTools/DESCRIPTION’
#>   ─  this is package ‘PlottingTools’ version ‘0.1.0’
#> ─  package encoding: UTF-8
#>    checking package namespace information ...  ✔  checking package namespace information
#>      checking package dependencies ...  ✔  checking package dependencies (2.7s)
#>   ✔  checking if this is a source package
#> ✔  checking if there is a namespace
#>      checking for executable files ...  ✔  checking for executable files
#>      checking for hidden files and directories ...  ✔  checking for hidden files and directories
#>    checking for portable file names ...  ✔  checking for portable file names
#>   ✔  checking for sufficient/correct file permissions
#>      checking serialization versions ...  ✔  checking serialization versions
#>      checking whether package ‘PlottingTools’ can be installed ...  ✔  checking whether package ‘PlottingTools’ can be installed (551ms)
#>      checking installed package size ...  ✔  checking installed package size
#>      checking package directory ...  ✔  checking package directory
#>    checking for future file timestamps ...  ✔  checking for future file timestamps
#>      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
#>    checking top-level files ...  N  checking top-level files
#>    Non-standard files/directories found at top level:
#>      ‘LICENSE.md’ ‘README.Rmd’
#> ✔  checking for left-over files
#>    checking index information ...  ✔  checking index information
#>    checking package subdirectories ...  ✔  checking package subdirectories
#>        checking R files for non-ASCII characters ...  ✔  checking R files for non-ASCII characters
#>      checking R files for syntax errors ...  ✔  checking R files for syntax errors
#>      checking whether the package can be loaded ...  ✔  checking whether the package can be loaded
#>    checking whether the package can be loaded with stated dependencies ...  ✔  checking whether the package can be loaded with stated dependencies
#>      checking whether the package can be unloaded cleanly ...  ✔  checking whether the package can be unloaded cleanly
#>      checking whether the namespace can be loaded with stated dependencies ...  ✔  checking whether the namespace can be loaded with stated dependencies
#>      checking whether the namespace can be unloaded cleanly ...  ✔  checking whether the namespace can be unloaded cleanly
#>      checking dependencies in R code ...  ✔  checking dependencies in R code (416ms)
#>    checking S3 generic/method consistency ...  ✔  checking S3 generic/method consistency
#>      checking replacement functions ...  ✔  checking replacement functions
#>    checking foreign function calls ...  ✔  checking foreign function calls
#>    checking R code for possible problems ...  ✔  checking R code for possible problems (929ms)
#>    checking Rd files ...  ✔  checking Rd files
#>    checking Rd metadata ...  ✔  checking Rd metadata
#>    checking Rd line widths ...  ✔  checking Rd line widths
#>      checking Rd cross-references ...  ✔  checking Rd cross-references
#>    checking for missing documentation entries ...  ✔  checking for missing documentation entries
#>    checking for code/documentation mismatches ...  ✔  checking for code/documentation mismatches
#>    checking Rd \usage sections ...  ✔  checking Rd \usage sections
#>    checking Rd contents ...  ✔  checking Rd contents
#>      checking for unstated dependencies in examples ...  ✔  checking for unstated dependencies in examples
#>      checking examples ...  ✔  checking examples (654ms)
#>      checking for unstated dependencies in ‘tests’ ...  ✔  checking for unstated dependencies in ‘tests’
#>    checking tests ...  ─  checking tests
#>      Running ‘testthat.R’    ✔  Running ‘testthat.R’ (515ms)
#>   ✔  checking for non-standard things in the check directory
#> ✔  checking for detritus in the temp directory
#>      
#>    See
#>      ‘/private/var/folders/sv/7_dg2x4s60dggxszfh_4b8gc0000gn/T/RtmpXfzttL/file27233ec1baf0/PlottingTools.Rcheck/00check.log’
#>    for details.
#>    
#>    
#> 
#> ── R CMD check results ──────────────────────────────── PlottingTools 0.1.0 ────
#> Duration: 7.8s
#> 
#> ❯ checking top-level files ... NOTE
#>   Non-standard files/directories found at top level:
#>     ‘LICENSE.md’ ‘README.Rmd’
#> 
#> 0 errors ✔ | 0 warnings ✔ | 1 note ✖
```
