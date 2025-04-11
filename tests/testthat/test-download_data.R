library(testthat)

# Expected case
test_that("`download_data` downloads a csv file when given a URL", {
  test_url <- "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/drug-use-by-age/drug-use-by-age.csv"
  test_dir <- "data/test"
  expected_file <- file.path(test_dir, "drug-use-by-age.csv")

  create_directory(test_dir)

  download_data(test_url, test_dir)
  expect_true(file.exists(expected_file))

  unlink("data", recursive = TRUE)  # Cleanup
})

# Edge case
test_that("`download_data` handles pre-existing file", {
  test_url <- "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/drug-use-by-age/drug-use-by-age.csv"
  test_dir <- "data/test"
  expected_file <- file.path(test_dir, "drug-use-by-age.csv")

  dir.create(test_dir, recursive = TRUE)
  write.csv(data.frame(a = 1:5), expected_file, row.names = FALSE)

  download_data(test_url, test_dir)
  expect_true(file.exists(expected_file))

  unlink("data", recursive = TRUE)
})

# Error case
test_that("`download_data` fails with an invalid URL", {
  test_url <- "https://invalid.url/file.csv"
  test_dir <- "data/test"

  expect_error(download_data(test_url, test_dir), "Unable to download file")
})
