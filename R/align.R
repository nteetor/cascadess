align_vertical_ <- c(
  baseline = "baseline",
  top = "top",
  middle = "middle",
  bottom = "bottom",
  `text-top` = "text-top",
  `text-bottom` = "text-bottom"
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
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   "Text",
#'   span("Above") %>% align("top"),
#'   span("Below") %>% align("bottom")
#' )
#'
align <- function(x, vertical) {
  assert_subject(x)

  class <- prefix(
    "align",
    align_vertical(vertical)
  )

  add_class(x, class)
}
