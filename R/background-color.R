background_color_values <- chr(
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
  white = "white",
  transparent = "transparent"
)

#' Background color
#'
#' The `background_color()` function adjusts the background color of a tag
#' element.
#'
#' @param x `r param_subject()`
#'
#' @param color One of `r rd_list(names(background_color_values))` specifying
#'   the background color of the tag element.
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     background_color("light") %>%
#'     border_color("primary") %>%
#'     text_color("primary"),
#'   "Nunc porta vulputate tellus.",
#'   "Suspendisse potenti."
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
subtle <- function(color) {

}
