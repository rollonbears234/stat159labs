



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
