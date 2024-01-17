 text_alignment_values <- chr(
  left = "start",
  right = "end",
  center = "center"
)

#' Align text based on browser size
#'
#' `text_alignment()` specifies how the text within a tag element is
#' aligned. Text may be aligned to the left, right, or center.
#'
#' @param x `r param_subject()`
#'
#' @param ... Name-value pairs. Names are [breakpoints]. Values are one or more
#'   of `r rd_list(names(text_alignment_values))`.
#'
#' @family text utilities
#' @export
#'
#' @examples
#'
#' .style %>%
#'   text_alignment("left")
#'
#' .style %>%
#'  text_alignment("center")
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
