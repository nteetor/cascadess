align_values <- c(
  "baseline",
  "top",
  "middle",
  "bottom",
  "text-bottom",
  "text-top"
)

#' Inline alignment
#'
#' @description
#'
#' The `align()` function adjusts the CSS `vertical-align` property of an
#' element. This property applies to **inline** elements and may be used to
#' adjust the alignment of an image in a line of text or the contents of a table
#' cell.
#'
#' For broader alignment purposes use flex box, see `display()` and `flex()`.
#'
#' @param x A tag element or [.style] pronoun.
#'
#' @param vertical One of
#'   \Sexpr[results=rd,stage=render]{rd_chr_lst(align_values)}.
#'
#' @export
align <- function(x, vertical) {
  UseMethod("align")
}

#' @export
align.cascadess_style_pronoun <- function(x, vertical) {
  pronoun_class_add(x, align_vertical(vertical))
}

#' @export
align.cascadess_pronoun_box <- function(x, vertical) {
  align(unbox(x), vertical)
}

#' @export
align.shiny.tag <- function(x, vertical) {

}

#' @export
align.default <- function(x, vertical) {

}

align_vertical <- function(x) {

}
