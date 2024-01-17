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
#'   Use [breakpoints] to specify responsive values.
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
#'     "Danger!"
#'   ),
#'   div(
#'     "Nam a sapien.",
#'     "Phasellus neque orci, porta a, aliquet quis, semper a, massa.",
#'     "Phasellus lacus."
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
