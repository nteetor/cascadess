fixed_positions <- c(
  top = "top",
  bottom = "bottom"
)

html_class_fixed <- function(position) {
  html_class("fixed", pick(fixed_positions, position))
}

#' Fixed position elements
#'
#' The `fixed()` function affixes an element to the top or bottom of the
#' page. Because of their nature fixed elements may cover up other elements on
#' the page. Use [padding()] or [margin()] to adjust any covered elements.
#'
#' @inheritParams background
#'
#' @param position One of `"top"` or `"bottom"` specifying the where to fix the
#'   element on the page.
#'
#' @export
fixed <- function(x, position) {
  UseMethod("affix", x)
}

#' @export
fixed.cascadess_style_pronoun <- function(x, position) {
  pronoun_class_add(x, html_class_fixed(position))
}

#' @export
fixed.rlang_box_splice <- function(x, position) {
  pronoun_box_class_add(x, html_class_fixed(position))
}

#' @export
fixed.shiny.tag <- function(x, position) {
  tag_class_add(x, html_class_fixed(position))
}

#' @export
fixed.default <- function(x, position) {

}
