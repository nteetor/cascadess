flex_wrap_values <- chr(
  "TRUE" = "wrap",
  "FALSE" = "nowrap"
)

#' Flex wrapping
#'
#' The `flex_wrap()` function adjusts how a tag element's child elements wrap,
#' or don't wrap, onto new lines.
#'
#' @param x `r param_subject()`
#'
#' @param ... A boolean specifying to wrap or not wrap. One of,
#'
#'   `r rd_bullets(names(flex_wrap_values))`
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
#'     flex_wrap(FALSE),
#'   div("Flex item"),
#'   div("Flex item"),
#'   div("Flex item"),
#'   div("Flex item")
#' )
#'
flex_wrap <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "flex",
      flex_wrap_values,
      ...
    )
  )
}
