library(rhinotools)

context("Basic checks")
test_that("rhinos come in groups", {
  expect_equal(hiRhino(2), "Hello, Rhino Rhino!")
  expect_equal(hiRhino(), "Hello, Rhino!")
  expect_equal(hiRhino(0), "Hey, no Rhinos!")
  expect_equal(hiRhino(-1), "Oops, Rhinos cant be negative!")
})
