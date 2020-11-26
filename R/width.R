width_size_ <- c(
  `25` = 25,
  `50` = 50,
  `75` = 75,
  `100` = 100,
  auto = "auto",
  viewport = "viewport"
)

width_size <- function(size) {
  pick(size, from = width_size_)
}

width_min_ <- c(
  `25` = 25,
  `50` = 50,
  `75` = 75,
  `100` = 100,
  viewport = "viewport"
)

width_min <- function(min) {
  pick(min, from = width_min_)
}

width_max_ <- c(
  `25` = 25,
  `50` = 50,
  `75` = 75,
  `100` = 100,
  viewport = "viewport"
)

width_max <- function(max) {
  pick(max, from = width_max_)
}

#' Width
#'
#' The `width() function adjusts a tag element's width. Widths are specified
#' relative the width of a parent element, an element's content, or the size of
#' the browser window.
#'
#' @inheritParams background
#'
#' @param size One of `r rd_list(names(width_size_))` specifying the width of
#'   the tag element.
#'
#'   If `25`, `50`, `75`, `100`, the element's width is a percentage of the
#'   width of the parent element must also be specified.
#'
#'   These percentages do not account for margins or padding and may cause an
#'   element to extend beyond its parent element.
#'
#'   If `"auto"`, the element's width is determined by the browser.  The
#'   browser will take into account the height, padding, margins, and border of
#'   the tag element's parent to keep the element from extending beyond its
#'   parent.
#'
#'   If `"viewport"`, the element's height is determined by the size of the
#'   browser window.
#'
#' @param min One of `r rd_list(names(width_min_))` specifying the minimum width
#'   of the tag element, defaults to `NULL`, in which case the argument is
#'   ignored.
#'
#'   See `size` for details.
#'
#' @param max One of `r rd_list(names(width_max_))` specifying the maximum width
#'   of the tag element, defaults to `NULL`, in which case the argument is
#'   ignored.
#'
#'   See `size` for details.
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     width(c(xs = 100, md = 50)) %>%
#'     margin(c(xs = 2, md = "auto")),
#'   "In id erat non orci commodo lobortis.",
#'   "Suspendisse potenti.",
#'   "Nam euismod tellus id erat."
#' )
#'
width <- function(x, size, min = NULL, max = NULL) {
  assert_subject(x)

  classes <- prefix(
    width = "w",
    width_size(size),
    width_min(min),
    width_max(max)
  )

  add_class(x, classes)
}
