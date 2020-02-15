#' Floats
#'
#' The `float()` function places an element to the left or right side of its
#' parent element. Text and inline elements will wrap around floated elements.
#'
#' @inheritParams background
#'
#' @param side A [responsive] argument.
#'
#'   One of `"left"` or `"right"` specifying the side to float the element.
#'
# @includeRmd man/roxygen/float.Rmd
#'
#' @export
float <- function(x, side) {
  UseMethod("float", x)
}

#' @export
float.cascadess_style_pronoun <- function(x, side) {
  pronoun_class_add(x, dash("float", responsive(side)))
}

#' @export
float.cascadess_pronoun_box <- function(x, side) {
  float(unbox(x), side)
}

#' @export
float.shiny.tag <- function(x, side) {
  tag_class_add(x, dash("float", responsive(side)))
}

#' @export
float.default <- function(x, side) {

}
