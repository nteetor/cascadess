visible_show_values <- chr(
  "TRUE" = "visible",
  "FALSE" = "invisible"
)

#' Visibility
#'
#' The `visible()` function adjusts the visibility of a tag element. An
#' invisible element is both visually hidden and is also hidden from screen
#' readers.
#'
#' @param x `r param_subject()`
#'
#' @param show A boolean specifying the visibility. One of,
#'
#'   `r rd_bullets(names(visible_show_values))`
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
#'     visible(FALSE),
#'   "Not visible"
#' )
#'
visible <- function(x, show) {
  add_class(
    x,
    compose_class(
      "",
      visible_show_values,
      show
    )
  )
}
