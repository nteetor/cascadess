flex_justify_values <- chr(
  start = "start",
  end = "end",
  center = "center",
  between = "between",
  around = "around",
  evenly = "evenly"
)

#' Flex main axis alignment
#'
#' The `flex_justify()` function adjusts a tag element's main axis alignment. By
#' default, the main axis is the x-axis. When using `flex_direction("column")`
#' the main axis becomes the y-axis.
#'
#' @param x `r param_subject()`
#'
#' @param ... A character string specifying the main axis alignment. One of,
#'
#'   `r rd_bullets(names(flex_justify_values))`
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
#'     flex_justify("end"),
#'   div("Flex item"),
#'   div("Flex item"),
#'   div("Flex item")
#' )
#'
flex_justify <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "justify-content",
      flex_justify_values,
      ...
    )
  )
}
