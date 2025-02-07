# Load required libraries
library(shiny)
library(tidyverse)
library(bslib)
library(DT)
library(plotly)

# Source functions
source("src/functions.R")

# Available datasets and their metadata
available_datasets <- list(
  iris = list(
    name = "Iris Dataset",
    data = iris,
    charts = c("scatter", "boxplot", "violin", "histogram", "density", "heatmap")
  ),
  mtcars = list(
    name = "Motor Trend Cars",
    data = mtcars,
    charts = c("scatter", "boxplot", "bar", "histogram", "density", "heatmap")
  ),
  diamonds = list(
    name = "Diamonds Dataset",
    data = ggplot2::diamonds,
    charts = c("scatter", "boxplot", "violin", "histogram", "density", "heatmap")
  )
)

# Available themes
theme_options <- list(
  "Default" = "default",
  "Darkly" = "darkly",
  "Flatly" = "flatly",
  "Litera" = "litera",
  "Minty" = "minty",
  "Pulse" = "pulse"
)
