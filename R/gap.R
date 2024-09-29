gap_values <- chr(
  "0" = "0",
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5"
)

#' Grid and flex margins
#'
#' The `gap_*()` functions adjust the margins of child elements of a tag element
#' with a grid or flex display. Instead of applying [margin_*()][margin_all] to
#' each child element, a single `gap_*()` function is applied to the parent element.
#'
#' @param x `r param_subject()`
#'
#' @param ... A number specifying the space between child elements. One of,
#'
#'   `r rd_bullets(names(gap_values))`
#'
#'   Use name-value pairs to specify [breakpoints].
#'
#' @returns `r returns_same("x")`
#'
#' @seealso [margin_all()] for margins on non flex item elements.
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
#'       margin_all(2)
#'   ),
#'   div(
#'     .style %>%
#'       margin_all(2)
#'   )
#' )
#'
#' div(
#'   .style %>%
#'     flex_display() %>%
#'     gap_all(2),
#'   div(),
#'   div()
#' )
#'
gap_all <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "gap",
      gap_values,
      ...
    )
  )
}

#' @rdname gap_all
#' @export
gap_horizontal <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "column-gap",
      gap_values,
      ...
    )
  )
}

#' @rdname gap_all
#' @export
gap_vertical <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "row-gap",
      gap_values,
      ...
    )
  )
}
