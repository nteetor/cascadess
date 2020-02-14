#' Fixed position elements
#'
#' The `fixed()` function applies Bootstrap classes to fix elements to the top
#' or bottom of a page.
#'
#' @param .tag A tag element or [.style] pronoun.
#'
#' @param position One of `"top"` or `"bottom"` specifying the fixed behavior of
#'   an element.
#'
#' @export
fixed <- function(x, position) {
  UseMethod("affix", x)
}

#' @export
fixed.cascadess_style_pronoun <- function(x, position) {
  pronoun_class_add(x, fixed_position(position))
}

#' @export
fixed.cascadess_pronoun_box <- function(x, position) {
  fixed(unbox(x), position)
}

#' @export
fixed.shiny.tag <- function(x, position) {
  tag_class_add(x, fixed_position(position))
}

#' @export
fixed.default <- function(x, position) {
  ## tag_class_add(x, affix_position(position))
}

fixed_position <- function(position) {
  if (position == "sticky") {
    "sticky-top"
  } else {
    sprintf("fixed-%s", position)
  }
}
