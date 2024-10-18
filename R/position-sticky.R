position_sticky_values <- chr(
  bottom = "bottom",
  top = "top"
)

#' Sticky positioning
#'
#' Use `position_sticky()` to position an element at the top or bottom of the
#' viewport after scrolling past the element.
#'
#' @param x `r param_subject()`
#'
#' @param ... A character string specifying an edge. One of,
#'
#'   `r rd_bullets(names(position_sticky_values))`
#'
#'   Use name-value pairs to specify [breakpoints].
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
#'     position_sticky(sm = "top"),
#'   "Sticks to the top of the viewport on small screens"
#' )
#'
position_sticky <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "sticky",
      position_sticky_values,
      ...
    )
  )
}
