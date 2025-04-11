#' Drug Use Data EDA Functions:
#' 
#' Functions to run exploratory data analysis on a drug use dataset:
#' - `create_bar_use_plot()`: Creates a bar plot for substance use.
#' - `create_bar_freq_plot()`: Creates a bar plot for substance use frequency.
#' - `create_scatter_plot()`: Creates a scatter plot with a regression line.
#' - `aggregate_data()`: Aggregates data for youth vs. adult comparison.
#' - `create_grouped_bar_plot()`: Creates grouped bar plots for youth vs. adult comparison.


#' Function to create bar plot for substance use
#' 
#' @param data A .csv dataframe containing data to be plotted.
#' @param x_var A string specifying the x-axis variable.
#' @param y_var A string specifying the y-axis variable.
#' @param title A string specifying the plot title.
#' @param x_label A string specifying the x-axis label.
#' @param y_label A string specifying the y-axis label.
#' @param fill_color A string specifying the fill color for the bars.
#' @param output_file A string specifying the output file path for saving the plot.
#' 
#' @return ggplot objects representing the generated plot
#' 
#' @import ggplot2
#' @import dplyr
#' 
#' @export
#' 
#' @examples
#' sample_data <- data.frame(
#'  age = c("18-24", "25-34", "35-44"),
#'  `alcohol-use` = c(80, 75, 60),
#'  `alcohol-frequency` = c(20, 15, 10),
#'  `marijuana-use` = c(50, 30, 20),
#'  `heroin-frequency` = c(5, 3, 2),
#'  class = c("youth", "adult", "adult"),
#'  n = c(100, 200, 150)
#' )
#' create_bar_use_plot(sample_data, "age", "alcohol-use", "Alcohol Use", "Age", "Proportion", "dodgerblue", "output/eda-test/test1.png")
create_bar_use_plot <- function(data, x_var, y_var, title, x_label, y_label, fill_color, output_file) {
  plot <- ggplot(data, aes(x = .data[[x_var]], y = .data[[y_var]])) + 
    geom_bar(stat = "identity", width = 0.7, fill = fill_color) + 
    geom_text(aes(label = .data[[y_var]]), vjust = -0.3, color = "grey10", size = 3) +
    labs(title = title, x = x_label, y = y_label) +
    ylim(0, 100) +
    theme_bw() +
    theme(
      plot.title = element_text(size = 10, face = "bold"),
      axis.text.x = element_text(size = 7, angle = 30, hjust = 1),
      axis.text.y = element_text(size = 7)
    )
  if (!dir.exists(dirname(output_file))) {
    dir.create(dirname(output_file), recursive = TRUE)
  }
  ggsave(output_file, plot = plot, width = 8, height = 6)
  return(plot)
}


#' Create and save frequency bar plots
#' 
#' @param data A .csv dataframe containing data to be plotted.
#' @param x_var A string specifying the x-axis variable.
#' @param y_var A string specifying the y-axis variable.
#' @param title A string specifying the plot title.
#' @param x_label A string specifying the x-axis label.
#' @param y_label A string specifying the y-axis label.
#' @param fill_color A string specifying the fill color for the bars.
#' @param output_file A string specifying the output file path for saving the plot.
#' 
#' @return ggplot objects representing the generated plot
#' 
#' @import ggplot2
#' @import dplyr
#' 
#' @export
#' 
#' @examples
#' sample_data <- data.frame(
#'  age = c("18-24", "25-34", "35-44"),
#'  `alcohol-use` = c(80, 75, 60),
#'  `alcohol-frequency` = c(20, 15, 10),
#'  `marijuana-use` = c(50, 30, 20),
#'  `heroin-frequency` = c(5, 3, 2),
#'  class = c("youth", "adult", "adult"),
#'  n = c(100, 200, 150)
#' )
#' create_bar_freq_plot(sample_data, "age", "heroin-frequency", "Median Heroin Use Frequency in the Past Year by Age", "Age", "Median Frequency", "salmon", "output/eda-test/test3.png")
create_bar_freq_plot <- function(data, x_var, y_var, title, x_label, y_label, fill_color, output_file) {
  plot <- ggplot(data, aes(x = .data[[x_var]], y = .data[[y_var]])) + 
    geom_bar(stat = "identity", width = 0.7, fill = fill_color) + 
    geom_text(aes(label = .data[[y_var]]), vjust = -0.3, color = "grey10", size = 3) +
    labs(title = title, x = x_label, y = y_label) +
    scale_y_continuous(
      breaks = seq(0, 300, by = 25),
      labels = seq(0, 300, by = 25)
    ) +
    theme_bw() +
    theme(
      plot.title = element_text(size = 10, face = "bold"),
      axis.text.x = element_text(size = 7, angle = 30, hjust = 1),
      axis.text.y = element_text(size = 7)
    )
  if (!dir.exists(dirname(output_file))) {
    dir.create(dirname(output_file), recursive = TRUE)
  }
  ggsave(output_file, plot = plot, width = 8, height = 6)
  return(plot)
}


#' Function to create scatter plot with regression line
#' 
#' @param data A .csv dataframe containing data to be plotted.
#' @param x_var A string specifying the x-axis variable.
#' @param y_var A string specifying the y-axis variable.
#' @param title A string specifying the plot title.
#' @param x_label A string specifying the x-axis label.
#' @param y_label A string specifying the y-axis label.
#' @param color_var A string specifying the color variable for the scatter plot.
#' @param output_file A string specifying the output file path for saving the plot.
#' 
#' @return ggplot objects representing the generated plot
#' 
#' @import ggplot2
#' @import dplyr
#' 
#' @export
#' 
#' @examples
#' sample_data <- data.frame(
#'  age = c("18-24", "25-34", "35-44"),
#'  `alcohol-use` = c(80, 75, 60),
#'  `alcohol-frequency` = c(20, 15, 10),
#'  `marijuana-use` = c(50, 30, 20),
#'  `heroin-frequency` = c(5, 3, 2),
#'  class = c("youth", "adult", "adult"),
#'  n = c(100, 200, 150)
#' )
#' create_scatter_plot(sample_data, "alcohol-frequency", "heroin-frequency", "age", "Relationship Between Alcohol and Heroin Frequency Use", "Alcohol Median Frequency", "Heroin Median Frequency", "output/eda-test/test5.png")
create_scatter_plot <- function(data, x_var, y_var, color_var, title, x_label, y_label, output_file) {
  plot <- ggplot(data, aes(x = .data[[x_var]], y = .data[[y_var]], color = .data[[color_var]])) +
    geom_point(alpha = 0.8) +
    geom_smooth(method = "lm", se = FALSE, color = "black", linetype = "solid") +
    labs(title = title, x = x_label, y = y_label, color = "Age Group") +
    scale_color_viridis_d() +
    theme_bw() +
    theme(
      plot.title = element_text(size = 10, face = "bold"),
      axis.text.x = element_text(size = 7, angle = 30, hjust = 1),
      axis.text.y = element_text(size = 7)
    )
  if (!dir.exists(dirname(output_file))) {
    dir.create(dirname(output_file), recursive = TRUE)
  }
  ggsave(output_file, plot = plot, width = 8, height = 6, dpi = 300)
  return(plot)
}


#' Function to aggregate data for youth vs. adult comparison
#' 
#' @param data A .csv dataframe containing data to be aggregated.
#' 
#' @return nothing; but changes the given dataframe.
#' 
#' @import ggplot2
#' @import dplyr
#' @import tidyr
#' 
#' @export
#' 
#' @examples
#' sample_data <- data.frame(
#'  age = c("18-24", "25-34", "35-44"),
#'  `alcohol-use` = c(80, 75, 60),
#'  `alcohol-frequency` = c(20, 15, 10),
#'  `marijuana-use` = c(50, 30, 20),
#'  `heroin-frequency` = c(5, 3, 2),
#'  class = c("youth", "adult", "adult"),
#'  n = c(100, 200, 150)
#' )
#' aggregate_data(sample_data)
aggregate_data <- function(data) {
  data %>%
    group_by(class) %>%
    summarise(across(where(is.numeric), ~ weighted.mean(.x, n, na.rm = TRUE), 
                     .names = "mean_{.col}"),
              total_n = sum(n)) %>%
    pivot_longer(cols = starts_with("mean_"), 
                 names_to = "variable", values_to = "value") %>%
    mutate(variable = gsub("mean_", "", variable),
           value = round(value, 2))
}


#' Function to create grouped bar plots
#' 
#' @param data A .csv dataframe containing data to be plotted or aggregated.
#' @param title A string specifying the plot title.
#' @param x_label A string specifying the x-axis label.
#' @param y_label A string specifying the y-axis label.
#' @param output_file A string specifying the output file path for saving the plot.
#' 
#' @return ggplot objects representing the generated plot.
#' 
#' @import ggplot2
#' @import dplyr
#' 
#' @export
#' 
#' @examples
#' sample_aggregated <- tibble(
#'  class = c("adult", "adult", "adult", "adult", "adult", "youth", "youth", "youth", "youth", "youth"),
#'  total_n = c(350, 350, 350, 350, 350, 100, 100, 100, 100, 100),
#'  variable = c("alcohol-use", "alcohol-frequency", "marijuana-use", "heroin-frequency", "n", "alcohol-use", "alcohol-frequency", "marijuana-use", "heroin-frequency", "n"),
#'  value = c(68.6, 12.9, 25.7, 2.57, 179., 80, 20, 50, 5, 100),
#' )
#' create_grouped_bar_plot(sample_aggregated, "Youth vs. Adult Comparison", "Substance Type", "Mean Substance Use (%)", "output/eda-test/test6.png")
create_grouped_bar_plot <- function(data, title, x_label, y_label, output_file) {
  plot <- ggplot(data, aes(x = .data[["variable"]], y = .data[["value"]], fill = class)) +
    geom_bar(stat = "identity", position = "dodge") +
    theme_bw() +
    labs(title = title, x = x_label, y = y_label, fill = "Class") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
    scale_fill_manual(values = c("adult" = "darkblue", "youth" = "dodgerblue"),
                      labels = c("adult" = "Adult", "youth" = "Youth"))
  if (!dir.exists(dirname(output_file))) {
    dir.create(dirname(output_file), recursive = TRUE)
  }
  ggsave(output_file, plot = plot, width = 8, height = 6, dpi = 300)
  return(plot)
}
