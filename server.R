library(shiny)
library(ggplot2)

source("./src/functions.R")

server <- function(input, output, session) {
  
  selectedData <- reactive({
    get(input$dataset)
  })
  
  output$plot1 <- renderPlot({
    createScatterPlot(selectedData())
  })
  
  output$plot2 <- renderPlot({
    createHistogram(selectedData())
  })
  
  output$plot3 <- renderPlot({
    createBoxPlot(selectedData())
  })
  
  output$plot4 <- renderPlot({
    createBarChart(selectedData())
  })
  
  output$plot5 <- renderPlot({
    createLineChart(selectedData())
  })
  
  output$plot6 <- renderPlot({
    createDensityPlot(selectedData())
  })
  
  session$onSessionEnded(stopApp)
}
