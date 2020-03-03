margin_all_ <- list(
  `-5` = "n5",
  `-4` = "n4",
  `-3` = "n3",
  `-2` = "n2",
  `-1` = "n1",
  `0` = 0,
  `1` = 1,
  `2` = 2,
  `3` = 3,
  `4` = 4,
  `5` = 5,
  auto = "auto"
)

margin_all <- function(all) {
  compose("all", responsive(pick(all, from = margin_all_)))
}

margin_top <- function(top) {
  compose("top", responsive(pick(top, from = margin_all_)))
}

margin_right <- function(right) {
  compose("right", responsive(pick(right, from = margin_all_)))
}

margin_bottom <- function(bottom) {
  compose("bottom", responsive(pick(bottom, from = margin_all_)))
}

margin_left <- function(left) {
  compose("left", responsive(pick(left, from = margin_all_)))
}

margin_horizontal <- function(horizontal) {
  compose("h", responsive(pick(horizontal, from = margin_all_)))
}

margin_vertical <- function(vertical) {
  compose("v", responsive(pick(vertical, from = margin_all_)))
}

#' Margins
#'
#' The `margin()` function adjusts the outer spacing of a tag element. The
#' margin of a tag element is the space outside and around the tag element, its
#' border, and its content.
#'
#' @inheritParams background
#'
#' @param all A [responsive] argument.
#'
#'   One of `-5:5` or `"auto"` specifying a margin for all sides of the tag
#'   element, defaults to `NULL`, in which case the argument is ignored. 0
#'   removes all outer space, 5 adds the most space, and negative values will
#'   consume space and pull the element in that direction.
#'
#' @param top,right,bottom,left A [responsive] argument.
#'
#'   One of `-5:5` or `"auto"` specifying a margin for the respective side of
#'   the tag element. 0 removes all outer space, 5 adds the most space, and
#'   negative values will consume space and pull the element in that direction.
#'
# @includeRmd man/roxygen/margin.Rmd
#'
#' @export
margin <- function(x, all = NULL, top = NULL, right = NULL, bottom = NULL,
                   left = NULL, horizontal = NULL, vertical = NULL) {
  assert_subject(x)

  cls <- prefix(
    "margin",
    margin_all(all),
    margin_top(top),
    margin_right(right),
    margin_bottom(bottom),
    margin_left(left),
    margin_horizontal(horizontal),
    margin_vertical(vertical)
  )

  add_class(x, cls)
}
