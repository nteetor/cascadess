overflow_scroll <- c(
  auto = "auto",
  hidden = "hidden"
)

html_class_overflow <- function(scroll) {
  if (is_true(scroll)) {
    scroll <- "auto"
  } else if (is_false(scroll)) {
    scroll <- "hidden"
  }

  html_class("overflow", pick(overflow_scroll, scroll))
}

#' Overflow
#'
#' The `overflow()` function adjust how an element's content scrolls. Scrolling
#' an element's contents may be helpful to prevent child elements from extending
#' the height or width of the element. The height of the element must be set.
#'
#' @inheritParams background
#'
#' @param scroll One of `"auto"` or `"hidden"` specifying if the content of the
#'   element scrolls. `TRUE` and `FALSE` may be used in place of `"auto"` or
#'   `"hidden"`, respectively.
#'
#' @export
overflow <- function(x, scroll = "auto") {
  UseMethod("overflow", x)
}

#' @export
overflow.cascadess_style_pronoun <- function(x, scroll) {
  pronoun_class_add(x, html_class_overflow(scroll))
}

#' @export
overflow.rlang_box_splice <- function(x, scroll) {
  pronoun_box_class_add(x, html_class_overflow(scroll))
}

#' @export
overflow.shiny.tag <- function(x, scroll) {
  tag_class_add(x, html_class_overflow(scroll))
}

#' @export
overflow.default <- function(x, scroll) {

}
