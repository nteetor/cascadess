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

border_subtle_values <- chr(
  primary = "primary-subtle",
  secondary = "secondary-subtle",
  success = "success-subtle",
  danger = "danger-subtle",
  warning = "warning-subtle",
  info = "info-subtle",
  light = "light-subtle",
  dark = "dark-subtle"
)

#' Change border color
#'
#' The `border_color()` and `border_subtle()` functions adjust the border
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
#' div(
#'   .style %>%
#'     background_subtle(theme_danger()) %>%
#'     border_subtle(theme_danger()) %>%
#'     text_emphasis(theme_danger()),
#'   "Danger theme with some emphasis"
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
#'     border_subtle(theme_light())
#' )
#'
border_subtle <- function(x, color) {
  add_class(
    x,
    compose_class(
      "border",
      border_subtle_values,
      color
    )
  )
}
