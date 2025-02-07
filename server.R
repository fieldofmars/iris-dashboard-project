server <- function(input, output, session) {
  
  # Reactive dataset
  current_data <- reactive({
    available_datasets[[input$dataset]]$data
  })
  
  # Update theme dynamically
  observe({
    session$setCurrentTheme(
      bs_theme(version = 5, bootswatch = input$theme)
    )
  })
  
  # Dataset information
  output$dataset_info <- renderText({
    available_datasets[[input$dataset]]$name
  })
  
  output$var_count <- renderText({
    ncol(current_data())
  })
  
  output$obs_count <- renderText({
    nrow(current_data())
  })
  
  # Scatter Plot
  output$scatter_plot <- renderPlotly({
    create_scatter_plot(current_data(), input$dataset)
  })
  
  # Box Plot
  output$box_plot <- renderPlotly({
    create_box_plot(current_data(), input$dataset)
  })
  
  # Histogram
  output$histogram <- renderPlotly({
    create_histogram(current_data(), input$dataset)
  })
  
  # Density Plot
  output$density_plot <- renderPlotly({
    create_density_plot(current_data(), input$dataset)
  })
  
  # Violin Plot
  output$violin_plot <- renderPlotly({
    create_violin_plot(current_data(), input$dataset)
  })
  
  # Data Table
  output$data_table <- renderDT({
    datatable(
      current_data(),
      options = list(
        pageLength = 5,
        scrollX = TRUE,
        scrollY = "200px"
      )
    )
  })
}
