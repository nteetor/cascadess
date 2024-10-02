flex_content_values <- chr(
  start = "start",
  end = "end",
  center = "center",
  between = "between",
  around = "around",
  stretch = "stretch"
)

#' Flex content
#'
#' The `flex_content()` function adjusts how a tag element's child elements
#' align as a group on the cross axis (see [flex_justify()] for more info about
#' the main and cross axis of a flex element). Note, this alignment has no
#' effect on a single row of child elements.
#'
#' @param x `r param_subject()`
#'
#' @param ... A character string specifying the cross axis alignment. One of,
#'
#'   `r rd_bullets(names(flex_content_values))`
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
#'     flex_content("center") %>%
#'     flex_wrap(TRUE),
#'   div("Flex item"),
#'   div("Flex item"),
#'   div("Flex item"),
#'   div("Flex item"),
#'   div("Flex item")
#' )
flex_content <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "align-content",
      flex_content_values,
      ...
    )
  )
}
