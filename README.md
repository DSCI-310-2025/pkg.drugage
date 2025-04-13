
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pkg.drugage

<!-- badges: start -->

[![R-CMD-check](https://github.com/DSCI-310-2025/pkg.drugage/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/DSCI-310-2025/pkg.drugage/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/DSCI-310-2025/pkg.drugage/graph/badge.svg)](https://app.codecov.io/gh/DSCI-310-2025/pkg.drugage)

[![pkgdown](https://github.com/DSCI-310-2025/pkg.drugage/actions/workflows/pkgdown.yaml/badge.svg)](https://dsci-310-2025.github.io/pkg.drugage/)
<!-- badges: end -->

The goal of `pkg.drugage` is to provide functions to streamline the
creation of data classification models. This package was originally
developed with the intention of creating a classificiation model able to
categorize data into youth vs. adult groups based on the trend of drug
use/frequency, but its functions can be applied to any similar scenario.

## Ecosystem Context

In the R ecosystem, `pkg.drugage` complements existing packages such as:

- **`tidymodels`**: While `tidymodels` offers a comprehensive framework
  for modeling, `pkg.drugage` provides convenience functions
  specifically tailored for classification workflows, including
  pre-processing steps and visualization helpers.
- **`caret`**: Similar to `caret`, `pkg.drugage` supports training and
  evaluating models, but focuses more narrowly on binary classification
  use cases and integrates more tightly with age-group classification
  logic.
- **`janitor`** and **`skimr`**: These offer data cleaning and summary
  tools, while `pkg.drugage` includes domain-specific cleaning for
  age-group classification in addition to generalized preprocessing.

Unlike broader frameworks, `pkg.drugage` prioritizes accessibility,
domain focus, and end-to-end reproducibility for education and research
scenarios.

## Functions

- `download_data`: Downloads a file from a given URL and saves it to a
  specified destination.
- `create_directory`: Checks if the specified directory exists, and
  creates the directory path if necessary.
- `data_cleaning`: Cleans the dataset, classifies individuals into age
  groups and saves the cleaned dataset to a given path.
- `eda_functions`: Performs exploratory data analysis (EDA) on the
  cleaned dataset, such as creating bar and scatter plots to visualize
  the raw data.
- `train_and_predict`: Takes a model specification and a recipe, fits
  the model on the training data, and returns class predictions on the
  testing data.
- `create_confusion_matrix`: Takes model predictions, generates a
  confusion matrix and saves it as a PNG figure and as a CSV table in
  the specified output directory. Returns the ggplot object used to
  create the plot.

## Installation

You can install the development version of pkg.drugage from
[GitHub](https://github.com/) with:

``` r
install.packages("pak")
#> Installing package into 'C:/Users/heidi/AppData/Local/Temp/RtmpQZ8ogw/temp_libpath5f24160f24d4'
#> (as 'lib' is unspecified)
#> package 'pak' successfully unpacked and MD5 sums checked
#> 
#> The downloaded binary packages are in
#>  C:\Users\heidi\AppData\Local\Temp\RtmpgXiILp\downloaded_packages

pak::pak("DSCI-310-2025/pkg.drugage")
#> ℹ Loading metadata database
#> ✔ Loading metadata database ... done
#>  
#> → Will install 99 packages.
#> → Will update 1 package.
#> → Will download 95 CRAN packages (85.31 MB), cached: 4 (17.11 MB).
#> → Will download 1 package with unknown size.
#> + backports                 1.5.0      
#> + bit                       4.6.0      [dl] (637.12 kB)
#> + bit64                     4.6.0-1    [dl] (512.02 kB)
#> + broom                     1.0.8      [dl] (1.95 MB)
#> + cachem                    1.1.0      [dl] (73.84 kB)
#> + caret                     7.0-1      [dl] (3.60 MB)
#> + cli                       3.6.4      [dl] (1.39 MB)
#> + clipr                     0.8.0      [dl] (55.53 kB)
#> + clock                     0.7.3      [dl] (2.22 MB)
#> + colorspace                2.1-1      [dl] (2.67 MB)
#> + conflicted                1.2.0      [dl] (57.51 kB)
#> + crayon                    1.5.3      [dl] (165.17 kB)
#> + data.table                1.17.0     [dl] (2.91 MB)
#> + diagram                   1.6.5      [dl] (687.94 kB)
#> + dials                     1.4.0      [dl] (447.26 kB)
#> + DiceDesign                1.10       [dl] (340.33 kB)
#> + digest                    0.6.37     [dl] (223.14 kB)
#> + doFuture                  1.0.2      [dl] (145.46 kB)
#> + dplyr                     1.1.4      [dl] (1.58 MB)
#> + e1071                     1.7-16     [dl] (671.93 kB)
#> + fansi                     1.0.6      [dl] (322.97 kB)
#> + farver                    2.1.2      [dl] (1.52 MB)
#> + fastmap                   1.2.0      [dl] (135.36 kB)
#> + foreach                   1.5.2      [dl] (149.34 kB)
#> + furrr                     0.3.1      [dl] (1.03 MB)
#> + future                    1.40.0     [dl] (962.29 kB)
#> + future.apply              1.11.3     [dl] (160.32 kB)
#> + generics                  0.1.3      [dl] (83.69 kB)
#> + ggplot2                   3.5.2      [dl] (5.02 MB)
#> + globals                   0.16.3     [dl] (109.87 kB)
#> + glue                      1.8.0      [dl] (183.78 kB)
#> + gower                     1.0.2      
#> + GPfit                     1.0-8      [dl] (79.09 kB)
#> + gtable                    0.3.6      [dl] (249.79 kB)
#> + hardhat                   1.4.1      [dl] (875.34 kB)
#> + hms                       1.1.3      [dl] (105.34 kB)
#> + infer                     1.0.7      [dl] (2.12 MB)
#> + ipred                     0.9-15     [dl] (391.81 kB)
#> + isoband                   0.2.7      [dl] (1.93 MB)
#> + iterators                 1.0.14     [dl] (353.39 kB)
#> + labeling                  0.4.3      [dl] (63.36 kB)
#> + lava                      1.8.1      [dl] (2.52 MB)
#> + lhs                       1.2.0      [dl] (726.20 kB)
#> + lifecycle                 1.0.4      [dl] (140.93 kB)
#> + listenv                   0.9.1      [dl] (109.21 kB)
#> + lubridate                 1.9.4      [dl] (989.17 kB)
#> + magrittr                  2.0.3      [dl] (229.42 kB)
#> + memoise                   2.0.1      [dl] (51.10 kB)
#> + modeldata                 1.4.0      [dl] (5.16 MB)
#> + modelenv                  0.2.0      [dl] (102.82 kB)
#> + ModelMetrics              1.2.2.2    [dl] (468.65 kB)
#> + munsell                   0.5.1      [dl] (244.68 kB)
#> + numDeriv                  2016.8-1.1 [dl] (117.33 kB)
#> + parallelly                1.43.0     [dl] (601.63 kB)
#> + parsnip                   1.3.1      [dl] (1.49 MB)
#> + patchwork                 1.3.0      [dl] (3.35 MB)
#> + pillar                    1.10.2     [dl] (672.16 kB)
#> + pkg.drugage  0.0.0.9000 → 0.0.0.9000 [bld][cmp][dl] (GitHub: 996f943)
#> + pkgconfig                 2.0.3      [dl] (22.81 kB)
#> + plyr                      1.8.9      [dl] (1.11 MB)
#> + prettyunits               1.2.0      [dl] (155.29 kB)
#> + pROC                      1.18.5     [dl] (1.17 MB)
#> + prodlim                   2024.06.25 [dl] (423.56 kB)
#> + progressr                 0.15.1     [dl] (403.75 kB)
#> + proxy                     0.4-27     [dl] (181.19 kB)
#> + purrr                     1.0.4      [dl] (551.10 kB)
#> + R6                        2.6.1      [dl] (88.64 kB)
#> + RColorBrewer              1.1-3      [dl] (54.47 kB)
#> + Rcpp                      1.0.14     [dl] (2.90 MB)
#> + readr                     2.1.5      [dl] (1.19 MB)
#> + recipes                   1.2.1      [dl] (1.73 MB)
#> + reshape2                  1.4.4      [dl] (438.87 kB)
#> + rlang                     1.1.6      
#> + rsample                   1.3.0      [dl] (578.54 kB)
#> + rstudioapi                0.17.1     [dl] (342.23 kB)
#> + scales                    1.3.0      [dl] (714.75 kB)
#> + sfd                       0.1.0      [dl] (2.46 MB)
#> + shape                     1.4.6.1    [dl] (753.94 kB)
#> + slider                    0.3.2      [dl] (312.31 kB)
#> + sparsevctrs               0.3.2      [dl] (204.70 kB)
#> + SQUAREM                   2021.1     [dl] (183.53 kB)
#> + stringi                   1.8.7      
#> + stringr                   1.5.1      [dl] (323.42 kB)
#> + tibble                    3.2.1      [dl] (695.05 kB)
#> + tidymodels                1.3.0      [dl] (89.30 kB)
#> + tidyr                     1.3.1      [dl] (1.27 MB)
#> + tidyselect                1.2.1      [dl] (228.15 kB)
#> + timechange                0.3.0      [dl] (514.48 kB)
#> + timeDate                  4041.110   [dl] (1.40 MB)
#> + tune                      1.3.0      [dl] (1.97 MB)
#> + tzdb                      0.5.0      [dl] (1.04 MB)
#> + utf8                      1.2.4      [dl] (150.80 kB)
#> + vctrs                     0.6.5      [dl] (1.36 MB)
#> + viridisLite               0.4.2      [dl] (1.30 MB)
#> + vroom                     1.6.5      [dl] (1.34 MB)
#> + warp                      0.2.1      [dl] (70.89 kB)
#> + withr                     3.0.2      [dl] (231.37 kB)
#> + workflows                 1.2.0      [dl] (262.72 kB)
#> + workflowsets              1.1.0      [dl] (2.83 MB)
#> + yardstick                 1.3.2      [dl] (1.11 MB)
#> ℹ Getting 95 pkgs (85.31 MB) and 1 pkg with unknown size, 4 (17.11 MB) cached
#> ✔ Cached copy of pkg.drugage 0.0.0.9000 (source) is the latest build
#> ✔ Cached copy of DiceDesign 1.10 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of GPfit 1.0-8 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of ModelMetrics 1.2.2.2 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of R6 2.6.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of RColorBrewer 1.1-3 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of Rcpp 1.0.14 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of SQUAREM 2021.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of bit64 4.6.0-1 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of bit 4.6.0 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of broom 1.0.8 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of cachem 1.1.0 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of caret 7.0-1 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of cli 3.6.4 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of clipr 0.8.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of clock 0.7.3 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of colorspace 2.1-1 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of conflicted 1.2.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of crayon 1.5.3 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of data.table 1.17.0 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of diagram 1.6.5 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of dials 1.4.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of digest 0.6.37 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of doFuture 1.0.2 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of dplyr 1.1.4 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of e1071 1.7-16 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of fansi 1.0.6 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of farver 2.1.2 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of fastmap 1.2.0 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of foreach 1.5.2 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of furrr 0.3.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of future.apply 1.11.3 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of future 1.40.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of generics 0.1.3 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of ggplot2 3.5.2 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of globals 0.16.3 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of glue 1.8.0 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of gtable 0.3.6 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of hardhat 1.4.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of hms 1.1.3 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of infer 1.0.7 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of ipred 0.9-15 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of isoband 0.2.7 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of iterators 1.0.14 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of labeling 0.4.3 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of lava 1.8.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of lhs 1.2.0 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of lifecycle 1.0.4 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of listenv 0.9.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of lubridate 1.9.4 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of magrittr 2.0.3 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of memoise 2.0.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of modeldata 1.4.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of modelenv 0.2.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of munsell 0.5.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of numDeriv 2016.8-1.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of pROC 1.18.5 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of parallelly 1.43.0 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of parsnip 1.3.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of patchwork 1.3.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of pillar 1.10.2 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of pkgconfig 2.0.3 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of plyr 1.8.9 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of prettyunits 1.2.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of prodlim 2024.06.25 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of progressr 0.15.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of proxy 0.4-27 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of purrr 1.0.4 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of readr 2.1.5 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of recipes 1.2.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of reshape2 1.4.4 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of rsample 1.3.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of rstudioapi 0.17.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of scales 1.3.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of sfd 0.1.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of shape 1.4.6.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of slider 0.3.2 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of sparsevctrs 0.3.2 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of stringr 1.5.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of tibble 3.2.1 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of tidymodels 1.3.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of tidyr 1.3.1 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of tidyselect 1.2.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of timeDate 4041.110 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of timechange 0.3.0 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of tune 1.3.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of tzdb 0.5.0 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of utf8 1.2.4 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of vctrs 0.6.5 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of viridisLite 0.4.2 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of vroom 1.6.5 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of warp 0.2.1 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of withr 3.0.2 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of workflows 1.2.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of workflowsets 1.1.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of yardstick 1.3.2 (x86_64-w64-mingw32) is the latest build
#> ✔ Installed pkg.drugage 0.0.0.9000 (github::DSCI-310-2025/pkg.drugage@996f943) (175ms)
#> ✔ Installed GPfit 1.0-8  (179ms)
#> ✔ Installed DiceDesign 1.10  (221ms)
#> ✔ Installed R6 2.6.1  (250ms)
#> ✔ Installed RColorBrewer 1.1-3  (303ms)
#> ✔ Installed ModelMetrics 1.2.2.2  (350ms)
#> ✔ Installed backports 1.5.0  (353ms)
#> ✔ Installed SQUAREM 2021.1  (404ms)
#> ✔ Installed bit64 4.6.0-1  (452ms)
#> ✔ Installed bit 4.6.0  (484ms)
#> ✔ Installed broom 1.0.8  (563ms)
#> ✔ Installed cachem 1.1.0  (462ms)
#> ✔ Installed caret 7.0-1  (485ms)
#> ✔ Installed clipr 0.8.0  (474ms)
#> ✔ Installed cli 3.6.4  (548ms)
#> ✔ Installed clock 0.7.3  (486ms)
#> ✔ Installed conflicted 1.2.0  (463ms)
#> ✔ Installed crayon 1.5.3  (454ms)
#> ✔ Installed colorspace 2.1-1  (575ms)
#> ✔ Installed diagram 1.6.5  (443ms)
#> ✔ Installed data.table 1.17.0  (523ms)
#> ✔ Installed dials 1.4.0  (424ms)
#> ✔ Installed Rcpp 1.0.14  (1.1s)
#> ✔ Installed digest 0.6.37  (463ms)
#> ✔ Installed doFuture 1.0.2  (462ms)
#> ✔ Installed dplyr 1.1.4  (466ms)
#> ✔ Installed e1071 1.7-16  (464ms)
#> ✔ Installed fansi 1.0.6  (480ms)
#> ✔ Installed farver 2.1.2  (484ms)
#> ✔ Installed fastmap 1.2.0  (487ms)
#> ✔ Installed foreach 1.5.2  (481ms)
#> ✔ Installed furrr 0.3.1  (485ms)
#> ✔ Installed future.apply 1.11.3  (480ms)
#> ✔ Installed generics 0.1.3  (423ms)
#> ✔ Installed future 1.40.0  (516ms)
#> ✔ Installed globals 0.16.3  (531ms)
#> ✔ Installed ggplot2 3.5.2  (604ms)
#> ✔ Installed glue 1.8.0  (571ms)
#> ✔ Installed gower 1.0.2  (538ms)
#> ✔ Installed gtable 0.3.6  (571ms)
#> ✔ Installed hardhat 1.4.1  (566ms)
#> ✔ Installed hms 1.1.3  (571ms)
#> ✔ Installed infer 1.0.7  (555ms)
#> ✔ Installed ipred 0.9-15  (557ms)
#> ✔ Installed isoband 0.2.7  (567ms)
#> ✔ Installed iterators 1.0.14  (585ms)
#> ✔ Installed labeling 0.4.3  (462ms)
#> ✔ Installed lava 1.8.1  (464ms)
#> ✔ Installed lhs 1.2.0  (458ms)
#> ✔ Installed lifecycle 1.0.4  (457ms)
#> ✔ Installed listenv 0.9.1  (426ms)
#> ✔ Installed lubridate 1.9.4  (430ms)
#> ✔ Installed magrittr 2.0.3  (428ms)
#> ✔ Installed memoise 2.0.1  (421ms)
#> ✔ Installed modeldata 1.4.0  (417ms)
#> ✔ Installed modelenv 0.2.0  (440ms)
#> ✔ Installed munsell 0.5.1  (415ms)
#> ✔ Installed numDeriv 2016.8-1.1  (417ms)
#> ✔ Installed pROC 1.18.5  (422ms)
#> ✔ Installed parallelly 1.43.0  (422ms)
#> ✔ Installed parsnip 1.3.1  (428ms)
#> ✔ Installed patchwork 1.3.0  (424ms)
#> ✔ Installed pillar 1.10.2  (428ms)
#> ✔ Installed pkgconfig 2.0.3  (422ms)
#> ✔ Installed plyr 1.8.9  (421ms)
#> ✔ Installed prettyunits 1.2.0  (424ms)
#> ✔ Installed prodlim 2024.06.25  (444ms)
#> ✔ Installed progressr 0.15.1  (417ms)
#> ✔ Installed proxy 0.4-27  (415ms)
#> ✔ Installed purrr 1.0.4  (417ms)
#> ✔ Installed readr 2.1.5  (418ms)
#> ✔ Installed recipes 1.2.1  (420ms)
#> ✔ Installed reshape2 1.4.4  (417ms)
#> ✔ Installed rlang 1.1.6  (427ms)
#> ✔ Installed rsample 1.3.0  (428ms)
#> ✔ Installed rstudioapi 0.17.1  (434ms)
#> ✔ Installed scales 1.3.0  (453ms)
#> ✔ Installed sfd 0.1.0  (431ms)
#> ✔ Installed shape 1.4.6.1  (428ms)
#> ✔ Installed slider 0.3.2  (428ms)
#> ✔ Installed sparsevctrs 0.3.2  (432ms)
#> ✔ Installed stringr 1.5.1  (406ms)
#> ✔ Installed tibble 3.2.1  (408ms)
#> ✔ Installed tidymodels 1.3.0  (399ms)
#> ✔ Installed tidyr 1.3.1  (394ms)
#> ✔ Installed stringi 1.8.7  (587ms)
#> ✔ Installed tidyselect 1.2.1  (446ms)
#> ✔ Installed timeDate 4041.110  (421ms)
#> ✔ Installed timechange 0.3.0  (424ms)
#> ✔ Installed tune 1.3.0  (420ms)
#> ✔ Installed utf8 1.2.4  (384ms)
#> ✔ Installed tzdb 0.5.0  (446ms)
#> ✔ Installed vctrs 0.6.5  (404ms)
#> ✔ Installed viridisLite 0.4.2  (394ms)
#> ✔ Installed warp 0.2.1  (350ms)
#> ✔ Installed vroom 1.6.5  (412ms)
#> ✔ Installed withr 3.0.2  (367ms)
#> ✔ Installed workflows 1.2.0  (377ms)
#> ✔ Installed workflowsets 1.1.0  (354ms)
#> ✔ Installed yardstick 1.3.2  (353ms)
#> ✔ 1 pkg + 110 deps: kept 6, upd 1, added 99 [9.4s]
```

Then load the package:

``` r
library(pkg.drugage)
```

## Example

The following is a basic example which shows you how to use some of the
functions:

``` r
library(pkg.drugage)

# can be shown with sample data
sample_data <- data.frame(
 age = c("18-24", "25-34", "35-44"),
 alcohol.use = c(80, 75, 60),
 alcohol.frequency = c(20, 15, 10),
 marijuana.use = c(50, 30, 20),
 heroin.frequency = c(5, 3, 2),
 class = c("youth", "adult", "adult"),
 n = c(100, 200, 150))
 


# Clean data
cleaned_data <- clean_drug_use_data(sample_data)
#> Warning: There was 1 warning in `dplyr::mutate()`.
#> ℹ In argument: `dplyr::across(-age, ~as.numeric(na_if(as.character(.), "-")))`.
#> Caused by warning:
#> ! NAs introduced by coercion
classified_data <- classify_age_group(cleaned_data)
#> Warning: There was 1 warning in `dplyr::mutate()`.
#> ℹ In argument: `age_numeric = as.numeric(as.character(age))`.
#> Caused by warning:
#> ! NAs introduced by coercion

# EDA
create_bar_use_plot(
sample_data,
"age",
"alcohol.use",
"Alcohol Use",
"Age",
"Proportion",
"dodgerblue",
"man/figures/README-test1.png")
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

## Licenses

This project is dual-licensed under the following:

- **[Creative Commons Zero v1.0 Universal (CC0
  1.0)](https://creativecommons.org/publicdomain/zero/1.0/)** You can
  copy, modify, distribute and perform the work, even for commercial
  purposes, all without asking permission.

- **[MIT License](LICENSE.md)**  
  A short and permissive software license. You can use it in proprietary
  software provided that all copies include the license terms and the
  copyright notice.
