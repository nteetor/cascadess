align_vertical <- c(
  baseline = "baseline",
  top = "top",
  middle = "middle",
  bottom = "bottom",
  `text-bottom` = "text-bottom",
  `text-top` = "text-top"
)

html_class_align <- function(vertical) {
  html_class("align", pick(align_vertical, vertical))
}

#' Inline alignment
#'
#' @description
#'
#' The `align()` function adjusts the inline alignment of an element.  This
#' applies only to inline elements and may be used to adjust the vertical
#' alignment of an image in a line of text or the contents of a table cell.
#'
#' For broader alignment purposes use flex box, see [flexbox()].
#'
#' @param x A tag element or [.style] pronoun.
#'
#' @param vertical One of `r rd_chr_lst(names(align_vertical))`.
#'
#' @export
align <- function(x, vertical) {
  UseMethod("align")
}

#' @export
align.cascadess_style_pronoun <- function(x, vertical) {
  pronoun_class_add(x, html_class_align(vertical))
}

#' @export
align.rlang_box_splice <- function(x, vertical) {
  pronoun_box_class_add(x, html_class_align(vertical))
}

#' @export
align.shiny.tag <- function(x, vertical) {
  tag_class_add(x, html_class_align(vertical))
}

#' @export
align.default <- function(x, vertical) {

}
