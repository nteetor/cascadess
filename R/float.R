float_values <- chr(
  left = "left",
  l = "left",
  right = "right",
  r = "right",
  none = "none"
)

#' Floats
#'
#' The `float()` function places an element to the left or right side of its
#' parent element. Other text and inline elements wrap around floated elements.
#' Note, `float()` has no effect on flex items.
#'
#' @param x `r param_subject()`
#'
#' @param ... One of the following,
#'
#'   `r rd_bullets(names(float_values))`
#'
#'   Name-value pairs to specify [breakpoints].
#'
#' @returns `r returns_same("x")`
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   div(
#'     .style %>%
#'       border_color("danger") %>%
#'       float("left"),
#'     "6.5/10"
#'   ),
#'   div(
#'     "Considering the need for opening sentences.",
#'     "We may want to reconsider the necessity of second or third sentences.",
#'     "The whole problem may be avoided by never creating a problem."
#'   )
#' )
#'
float <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "float",
      float_values,
      ...
    )
  )
}
