library(testthat)
source("../src/functions.R")

test_that("Scatter plot is created", {
  expect_is(createScatterPlot(iris), "ggplot")
})

test_that("Histogram is created", {
  expect_is(createHistogram(iris), "ggplot")
})

test_that("Box plot is created", {
  expect_is(createBoxPlot(iris), "ggplot")
})

test_that("Bar chart is created", {
  expect_is(createBarChart(mtcars), "ggplot")
})

test_that("Line chart is created", {
  expect_is(createLineChart(pressure), "ggplot")
})

test_that("Density plot is created", {
  expect_is(createDensityPlot(iris), "ggplot")
})
