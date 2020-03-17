overflow_scroll_ <- c(
  auto = "auto",
  hidden = "hidden"
)

overflow_scroll <- function(scroll) {
  if (is_true(scroll)) {
    scroll <- "auto"
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
#' @param scroll One of `"auto"` or `"hidden"` specifying if the content of the
#'   element scrolls. `TRUE` and `FALSE` may be used in place of `"auto"` or
#'   `"hidden"`, respectively.
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

  cls <- prefix(
    "overflow",
    overflow_scroll(scroll)
  )

  add_class(x, cls)
}
