#' Drug Use Data Cleaning Functions
#'
#' Functions to clean and transform a drug use dataset:
#' - `clean_drug_use_data()`: Standardizes variable types and handles missing values
#' - `classify_age_group()`: Adds 'youth'/'adult' classification
#' - `save_data()`: Writes processed data to file


#' Clean the drug use dataset
#'
#' @param data A data frame that includes an `age` column
#'
#' @return A data frame with `age` converted to a factor and other columns to numeric.
#' @export
#'
#' @importFrom dplyr mutate across
#'
#' @examples
#' df <- data.frame(age = c("18", "25"), cocaine = c("0", "-"))
#' clean_drug_use_data(df)
clean_drug_use_data <- function(data) {
  data %>%
    dplyr::mutate(
      age = factor(age),
      dplyr::across(-age, ~ as.numeric(na_if(as.character(.), "-")))
    )
}


#' Classify individuals into age groups
#'
#' @param data A data frame containing a factor or character `age` column.
#'
#' @return A data frame with a new `class` column: 'youth' (≤ 20) or 'adult'.
#' @export
#'
#' @importFrom dplyr mutate select
#'
#' @examples
#' df <- data.frame(age = factor(c("18", "25")))
#' classify_age_group(df)
classify_age_group <- function(data) {
  data %>%
    dplyr::mutate(
      age_numeric = as.numeric(as.character(age)),
      class = ifelse(!is.na(age_numeric) & age_numeric <= 20, "youth", "adult")
    ) %>%
    dplyr::select(-age_numeric)
}



#' Save processed data to a file
#'
#' @param data A data frame to be saved.
#' @param output_path A string specifying the output file path.
#'
#' @return Nothing. Saves the data to a file.
#' @export
#'
#' @importFrom readr write_csv
#'
#' @examples
#' \dontrun{
#' save_data(mtcars, "data/clean/mtcars-cleaned.csv")
#' }
save_data <- function(data, output_path) {
  if (!dir.exists(dirname(output_path))) {
    dir.create(dirname(output_path), recursive = TRUE)
  }
  write_csv(data, output_path)
}
