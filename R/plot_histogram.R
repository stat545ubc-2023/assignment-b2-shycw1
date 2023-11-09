#' @title   plot_histogram
#' @description  This function produces a histogram for a numeric attribute.
#' The function requires the attribute to be passed as a symbol, reflecting the column name in the dataframe.
#' @param dataframe  A dataframe with data to plot.
#' It is named as dataframe because it is required to pass the main set of data from which information will be drawn.
#' @param attribute  A symbol representing the numeric column in the dataframe to be used for the histogram plot.
#' It is named as attribute because it refers to a specific column of the data.
#' @param bins The number of bins to use for the histogram (default = 50).
#'
#' @return  A ggplot object representing the histogram plot.
#' @export
#'
#' @examples
#' # Correct usage with default number of bins:
#' plot_histogram(datateachr::cancer_sample, radius_mean)
#' # Specifying the number of bins:
#' plot_histogram(datateachr::cancer_sample, radius_mean, bins = 80)
plot_histogram <- function(dataframe, attribute, bins = 50) {

  if (is.character(substitute(attribute))) {
    stop("[Error] Attribute should be a symbol, not a string!\n")
  }

  attribute_as_string <- deparse(substitute(attribute)) # convert variable name as string.

  if (all(is.na(dataframe[[attribute_as_string]]))) {
    stop("[Error] The attribute contains no data.\n")
  }

  if (!attribute_as_string %in% names(dataframe)) {
    stop(paste("[Error] The attribute", attribute_as_string, "does not exist in the dataframe!\n"))
  }

  if (!is.numeric(dataframe[[attribute_as_string]])) {
    stop(paste("[Error] The attribute", attribute_as_string, "must be numeric!\n"))
  }

  histogram_plot <- ggplot2::ggplot(dataframe, ggplot2::aes(x = {{ attribute }})) +
    ggplot2::geom_histogram(na.rm = TRUE, bins = bins) +
    ggplot2::labs(x = attribute_as_string, y = "Count") +
    ggplot2::theme_minimal()

  return(histogram_plot)
}
