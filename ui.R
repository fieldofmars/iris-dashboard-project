ui <- page_sidebar(
  title = "Data Visualization Dashboard",
  sidebar = sidebar(
    title = "Controls",
    selectInput("dataset", "Choose Dataset",
      choices = names(available_datasets),
      selected = "iris"
    ),
    selectInput("theme", "Select Theme",
      choices = theme_options,
      selected = "default"
    ),
    width = "250px",
    bg = "#f8f9fa",
    open = "desktop"
  ),
  layout_columns(
    fill = FALSE,
    value_box(
      title = "Dataset Info",
      value = textOutput("dataset_info"),
      showcase = bsicons::bs_icon("info-circle")
    ),
    value_box(
      title = "Variables",
      value = textOutput("var_count"),
      showcase = bsicons::bs_icon("list")
    ),
    value_box(
      title = "Observations",
      value = textOutput("obs_count"),
      showcase = bsicons::bs_icon("table")
    )
  ),
  layout_columns(
    col_widths = c(6, 6),
    card(
      card_header("Scatter Plot"),
      plotlyOutput("scatter_plot", height = "300px")
    ),
    card(
      card_header("Box Plot"),
      plotlyOutput("box_plot", height = "300px")
    )
  ),
  layout_columns(
    col_widths = c(4, 4, 4),
    card(
      card_header("Histogram"),
      plotlyOutput("histogram", height = "300px")
    ),
    card(
      card_header("Density Plot"),
      plotlyOutput("density_plot", height = "300px")
    ),
    card(
      card_header("Violin Plot"),
      plotlyOutput("violin_plot", height = "300px")
    )
  ),
  card(
    card_header("Data Preview"),
    DTOutput("data_table")
  ),
  theme = bs_theme(version = 5, bootswatch = "default")
)
