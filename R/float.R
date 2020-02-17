html_class_float <- function(side) {
  side <- html_class("float", responsive(side))

  side
}

#' Floats
#'
#' The `float()` function places an element to the left or right side of its
#' parent element. Other text and inline elements wrap around floated elements.
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
  pronoun_class_add(x, html_class_float(side))
}

#' @export
float.rlang_box_splice <- function(x, side) {
  pronoun_box_class_add(x, html_class_float(side))
}

#' @export
float.shiny.tag <- function(x, side) {
  tag_class_add(x, html_class_float(side))
}

#' @export
float.default <- function(x, side) {

}
