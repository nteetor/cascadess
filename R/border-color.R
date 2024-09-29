border_color_values <- chr(
  primary = "primary",
  secondary = "secondary",
  success = "success",
  danger = "danger",
  warning = "warning",
  info = "info",
  light = "light",
  dark = "dark",
)

border_emphasis_values <- chr(
  primary = "primary-emphasis",
  secondary = "secondary-emphasis",
  success = "success-emphasis",
  danger = "danger-emphasis",
  warning = "warning-emphasis",
  info = "info-emphasis",
  light = "light-emphasis",
  dark = "dark-emphasis"
)

#' Border colors
#'
#' The `border_color()` and `border_emphasis()` functions adjust the border
#' color of a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param color A character string specifying a color. One of,
#'
#'   `r rd_bullets(names(border_color_values))`
#'
#' @returns `r returns_same("x")`
#'
#' @family border utilities
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     border_color(theme_primary())
#' )
#'
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

#' @rdname border_color
#' @export
#' @examples
#'
#' div(
#'   .style %>%
#'     background_subtle(theme_light()) %>%
#'     text_emphasis(theme_light()) %>%
#'     border_emphasis(theme_light())
#' )
#'
border_emphasis <- function(x, color) {
  add_class(
    x,
    compose_class(
      "border",
      border_emphasis_values,
      color
    )
  )
}
