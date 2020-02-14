#' Overflow
#'
#' The `overflow()` function specifies an element's content should scroll
#' instead of extending the height or width of the element. The height of the
#' element must be set.
#'
#' @inheritParams background
#'
#' @param scroll One of `"auto"` or `"hidden"` specifying if the content of the
#'   element scrolls, defaults to `"auto"`. `TRUE` and `FALSE` may be used in
#'   place of `"auto"` or `"hidden"`, respectively.
#'
#' @export
overflow <- function(x, scroll = "auto") {
  UseMethod("overflow", x)
}

#' @export
overflow.cascadess_style_pronoun <- function(x, scroll = "auto") {
  pronoun_class_add(x, dash("overflow", scroll))
}

#' @export
scroll.cascadess_pronoun_box <- function(x, scroll = "auto") {
  overflow(unbox(x), scroll)
}

#' @export
scroll.shiny.tag <- function(x, scroll = "auto") {
  tag_class_add(x, dash("overflow", scroll))
}

#' @export
scroll.default <- function(x, scroll = "auto") {

}
