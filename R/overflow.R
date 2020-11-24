overflow_scroll_ <- c(
  auto = "auto",
  hidden = "hidden",
  visible = "visible",
  scroll = "scroll"
)

overflow_scroll <- function(scroll) {
  if (is_true(scroll)) {
    scroll <- "scroll"
  } else if (is_false(scroll)) {
    scroll <- "hidden"
  }

  pick(scroll, from = overflow_scroll_)
}

#' Overflow
#'
#' The `overflow()` function adjust how an element's content scrolls. Scrolling
#' an element's contents may be helpful to prevent child elements from extending
#' the height or width of the element. The height of the element must be set.
#'
#' @inheritParams background
#'
#' @param scroll One of `r rd_list(overflow_scroll_)` specifying how the content
#'   of the element scrolls. `TRUE` and `FALSE` may be used in place of `"scroll"`
#'   or `"hidden"`, respectively.
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     width(25) %>%
#'     overflow(FALSE),
#'   "Nullam libero mauris, consequat quis, varius et, dictum id, arcu."
#' )
#'
overflow <- function(x, scroll) {
  assert_subject(x)

  class <- prefix(
    "overflow",
    overflow_scroll(scroll)
  )

  add_class(x, class)
}
