#' Create a scatter plot
#'
#' @param data A data frame.
#' @return A ggplot object.
#' @examples
#' createScatterPlot(iris)
createScatterPlot <- function(data) {
  ggplot(data, aes(x = .data[[names(data)[1]]], y = .data[[names(data)[2]]])) +
    geom_point() +
    theme_minimal()
}

#' Create a histogram
#'
#' @param data A data frame.
#' @return A ggplot object.
#' @examples
#' createHistogram(iris)
createHistogram <- function(data) {
  ggplot(data, aes(x = .data[[names(data)[1]]])) +
    geom_histogram() +
    theme_minimal()
}

#' Create a box plot
#'
#' @param data A data frame.
#' @return A ggplot object.
#' @examples
#' createBoxPlot(iris)
createBoxPlot <- function(data) {
  ggplot(data, aes(y = .data[[names(data)[1]]])) +
    geom_boxplot() +
    theme_minimal()
}

#' Create a bar chart
#'
#' @param data A data frame.
#' @return A ggplot object.
#' @examples
#' createBarChart(mtcars)
createBarChart <- function(data) {
  ggplot(data, aes(x = factor(.data[[names(data)[1]]]))) +
    geom_bar() +
    theme_minimal()
}

#' Create a line chart
#'
#' @param data A data frame.
#' @return A ggplot object.
#' @examples
#' createLineChart(pressure)
createLineChart <- function(data) {
  ggplot(data, aes(x = .data[[names(data)[1]]], y = .data[[names(data)[2]]])) +
    geom_line() +
    theme_minimal()
}

#' Create a density plot
#'
#' @param data A data frame.
#' @return A ggplot object.
#' @examples
#' createDensityPlot(iris)
createDensityPlot <- function(data) {
  ggplot(data, aes(x = .data[[names(data)[1]]])) +
    geom_density() +
    theme_minimal()
}
