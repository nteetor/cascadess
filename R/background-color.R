background_color_values <- chr(
  primary = "primary",
  secondary = "secondary",
  success = "success",
  danger = "danger",
  warning = "warning",
  info = "info",
  light = "light",
  dark = "dark",
)

background_subtle_values <- chr(
  primary = "primary-subtle",
  secondary = "secondary-subtle",
  success = "success-subtle",
  danger = "danger-subtle",
  warning = "warning-subtle",
  info = "info-subtle",
  light = "light-subtle",
  dark = "dark-subtle"
)

#' Background color
#'
#' The `background_color()` and `background_subtle()` functions adjust the
#' background color of a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param color A character string specifying one of the following colors,
#'
#'   `r rd_bullets(names(background_color_values))`
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     background_color(theme_primary()),
#'   "Primary background"
#' )
#'
#' div(
#'   .style %>%
#'     background_color(theme_danger()),
#'   "Danger background"
#' )
#'
#' div(
#'   .style %>%
#'     background_subtle(theme_warning()) %>%
#'     border_emphasis(theme_warning()) %>%
#'     text_emphasis(theme_warning())
#' )
#'
background_color <- function(x, color) {
  add_class(
    x,
    compose_class(
      "bg",
      background_color_values,
      color
    )
  )
}

#' @rdname background_color
#' @export
#' @examples
#'
#' div(
#'   .style %>%
#'     background_subtle(theme_dark()) %>%
#'     border_emphasis(theme_dark())
#' )
#'
background_subtle <- function(x, color) {
  add_class(
    x,
    compose_class(
      "bg",
      background_subtle_values,
      color
    )
  )
}
