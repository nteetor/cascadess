border_color_values <- chr(
  primary = "primary",
  secondary = "secondary",
  success = "success",
  danger = "danger",
  warning = "warning",
  info = "info",
  light = "light",
  dark = "dark",
  black = "black",
  white = "white"
)

#' Border colors
#'
#' Border color description.
#'
#' @param x `r param_subject()`
#'
#' @param color A character string specifying one of the following colors,
#'
#'   `r rd_bullets(names(border_color_values))`
#'
#' @family border
#' @export
border_color <- function(x, color) {
  add_class(
    x,
    compose_class(
      "border",
      border_color_values,
      color
    )
  )
}
