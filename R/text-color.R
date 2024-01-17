text_color_values <- chr(
  primary = "primary",
  secondary = "secondary",
  success = "success",
  danger = "danger",
  warning = "warning",
  info = "info",
  light = "light",
  dark = "dark",
  body = "body",
  black = "black",
  white = "white"
)

#' Emphasize text through color
#'
#' The `text_color()` function adjusts the color of a tag element's text.
#'
#' @param x `r param_subject()`
#'
#' @param color A character string specifying one of the following colors,
#'
#'   `r rd_bullets(names(text_color_values))`
#'
#' @family text utilities
#' @export
#'
#' @examples
#'
#' .style %>%
#'   text_color("primary")
#'
#' .style %>%
#'   text_color("dark") %>%
#'   border_color("dark")
#'
text_color <- function(x, color) {
  add_class(
    x,
    compose_class(
      "text",
      text_color_values,
      color
    )
  )
}
