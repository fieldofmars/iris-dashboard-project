library(shiny)
library(shinythemes)

datasets <- c("iris", "mtcars", "airquality", "quakes", "volcano")

ui <- fluidPage(
  theme = shinytheme(theme = "flatly"),
  titlePanel("R Shiny Dashboard"),
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset", "Choose a dataset:", choices = datasets),
      shinythemes::themeSelector(),
      width = 2
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Plot 1", plotOutput("plot1")),
        tabPanel("Plot 2", plotOutput("plot2")),
        tabPanel("Plot 3", plotOutput("plot3")),
        tabPanel("Plot 4", plotOutput("plot4")),
        tabPanel("Plot 5", plotOutput("plot5")),
        tabPanel("Plot 6", plotOutput("plot6"))
      )
    )
  )
)
