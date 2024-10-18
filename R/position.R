position_method_values <- chr(
  static = "static",
  relative = "relative",
  absolute = "absolute",
  fixed = "fixed",
  sticky = "sticky"
)

#' Positioning elements
#'
#' The `position_*()` functions adjust set the position of an element.
#'
#' @param x `r param_subject()`
#'
#' @param method A character string specifying the positioning method. One of,
#'
#'   `r rd_bullets(names(position_method_values))`
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
#'     position_top(50)
#' )
#'
position <- function(x, method) {
  add_class(
    x,
    compose_class(
      "position",
      position_method_values,
      method
    )
  )
}
