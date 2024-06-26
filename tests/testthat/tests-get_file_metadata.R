# See https://demo.dataverse.org/dataverse/dataverse-client-r
# https://demo.dataverse.org/dataset.xhtml?persistentId=doi:10.70122/FK2/HXJVJU

test_that("get file metadata from DOI and filename", {
  # testthat::skip_if_offline("demo.dataverse.org")
  testthat::skip_on_cran()
  actual <- get_file_metadata(
    file    = "roster-bulls-1996.tab",
    dataset = "doi:10.70122/FK2/HXJVJU"
  )
  expect_true(is.character(actual))
  expect_true(4000 < nchar(actual)) # There should be 4k+ characters
})

test_that("get file metadata from file id", {
  # testthat::skip_if_offline("demo.dataverse.org")
  testthat::skip_on_cran()
  actual <- get_file_metadata(
    file = 1734005
  )
  expect_true(is.character(actual))
  expect_true(4000 < nchar(actual)) # There should be 4k+ characters
})
