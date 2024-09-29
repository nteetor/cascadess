 text_alignment_values <- chr(
  left = "start",
  right = "end",
  center = "center"
)

#' Align text
#'
#' The `text_alignment()` function adjusts how the text within a tag element is
#' aligned.
#'
#' @param x `r param_subject()`
#'
#' @param ... A character string specifying an alignment. One of,
#'
#'   `r rd_list(names(text_alignment_values))`.
#'
#'    Use name-value pairs to specify [breakpoints].
#'
#' @returns `r returns_same("x")`
#'
#' @family text utilities
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     text_alignment("left")
#' )
#'
#' div(
#'   .style %>%
#'     text_alignment("center")
#' )
#'
text_alignment <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "text",
      text_alignment_values,
      ...
    )
  )
}
