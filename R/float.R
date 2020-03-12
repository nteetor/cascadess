float_side_ <- c(
  left = "left",
  l = "left",
  right = "right",
  r = "right"
)

float_side <- function(side) {
  responsive(pick(side, from = float_side_))
}

#' Floats
#'
#' The `float()` function places an element to the left or right side of its
#' parent element. Other text and inline elements wrap around floated elements.
#'
#' @inheritParams background
#'
#' @param side A [responsive] argument.
#'
#'   One of `"left"` or `"right"` specifying the side to float the element.
#'
#' @export
float <- function(x, side) {
  assert_subject(x)

  cls <- prefix(
    "float",
    float_side(side)
  )

  add_class(x, cls)
}
