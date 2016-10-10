



source("../functions/range-value.R")

context("Test for range value")

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)

  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})

test_that("Tests for Y", {
  y <- c(1, 2, 3, 4, NA)
  expect_length(range_value(y), 1)
  expect_equal(range_value(y), NA_real_)


})


test_that("Tests for Z", {
  z <- c(TRUE, FALSE, TRUE)
  expect_type(range_value(z), 'integer')
  expect_length(range_value(z), 1)
  expect_equal(range_value(z), 1L)

})


test_that("Tests for W", {
  w <- letters[1:5]
  expect_error(range_value(w), "non-numeric argument to binary operator")
})

source("../functions/missing-values.R")

context("Test for Missing Values")

test_that("Test 1 - x numeric vector", {
  x <- c(double(1), NA, double(4), double(5))
  answer = missing_values(x)
  expect_type(double(answer), "double")
  expect_length(answer, 1)
  expect_gt(answer, 0)

  })

context("Test For Improving Rnage Search")


test_that("Test Improve Range Search", {
  y <- c(1, 2, 3, 4, NA)
  answer = range_value(y, TRUE)
  expect_type(double(answer), "double")
  expect_length(answer, 1)
  expect_equal(answer, 3)

  })
