focus_color_values <- chr(
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

#' Focus ring color
#'
#' The `focus_color()` function adjusts the focus shadow color of a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param color A character string specifying a color. One of,
#'
#'   `r rd_bullets(names(focus_color_values))`
#'
#' @returns `r returns_same("x")`
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' tags$button(
#'   .style %>%
#'     background_color(theme_primary()) %>%
#'     focus_color(theme_primary()),
#'   "Primary themed button with primary themed focus ring"
#' )
#'
focus_color <- function(x, color) {
  add_class(
    x,
    "focus-ring",
    compose_class(
      "focus-ring",
      focus_color_values,
      color
    )
  )
}
