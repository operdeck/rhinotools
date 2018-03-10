library(rhinotools)

context("Basic checks")
test_that("rhinos come in groups", {
  expect_equal(hiRhino(2), "Hello, Rhino Rhino!")
  expect_equal(hiRhino(), "Hey, no Rhinos!")
  expect_equal(hiRhino(-1), "Oops, Rhinos cant be negative!")
})
