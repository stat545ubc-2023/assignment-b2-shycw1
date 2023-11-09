test_that("Histogram plot is created for valid numeric column", {
  return_value <- plot_histogram(datateachr::cancer_sample, radius_mean)
  expect_s3_class(return_value, "ggplot")
})



test_that("Error for non-numeric column vector", {
  expect_error(plot_histogram(datateachr::cancer_sample, diagnosis))
})


test_that("Error when attribute is passed as a string", {
  expect_error(plot_histogram(datateachr::cancer_sample, "radius_mean"))
})



test_that("Histogram plot is created with specified number of bins", {
  bins_value <- 10
  p <- plot_histogram(datateachr::cancer_sample, radius_mean, bins = bins_value)
  plot_data <- ggplot2::ggplot_build(p)$data[[1]]
  #ref: https://stackoverflow.com/questions/25378184/extract-data-from-a-ggplot
  bin_counts <- length(unique(plot_data$x))
  expect_equal(bin_counts, bins_value)
})
