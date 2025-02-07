#' Create a scatter plot for the selected dataset
#' 
#' @param data The dataset to plot
#' @param dataset_name The name of the dataset
#' @return A plotly object
#' @export
create_scatter_plot <- function(data, dataset_name) {
  if (dataset_name == "iris") {
    p <- ggplot(data, aes(Sepal.Length, Sepal.Width, color = Species)) +
      geom_point()
  } else if (dataset_name == "mtcars") {
    p <- ggplot(data, aes(wt, mpg, color = factor(cyl))) +
      geom_point()
  } else {
    p <- ggplot(data, aes(carat, price, color = cut)) +
      geom_point(alpha = 0.5)
  }
  
  ggplotly(p + theme_minimal())
}

#' Create a box plot for the selected dataset
#' 
#' @param data The dataset to plot
#' @param dataset_name The name of the dataset
#' @return A plotly object
#' @export
create_box_plot <- function(data, dataset_name) {
  if (dataset_name == "iris") {
    p <- ggplot(data, aes(Species, Sepal.Length, fill = Species)) +
      geom_boxplot()
  } else if (dataset_name == "mtcars") {
    p <- ggplot(data, aes(factor(cyl), mpg, fill = factor(cyl))) +
      geom_boxplot()
  } else {
    p <- ggplot(data, aes(cut, price, fill = cut)) +
      geom_boxplot()
  }
  
  ggplotly(p + theme_minimal())
}

#' Create a histogram for the selected dataset
#' 
#' @param data The dataset to plot
#' @param dataset_name The name of the dataset
#' @return A plotly object
#' @export
create_histogram <- function(data, dataset_name) {
  if (dataset_name == "iris") {
    p <- ggplot(data, aes(Sepal.Length, fill = Species)) +
      geom_histogram(bins = 30, alpha = 0.7)
  } else if (dataset_name == "mtcars") {
    p <- ggplot(data, aes(mpg, fill = factor(cyl))) +
      geom_histogram(bins = 30, alpha = 0.7)
  } else {
    p <- ggplot(data, aes(price, fill = cut)) +
      geom_histogram(bins = 30, alpha = 0.7)
  }
  
  ggplotly(p + theme_minimal())
}

#' Create a density plot for the selected dataset
#' 
#' @param data The dataset to plot
#' @param dataset_name The name of the dataset
#' @return A plotly object
#' @export
create_density_plot <- function(data, dataset_name) {
  if (dataset_name == "iris") {
    p <- ggplot(data, aes(Sepal.Length, fill = Species)) +
      geom_density(alpha = 0.5)
  } else if (dataset_name == "mtcars") {
    p <- ggplot(data, aes(mpg, fill = factor(cyl))) +
      geom_density(alpha = 0.5)
  } else {
    p <- ggplot(data, aes(price, fill = cut)) +
      geom_density(alpha = 0.5)
  }
  
  ggplotly(p + theme_minimal())
}

#' Create a violin plot for the selected dataset
#' 
#' @param data The dataset to plot
#' @param dataset_name The name of the dataset
#' @return A plotly object
#' @export
create_violin_plot <- function(data, dataset_name) {
  if (dataset_name == "iris") {
    p <- ggplot(data, aes(Species, Sepal.Length, fill = Species)) +
      geom_violin()
  } else if (dataset_name == "mtcars") {
    p <- ggplot(data, aes(factor(cyl), mpg, fill = factor(cyl))) +
      geom_violin()
  } else {
    p <- ggplot(data, aes(cut, price, fill = cut)) +
      geom_violin()
  }
  
  ggplotly(p + theme_minimal())
}
