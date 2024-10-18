#' Centering positioned elements
#'
#' Use `position_centered()` to position an element by its center instead of its edge.
#'
#' @param x `r param_subject()`
#'
#' @returns `r returns_same("x")`
#'
#' @family position utilities
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     position("absolute") %>%
#'     position_right(0) %>%
#'     position_centered()
#' )
#'
#' tags$button(
#'   type = "button",
#'   .style %>%
#'     position("relative") %>%
#'     background_color(theme_primary()),
#'   "Mail",
#'   span(
#'     .style %>%
#'       position("absolute") %>%
#'       position_top(0) %>%
#'       position_right(0) %>%
#'       position_centered() %>%
#'       rounded_all("pill") %>%
#'       background_color(theme_secondary()),
#'     "+99"
#'   )
#' )
#'
position_centered <- function(x) {
  add_class(
    x,
    "translate-middle"
  )
}
