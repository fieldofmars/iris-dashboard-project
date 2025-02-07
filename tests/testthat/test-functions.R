library(testthat)

test_that("create_scatter_plot works with iris dataset", {
  p <- create_scatter_plot(iris, "iris")
  expect_s3_class(p, "plotly")
})

test_that("create_box_plot works with iris dataset", {
  p <- create_box_plot(iris, "iris")
  expect_s3_class(p, "plotly")
})

test_that("create_histogram works with iris dataset", {
  p <- create_histogram(iris, "iris")
  expect_s3_class(p, "plotly")
})

test_that("create_density_plot works with iris dataset", {
  p <- create_density_plot(iris, "iris")
  expect_s3_class(p, "plotly")
})

test_that("create_violin_plot works with iris dataset", {
  p <- create_violin_plot(iris, "iris")
  expect_s3_class(p, "plotly")
})

test_that("create_scatter_plot works with mtcars dataset", {
  p <- create_scatter_plot(mtcars, "mtcars")
  expect_s3_class(p, "plotly")
})

# Add more tests for other datasets and edge cases
