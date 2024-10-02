flex_direction_values <- chr(
  row = "row",
  column = "column"
)

#' Flex direction
#'
#' The `flex_direction()` function adjusts the
#'
#' @param x `r param_subject()`
#'
#' @param ... A character string specifying a direction. One of,
#'
#'   `r rd_bullets(names(flex_direction_values))`
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
#'     flex_direction("column")
#' )
#'
flex_direction <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "flex",
      flex_direction_values,
      ...
    )
  )
}
