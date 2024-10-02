item_align_values <- chr(
  start = "start",
  end = "end",
  center = "center",
  baseline = "baseline",
  stretch = "stretch"
)

#' Flex align self
#'
#' The `item_align()` function adjusts
#'
#' @param x `r param_subject()`
#'
#' @param ... A character string specifying an alignment. One of,
#'
#'   `r rd_bullets(names(item_align_values))`
#'
#'   Use name-value pairs to specify [breakpoints].
#'
#' @returns `r returns_same("x")`
#'
#' @family flex utilities
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     flex_display() %>%
#'     flex_align("end"),
#'   div("Flex item"),
#'   div(
#'     .style %>%
#'       item_align("start"),
#'     "Flex item (self aligned)"
#'   ),
#'   div("Flex item")
#' )
#'
item_align <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "align-self",
      item_align_values,
      ...
    )
  )
}
