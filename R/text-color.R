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

text_emphasis_values <- chr(
  primary = "primary-emphasis",
  secondary = "secondary-emphasis",
  success = "success-emphasis",
  danger = "danger-emphasis",
  warning = "warning-emphasis",
  info = "info-emphasis",
  light = "light-emphasis",
  dark = "dark-emphasis",
  body = "body-emphasis"
)

#' Text color
#'
#' The `text_color()` function adjusts the color of text in a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param color A character string specifying a color. One of,
#'
#'   `r rd_bullets(names(text_color_values))`
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
#' div(
#'   .style %>%
#'     text_color(theme_primary())
#' )
#'
#' div(
#'   .style %>%
#'     text_color(theme_dark()) %>%
#'     border_color(theme_dark())
#' )
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

#' @rdname text_color
#' @export
text_emphasis <- function(x, color) {
  add_class(
    x,
    compose_class(
      "text",
      text_emphasis_values,
      color
    )
  )
}
