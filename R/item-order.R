item_order_values <- chr(
  "0" = "0",
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5",
  "first" = "first",
  "last" = "last"
)

#' Flex reordering
#'
#' The `item_order()` function adjusts the visual order of a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param ... A number or character string specifying a position. One of,
#'
#'   `r rd_bullets(names(item_order_values))`
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
#'     flex_display(),
#'   div(
#'     .style %>%
#'       item_order(3),
#'     "Third flex item"
#'   ),
#'   div(
#'     .style %>%
#'       item_order(2),
#'     "Second flex item"
#'   ),
#'   div(
#'     "First flex item"
#'   )
#' )
#'
item_order <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "order",
      item_order_values,
      ...
    )
  )
}
