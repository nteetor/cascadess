vertical_alignment_values <- chr(
  "baseline" = "baseline",
  "top" = "top",
  "middle" = "middle",
  "bottom" = "bottom",
  "text-top" = "text-top",
  "text-bottom" = "text-bottom"
)

#' Vertical alignment
#'
#' The `vertical_alignment()` function adjusts the inline position of inline,
#' inline-block, and table cell elements. The utility may be used to adjust the
#' vertical alignment of an image in a line of text or the contents of a table
#' cell.
#'
#' @param x `r param_subject()`
#'
#' @param alignment A character string specifying an alignment. One of,
#'
#'   `r rd_bullets(names(vertical_alignment_values))`
#'
#' @returns `r returns_same("x")`
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   "Text",
#'   span("Above") %>%
#'     vertical_alignment("top"),
#'   span("Below") %>%
#'     vertical_alignment("bottom")
#' )
#'
vertical_alignment <- function(x, alignment) {
  add_class(
    x,
    compose_class(
      "align",
      vertical_alignment_values,
      alignment
    )
  )
}
