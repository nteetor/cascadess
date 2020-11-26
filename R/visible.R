visible_value <- function(value) {
  if (is_true(value)) {
    "visible"
  } else if (is_false(value)) {
    "invisible"
  }
}

#' Element visibility
#'
#' The `visible()` function changes the visibility of a tag element. An
#' invisible element is both visually hidden and is also hidden from screen
#' readers.
#'
#' @inheritParams background
#'
#' @param value One of `TRUE` or `FALSE` specifying if the element is visible,
#'   defaults to `TRUE`.
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div("I am hidden") %>%
#'   visible(FALSE)
#'
visible <- function(x, value) {
  assert_subject(x)

  class <- visible_value(value)

  add_class(x, class)
}
