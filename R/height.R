height_size <- c(
  `25` = 25,
  `50` = 50,
  `75` = 75,
  `100` = 100,
  auto = "auto",
  viewport = "viewport"
)

html_class_height <- function(size) {
  if (size == "viewport") {
    size <- 100
    prefix <- "vh"
  } else {
    prefix <- "h"
  }

  html_class(prefix, pick(height_size, size))
}

#' Height
#'
#' The `height()` function adjusts a tag element's height. Heights are specified
#' relative the height of a parent element, an element's content, or the size of
#' the browser window.
#'
#' @inheritParams background
#'
#' @param size One of `25`, `50`, `75`, `100`, "auto", or "viewport" specifying
#'   the height of the tag element.
#'
#'   If `25`, `50`, `75`, or `100`, the element's height is a percentage of the
#'   height of the parent element must also be specified.
#'
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
#' @export
height <- function(x, size) {
  UseMethod("height", x)
}

#' @export
height.cascadess_style_pronoun <- function(x, size) {
  pronoun_class_add(x, html_class_height(size))
}

#' @export
height.cascadess_pronoun_box <- function(x, size) {
  pronoun_box_class_add(x, html_class_height(size))
}

#' @export
height.shiny.tag <- function(x, size) {
  tag_class_add(x, html_class_height(size))
}

#' @export
height.default <- function(x, size) {

}
