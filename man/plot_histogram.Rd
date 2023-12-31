% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_histogram.R
\name{plot_histogram}
\alias{plot_histogram}
\title{plot_histogram}
\usage{
plot_histogram(dataframe, attribute, bins = 50)
}
\arguments{
\item{dataframe}{A dataframe with data to plot.
It is named as dataframe because it is required to pass the main set of data from which information will be drawn.}

\item{attribute}{A symbol representing the numeric column in the dataframe to be used for the histogram plot.
It is named as attribute because it refers to a specific column of the data.}

\item{bins}{The number of bins to use for the histogram (default = 50).}
}
\value{
A ggplot object representing the histogram plot.
}
\description{
This function produces a histogram for a numeric attribute.
The function requires the attribute to be passed as a symbol, reflecting the column name in the dataframe.
}
\examples{
# Correct usage with default number of bins:
plot_histogram(datateachr::cancer_sample, radius_mean)
# Specifying the number of bins:
plot_histogram(datateachr::cancer_sample, radius_mean, bins = 80)
}
