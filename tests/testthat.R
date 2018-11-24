library(testthat)
library(lazyu)

string <- lazyu::get_os()

test_that("string system name", {
  osStrings <- which_os()
  expect_match(osStrings, string, ignore.case = TRUE)
})
