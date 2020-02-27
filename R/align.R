align_vertical_ <- c(
  baseline = "baseline",
  top = "top",
  middle = "middle",
  bottom = "bottom",
  `text-bottom` = "text-bottom",
  `text-top` = "text-top"
)

align_vertical <- function(vertical) {
  pick(vertical, from = align_vertical_)
}

#' Inline alignment
#'
#' @description
#'
#' The `align()` function adjusts the inline alignment of an element.  This
#' applies only to inline elements and may be used to adjust the vertical
#' alignment of an image in a line of text or the contents of a table cell.
#'
#' For broader alignment purposes use flex box, see [flex()].
#'
#' @param x A tag element or [.style] pronoun.
#'
#' @param vertical One of `r rd_list(names(align_vertical_))`.
#'
#' @export
align <- function(x, vertical) {
  assert_subject(x)

  cls <- prefix(
    "align",
    align_vertical(vertical)
  )

  add_class(x, cls)
}
