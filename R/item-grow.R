item_grow_values <- chr(
  "TRUE" = "grow-1",
  "FALSE" = "grow-0"
)

item_shrink_values <- chr(
  "TRUE" = "shrink-1",
  "FALSE" = "shrink-0"
)

#' Flex grow and shrink
#'
#' The `item_grow()` and `item_shrink()` adjust a tag element's ability to grow
#' or shrink inside a flex element.
#'
#' @param x `r param_subject()`
#'
#' @param ... A boolean specifying to grow or shrink. One of,
#'
#'   `r rd_bullets(names(item_shrink_values))`
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
#'       padding_all(2) %>%
#'       item_grow(TRUE),
#'     "Flex item"
#'   ),
#'   div(
#'     .style %>%
#'       padding_all(2),
#'     "Flex item"
#'   ),
#'   div(
#'     .style %>%
#'       padding_all(2),
#'     "Flex item"
#'   )
#' )
#'
item_grow <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "flex",
      item_grow_values,
      ...
    )
  )
}

#' @rdname item_grow
#' @export
item_shrink <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "flex",
      item_shrink_values,
      ...
    )
  )
}
