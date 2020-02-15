#' Display
#'
#' The `display()` function adjusts how a tag element is rendered. All arguments
#' are responsive allowing you to hide elements on small screens or convert
#' elements from inline to block on large screens.
#'
#' @inheritParams background
#'
#' @param type A [responsive] argument.
#'
#'   One of `"inline"`, `"inline-block"`, `"block"`, `"table"`, `"table-row"`,
#'   `"table-cell"`, `"flex"`, `"inline-flex"`, or `"none"`.
#'
#' @export
display <- function(x, type) {
  UseMethod("display", x)
}

#' @export
display.cascadess_style_pronoun <- function(x, type) {
  pronoun_class_add(x, dash("d", responsive(type)))
}

#' @export
display.cascadess_pronoun_box <- function(x, type) {
  display(unbox(x), type)
}

#' @export
display.shiny.tag <- function(x, type) {
  tag_class_add(x, dash("d", responsive(type)))
}

#' @export
display.default <- function(x, type) {

}
