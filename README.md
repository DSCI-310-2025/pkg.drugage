
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pkg.drugage

<!-- badges: start -->

[![R-CMD-check](https://github.com/DSCI-310-2025/pkg.drugage/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/DSCI-310-2025/pkg.drugage/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/DSCI-310-2025/pkg.drugage/graph/badge.svg)](https://app.codecov.io/gh/DSCI-310-2025/pkg.drugage)
<!-- badges: end -->

The goal of pkg.drugage is to provide functions to streamline the creation of data classification models. This package was originally developed with the intention of creating a classficiation model able to categorize data into youth vs. adult groups based on the trend of drug use/frequency, but its functions can be applied to any similar scenario.


## Ecosystem Context

In the R ecosystem, `pkg.drugage` complements existing packages such as:

- **`tidymodels`**: While `tidymodels` offers a comprehensive framework for modeling, `pkg.drugage` provides convenience functions specifically tailored for classification workflows, including pre-processing steps and visualization helpers.
- **`caret`**: Similar to `caret`, `pkg.drugage` supports training and evaluating models, but focuses more narrowly on binary classification use cases and integrates more tightly with age-group classification logic.
- **`janitor`** and **`skimr`**: These offer data cleaning and summary tools, while `pkg.drugage` includes domain-specific cleaning for age-group classification in addition to generalized preprocessing.

Unlike broader frameworks, `pkg.drugage` prioritizes accessibility, domain focus, and end-to-end reproducibility for education and research scenarios.


## Functions

- `download_data`: Downloads a file from a given URL and saves it to a specified destination.
- `create_directory`: Checks if the specified directory exists, and creates the directory path if necessary.
- `data_cleaning`: Cleans the dataset, classifies individuals into age groups and saves the cleaned dataset to a given path.
- `eda_functions`: Performs exploratory data analysis (EDA) on the cleaned dataset, such as creating bar and scatter plots to visualize the raw data.
- `train_and_predict`: Takes a model specification and a recipe, fits the model on the training data, and returns class predictions on the testing data.
- `create_confusion_matrix`: Takes model predictions, generates a confusion matrix and saves it as a PNG figure and as a CSV table in the specified output directory. Returns the ggplot object used to create the plot.


## Installation

You can install the development version of pkg.drugage from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("DSCI-310-2025/pkg.drugage")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(pkg.drugage)

# Downloading data and preparing for cleaning
create_directory("data/raw")
download_data(
  url = "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/refs/heads/master/data-raw/drug-use-by-age/drug-use-by-age.csv",
  dest = "data/raw"
)

# Clean data
cleaned_data <- clean_drug_use("data/raw/drug-use-by-age.csv")
classified_data <- classify_age_group(cleaned_data)

save_data(classified_data, "data/clean/data-cleaned.csv")
```

## License

This project is dual-licensed under the following licenses:

- **[Creative Commons Zero v1.0 Universal (CC0 1.0)](https://creativecommons.org/publicdomain/zero/1.0/)**
  You can copy, modify, distribute and perform the work, even for commercial
  purposes, all without asking permission.

- **[MIT License](LICENSE.md)**  
  A short and permissive software license. You can use it in proprietary
  software provided that all copies include the license terms and the
  copyright notice.
