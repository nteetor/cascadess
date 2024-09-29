width_percent_values <- chr(
  "25" = "25",
  "50" = "50",
  "75" = "75",
  "100" = "100"
)

#' Relative width
#'
#' The `width_relative()` function adjusts a tag element's width relative to its
#' parent element's width.
#'
#' @param x `r param_subject()`
#'
#' @param percent A number specifying a percent. One of,
#'
#'   `r rd_bullets(names(width_percent_values))`
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
#'     width_relative(25)
#' )
#'
#' div(
#'   .style %>%
#'     width_relative(100)
#' )
#'
width_relative <- function(x, percent) {
  add_class(
    x,
    compose_class(
      "w",
      width_percent_values,
      percent
    )
  )
}
