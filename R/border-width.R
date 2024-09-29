border_width_values <- chr(
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5"
)

#' Border width
#'
#' Adjust the boder width of a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param width A number between `r rd_code(min(border_width_values))` and
#'   `r rd_code(max(border_width_values))`.
#'
#' @returns `r returns_same("x")`
#'
#' @family border utilities
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     border_all() %>%
#'     border_width(3) %>%
#'     border_color(theme_primary())
#' )
#'
border_width <- function(x, width) {
  add_class(
    x,
    compose_class(
      "border",
      border_width_values,
      width
    )
  )
}
