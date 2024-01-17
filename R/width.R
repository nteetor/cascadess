width_size_values <- chr(
  "25" = "25",
  "50" = "50",
  "75" = "75",
  "100" = "100",
  "auto" = "auto",
  "viewport" = "viewport"
)

#' Width
#'
#' The `width()` function adjusts a tag element's width. Widths are specified
#' relative the width of a parent element, an element's content, or the size of
#' the browser window.
#'
#' @param x `r param_subject()`
#'
#' @param size One of `r rd_list(names(width_size_values))` specifying the width
#'   of the tag element.
#'
#'   If `25`, `50`, `75`, `100`, the element's width is a percentage of the
#'   width of the parent element must also be specified.
#'
#'   These percentages do not account for margins or padding and may cause an
#'   element to extend beyond its parent element.
#'
#'   If `"auto"`, the element's width is determined by the browser.  The browser
#'   will take into account the height, padding, margins, and border of the tag
#'   element's parent to keep the element from extending beyond its parent.
#'
#'   If `"viewport"`, the element's height is determined by the size of the
#'   browser window.
#'
#' @export
#'
#' @examples
#'
#' .style %>%
#'   width(50)
#'
#' .style %>%
#'   width(100)
#'
#' .style %>%
#'   width(25) %>%
#'   text_wrap(TRUE)
#'
width <- function(x, size) {
  add_class(
    x,
    compose_class(
      "w",
      width_size_values,
      size
    )
  )
}
