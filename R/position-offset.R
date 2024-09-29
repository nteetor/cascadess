position_offset_values <- chr(
  "0" = "0",
  "50" = "50",
  "100" = "100"
)

#' Position offset
#'
#' Use `position_<side>()` to adjust the position offset of a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param offset A number specifying a percent. One of,
#'
#'   `r rd_list(names(position_offset_values))`
#'
#' @returns `r returns_same("x")`
#'
#' @family position
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     position("absolute") %>%
#'     position_right(0)
#' )
#'
position_top <- function(x, offset) {
  add_class(
    x,
    compose_class(
      "top",
      position_offset_values,
      offset
    )
  )
}

#' @rdname position_top
#' @export
position_left <- function(x, offset) {
  add_class(
    x,
    compose_class(
      "left",
      position_offset_values,
      offset
    )
  )
}

#' @rdname position_top
#' @export
position_bottom <- function(x, offset) {
  add_class(
    x,
    compose_class(
      "bottom",
      position_offset_values,
      offset
    )
  )
}

#' @rdname position_top
#' @export
position_right <- function(x, offset) {
  add_class(
    x,
    compose_class(
      "right",
      position_offset_values,
      offset
    )
  )
}
