width_size <- c(
  `25` = 25,
  `50` = 50,
  `75` = 75,
  `100` = 100,
  auto = "auto",
  viewport = "viewport"
)

html_class_width <- function(size) {
  if (size == "viewport") {
    size <- 100
    prefix <- "vw"
  } else {
    prefix <- "w"
  }

  html_class(prefix, pick(width_size, size))
}

#' Width
#'
#' The `width() function adjusts a tag element's width. Widths are specified
#' relative the width of a parent element, an element's content, or the size of
#' the browser window.
#'
#' @inheritParams background
#'
#' @param size One of `25`, `50`, `75`, `100`, "auto", or "viewport" specifying
#'   the height of the tag element.
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
#' @export
width <- function(x, size) {
  UseMethod("width", x)
}

#' @export
width.cascadess_style_pronoun <- function(x, size) {
  pronoun_class_add(x, html_class_width(size))
}

#' @export
width.rlang_box_splice <- function(x, size) {
  pronoun_box_class_add(x, html_class_width(size))
}

#' @export
width.shiny.tag <- function(x, size) {
  tag_class_add(x, html_class_width(size))
}

#' @export
width.default <- function(x, size) {

}
