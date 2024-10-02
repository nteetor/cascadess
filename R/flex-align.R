flex_align_values <- chr(
  start = "start",
  end = "end",
  center = "center",
  baseline = "baseline",
  stretch = "stretch"
)

#' Flex cross axis alignment
#'
#' The `flex_align()` function adjusts a tag element's cross axis alignment. By
#' default, the cross axis is the y-axis. When using `flex_direction("column")`
#' the cross axis becomes the x-axis.
#'
#' @param x `r param_subject()`
#'
#' @param ... A character string specifying the cross axis alignment. One of,
#'
#'   `r rd_bullets(names(flex_align_values))`
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
#'     flex_align("center"),
#'   div("Flex item"),
#'   div("Flex item"),
#'   div("Flex item")
#' )
#'
flex_align <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "align-items",
      flex_align_values,
      ...
    )
  )
}
