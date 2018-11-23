
library(testthat)
library(lazyu)

string <- get_os()

test_that("string system name", {
  expect_match(string, "windows", ignore.case = TRUE)
})
