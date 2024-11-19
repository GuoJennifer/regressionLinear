test_that("coefficient correct", {
  expect_equal(lr_coefficients("mpg", c("cyl", "disp", "hp"), data=mtcars) [[1,1]], 34.1849192)
})
