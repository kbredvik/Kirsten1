#' Title: diamond_plot
#'
#'This code produces a ggplot of \code{vary} and \code{varx}
#'
#' @param df dataframe
#' @param varx string x variable
#' @param vary string y variable
#'
#' @return A plot with diamond markers
#' @export
#'
#'@importFrom ggplot2 ggplot
#'@importFrom ggplot2 geom_points
#'
#' @examples
#' diamond_plot(df.test, x, y)

library(devtools)
library(roxygen2)

diamond_plot <-
  function(df, varx, vary) {
    ggplot(df, aes(x = get(varx), y = get(vary))) + geom_point(
      shape = 23,
      fill = "blue",
      color = "darkred",
      size = 3
    )
  }

data("sample_data")
