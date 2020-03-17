height_size_ <- list(
  `25` = 25,
  `50` = 50,
  `75` = 75,
  `100` = 100,
  auto = "auto",
  viewport = "viewport"
)

height_size <- function(size) {
  pick(size, from = height_size_)
}

height_min_ <- list(
  `25` = 25,
  `50` = 50,
  `75` = 75,
  `100` = 100,
  viewport = "viewport"
)

height_min <- function(min) {
  compose("min", pick(min, from = height_min_))
}

height_max_ <- list(
  `25` = 25,
  `50` = 50,
  `75` = 75,
  `100` = 100,
  viewport = "viewport"
)

height_max <- function(max) {
  compose("max", pick(max, from = height_max_))
}

#' Height
#'
#' The `height()` function adjusts a tag element's height. Heights are specified
#' relative the height of a parent element, an element's content, or the size of
#' the browser window.
#'
#' @inheritParams background
#'
#' @param size One of `r rd_list(names(height_size_))` specifying the height of
#'   the tag element.
#'
#'   If `25`, `50`, `75`, or `100`, the element's height is a percentage of the
#'   height of the parent element must also be specified.
#'
#'   These percentages do not account for margins or padding and may cause an
#'   element to extend beyond its parent element.
#'
#'   If `"auto"`, the element's height is determined by the browser.  The
#'   browser will take into account the height, padding, margins, and border of
#'   the tag element's parent to keep the element from extending beyond its
#'   parent.
#'
#'   If `"viewport"`, the element's height is determined by the size of the
#'   browser window.
#'
#' @param min One of `r rd_list(names(height_min_))` specifying the minimum
#'   height of the tag element.
#'
#'   See `size` for details.
#'
#' @param max One of `r rd_list(names(height_max_))` specifying the maximum
#'   height of the tag element.
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
#'      height("auto", max = "viewport") %>%
#'      overflow("auto"),
#'   "Vivamus id enim.",
#'   "Nunc rutrum turpis sed pede.",
#'   "Nunc aliquet, augue nec adipiscing interdum, ",
#'   "lacus tellus malesuada massa, quis varius mi purus non odio."
#' )
#'
height <- function(x, size, min = NULL, max = NULL) {
  assert_subject(x)

  cls <- prefix(
    "height",
    height_size(size),
    height_min(min),
    height_max(max)
  )

  add_class(x, cls)
}
