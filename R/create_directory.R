#' Create directory if it doesn't exist
#'
#' Checks if the specified directory exists, and
#' creates the directory path if necessary.
#'
#' @param path A character string specifying the directory path.
#'
#' @return None. The function creates a directory as a side effect.
#' @export
#'
#' @examples
#' test_dir <- "data/test_dir"
#' create_directory(test_dir)
create_directory <- function(path) {
  if (!dir.exists(path)) {
    dir.create(path, recursive = TRUE)
  }
}
