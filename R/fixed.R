#' Fixed position elements
#'
#' The `fixed()` function permanently fixes an element at the top or bottom of
#' the page. Fixed elements may cover up other elements on the page. Use
#' [padding()] or [margin()] to adjust any covered elements.
#'
#' @inheritParams background
#'
#' @param position One of `"top"` or `"bottom"` specifying the fixed behaviour
#'   of an element.
#'
#' @export
fixed <- function(x, position) {
  UseMethod("affix", x)
}

#' @export
fixed.cascadess_style_pronoun <- function(x, position) {
  pronoun_class_add(x, dash("fixed", position))
}

#' @export
fixed.cascadess_pronoun_box <- function(x, position) {
  fixed(unbox(x), position)
}

#' @export
fixed.shiny.tag <- function(x, position) {
  tag_class_add(x, dash("fixed", position))
}

#' @export
fixed.default <- function(x, position) {

}
