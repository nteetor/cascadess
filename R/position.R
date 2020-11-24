position_value_ <- c(
  static = "static",
  relative = "relative",
  absolute = "absolute",
  fixed = "fixed",
  sticky = "sticky"
)

position_value <- function(value) {
  pick(value, from = position_value_)
}

position_side_ <- c(
  `0` = 0,
  `50` = 50,
  `100` = 100
)

position_top <- function(top) {
  compose("t", pick(top, from = position_side_))
}

position_right <- function(right) {
  compose("r", pick(right, from = position_side_))
}

position_bottom <- function(bottom) {
  compose("b", pick(bottom, from = position_side_))
}

position_left <- function(left) {
  compose("l", pick(left, from = position_side_))
}

position_by_ <- c(
  edge = "",
  center = "by-center"
)

position_by <- function(by) {
  x <- pick(by, from = position_by_)

  if (by == "edge") {
    NULL
  } else if (by == "center") {
    x
  }
}

#' Position an element
#'
#' The `position()` adjusts how an element is positioned. Positioning could be
#' absolute or relative. Furthermore, you can arrange an element within its parent
#' element using `top`, `right`, `bottom`, or `left`.
#'
#' @inheritParams background
#'
#' @param value One of `r rd_list(position_value_)` specifying how the element is
#'   positioned.
#'
#' @param top,right,bottom,left One of `r rd_list(position_side_)` specifying
#'   where the element is positioned. By default these values position an
#'   element using the element's edge, see argument `by`. Defaults to `NULL`, in
#'   which case the argument is ignored.
#'
#' @param by One of `r rd_list(position_by_)` specifying the element's
#'   positioning anchor, defaults to `"edge"`.
#'
#' @export
#' @examples
#'
#' div(
#'   div(.style %>% position("absolute", t = 0, r = 0))
#' )
#'
position <- function(x, value, top = NULL, right = NULL, bottom = NULL,
                     left = NULL, by = "edge") {
  assert_subject(x)

  classes <- prefix(
    "position",
    position_value(value),
    position_top(top),
    position_right(right),
    position_bottom(bottom),
    position_left(left),
    position_by(by)
  )

  add_class(x, classes)
}
