#' Width
#'
#' Utility function to change a tag element's width. Widths are specified
#' relative the width of a parent element, an element's content, or the size of
#' the browser window.
#'
#' @inheritParams affix
#'
#' @param size A character string or number specifying the width of the tag
#'   element. Possible values:
#'
#'   One of 25, 50, 75, or 100 specifying the element's width is a percentage of
#'   its parent's width. The width of the parent element must be
#'   specified. Percentages do not account for margins or padding and may cause
#'   an element to extend beyond its parent element.
#'
#'   `"auto"`, in which case the element's width is determined by the browser.
#'   The browser will take into account the width, padding, margins, and border
#'   of the tag element's parent to keep the element from extending beyond its
#'   parent.
#'
#'   `"viewport"`, in which case the element's width is determined by the size
#'   of the browser window.
#'
#' @family design utilities
#' @export
width <- function(x, size) {
  UseMethod("width", x)
}

#' @export
width.cascadess_style_pronoun <- function(x, size) {
  NextMethod("width", x)
}

#' @export
width.rlang_box_splice <- function(x, size) {
  NextMethod("width", unbox(x))
}

#' @export
width.shiny.tag <- function(x, size) {
  tag_class_add(x, width_size(size))
}

#' @export
width.default <- function(x, size) {
  tag_class_add(x, width_size(size))
}

width_size <- function(size) {
  if (size == "vieport") {
    "vw-100"
  } else {
    sprintf("w-%s", size)
  }
}
