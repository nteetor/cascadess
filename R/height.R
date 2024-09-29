height_percent_values <- chr(
  "25" = "25",
  "50" = "50",
  "75" = "75",
  "100" = "100"
)

#' Relative height
#'
#' The `height_relative()` function adjusts a tag element's height relative to
#' the height of its parent element.
#'
#' @param x `r param_subject()`
#'
#' @param percent A number specifying a percent. One of,
#'
#'   `r rd_bullets(names(height_percent_values))`
#'
#' @returns `r returns_same("x")`
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     height_relative(50)
#' )
#'
#' div(
#'   .style %>%
#'     height_relative(75)
#' )
#'
height_relative <- function(x, percent) {
  add_class(
    x,
    compose_class(
      "h",
      height_percent_values,
      percent
    )
  )
}
