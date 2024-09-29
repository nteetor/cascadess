text_weight_values <- chr(
  bold = "bold",
  bolder = "bolder",
  semibold = "semibold",
  medium = "medium",
  normal = "normal",
  light = "light",
  lighter = "lighter"
)

#' Text weight
#'
#' The `text_weight()` function adjusts the font weight of a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param weight A character string specifying the font weight. One of,
#'
#'   `r rd_bullets(names(text_weight_values))`
#'
#'   `"bolder"` and `"lighter"` change the font weight relative to the current
#'   font weight.
#'
#' @returns `r returns_same("x")`
#'
#' @family text utilities
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' p(
#'   .style %>%
#'     text_weight("bold"),
#'   "Bold"
#' )
#'
#' p(
#'   .style %>%
#'     text_weight("light"),
#'   "Light"
#' )
#'
text_weight <- function(x, weight) {
  add_class(
    x,
    compose_class(
      "fw",
      text_weight_values,
      weight
    )
  )
}
