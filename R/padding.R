padding_all_ <- list(
  `0` = 0,
  `1` = 1,
  `2` = 2,
  `3` = 3,
  `4` = 4,
  `5` = 5,
  auto = "auto"
)

padding_all <- function(all) {
  compose("all", responsive(pick(all, from = padding_all_)))
}

padding_top <- function(top) {
  compose("top", responsive(pick(top, from = padding_all_)))
}

padding_right <- function(right) {
  compose("right", responsive(pick(right, from = padding_all_)))
}

padding_bottom <- function(bottom) {
  compose("bottom", responsive(pick(bottom, from = padding_all_)))
}

padding_left <- function(left) {
  compose("left", responsive(pick(left, from = padding_all_)))
}

#' Padding
#'
#' The `padding()` function adjusts the inner spacing of a tag element. The
#' padding of a tag element is the space between the tag element's border and
#' its content or child elements.
#'
#' @inheritParams background
#'
#' @param all A [responsive] argument.
#'
#'   One of `1:5` specifying a padding for all sides of the tag element,
#'   defaults to `NULL`, in which case the argument is ignored. 0 removes all
#'   inner space and 5 adds the most space.
#'
#' @param top,right,bottom,left A [responsive] argument.
#'
#'   One of `1:5` specifying a padding for the element's respective side,
#'   defaults to `NULL`, in which case the argument is ignored. 0 removes all
#'   inner space and 5 adds the most space.
#'
#' @includeRmd man/roxygen/padding.Rmd
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     margin(2) %>%
#'     border("green") %>%
#'     padding(2) %>%
#'     background("red"),
#'   "Donec vitae dolor."
#' )
#'
padding <- function(x, all = NULL, top = NULL, right = NULL, bottom = NULL,
                    left = NULL) {
  assert_subject(x)

  cls <- prefix(
    "padding",
    padding_all(all),
    padding_top(top),
    padding_right(right),
    padding_bottom(bottom),
    padding_left(left)
  )

  add_class(x, cls)
}
