#' Quick flex layouts
#'
#' The `stack_vertical()` and `stack_horizontal()` functions are shortcuts
#' for creating vertical and horizontal flex layouts.
#'
#' @param x `r param_subject()`
#'
#' @returns `r returns_same("x")`
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     stack_vertical() %>%
#'     gap_all(3),
#'   p(
#'     .style %>%
#'       border_all() %>%
#'       padding_all(2),
#'     "First item"
#'   ),
#'   p(
#'     .style %>%
#'       border_all() %>%
#'       padding_all(2),
#'     "Second item"
#'   ),
#'   p(
#'     .style %>%
#'       border_all() %>%
#'       padding_all(2),
#'     "Third item"
#'   )
#' )
stack_vertical <- function(x) {
  add_class(
    x,
    "vstack"
  )
}

#' @rdname stack_vertical
#' @export
stack_horizontal <- function(x) {
  add_class(
    x,
    "hstack"
  )
}
