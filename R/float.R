float_side_ <- c(
  left = "left",
  l = "left",
  right = "right",
  r = "right",
  none = "none"
)

float_side <- function(side) {
  responsive(pick(side, from = float_side_))
}

#' Floats
#'
#' The `float()` function places an element to the left or right side of its
#' parent element. Other text and inline elements wrap around floated elements.
#' Note, `float()` has no effect on flex items.
#'
#' @inheritParams background
#'
#' @param side A [responsive] argument.
#'
#'   One of `r rd_list(float_side_)` specifying the side to float the element.
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   div(
#'     .style %>%
#'       border("red") %>%
#'       float("left"),
#'     "Warning"
#'   ),
#'   div(
#'     "Nam a sapien.",
#'     "Phasellus neque orci, porta a, aliquet quis, semper a, massa.",
#'     "Phasellus lacus."
#'   )
#' )
#'
float <- function(x, side) {
  assert_subject(x)

  cls <- prefix(
    "float",
    float_side(side)
  )

  add_class(x, cls)
}
