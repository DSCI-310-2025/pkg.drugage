#' Download Dataset
#'
#' Downloads a file from a given URL and saves it to a specified destination.
#'
#' @param url A character string specifying the file URL.
#' @param destination A character string specifying the
#' file path where the data will be saved.
#'
#' @return None. The function downloads the file as a side effect.
#'
#' @import utils
#' @export
#'
#' @examples
#' if (interactive()) {
#'   test_url <- paste0("https://raw.githubusercontent.com/rudeboybert/",
#'   "fivethirtyeight/master/data-raw/drug-use-by-age/drug-use-by-age.csv")
#'   test_dir <- "data/test"
#'   download_data(test_url, test_dir)
#' }
download_data <- function(url, destination) {
  create_directory(dirname(destination))
  utils::download.file(
    url, file.path(destination, "drug-use-by-age.csv"), quiet = TRUE
  )
  message("File downloaded successfully to ", destination)
}
