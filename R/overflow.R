overflow_values <- chr(
  "auto" = "auto",
  "hidden" = "hidden",
  "visible" = "visible",
  "scroll" = "scroll"
)

#' Overflow
#'
#' The `overflow()` function adjust how an element's content scrolls. Scrolling
#' an element's contents may be helpful to prevent child elements from extending
#' the width or height of the element.
#'
#' @param x `r param_subject()`
#'
#' @param scroll One of `r rd_list(names(overflow_values))` specifying how the
#'   content of the element scrolls. `TRUE` and `FALSE` may be used in place of
#'   `"scroll"` or `"hidden"`, respectively.
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     width(25) %>%
#'     overflow("hidden"),
#'   "Nullam libero mauris, consequat quis, varius et, dictum id, arcu."
#' )
#'
overflow <- function(x, scroll) {
  add_class(
    x,
    compose_class(
      "overflow",
      overflow_values,
      scroll
    )
  )
}
