item_fill_values <- chr(
  "TRUE" = "fill"
)

#' Flex fill
#'
#' The `item_fill()` adjusts how tag elements fill a flex element.
#'
#' @param x `param_subject()`
#'
#' @param ... A boolean specifying to fill. One of
#'
#'   `r rd_bullets(names(item_fill_values))`
#'
#'   Use name-value pairs to specifying [breakpoints].
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
#'     flex_display(),
#'   div(
#'     .style %>%
#'       item_fill(TRUE),
#'     "Flex item"
#'   ),
#'   div(
#'     .style %>%
#'       item_fill(TRUE),
#'     "Flex item"
#'   ),
#'   div(
#'     .style %>%
#'       item_fill(TRUE),
#'     "Flex item"
#'   )
#' )
#'
item_fill <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "flex",
      item_fill_values,
      ...
    )
  )
}
