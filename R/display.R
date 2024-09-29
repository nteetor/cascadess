display_type_values <- chr(
  "none" = "none",
  "inline" = "inline",
  "inline-block" = "inline-block",
  "block" = "block",
  "grid" = "grid",
  "inline-grid" = "inline-grid",
  "table" = "table",
  "table-cell" = "table-cell",
  "table-row" = "table-row",
  "flex" = "flex",
  "inline-flex" = "inline-flex"
)

#' Display
#'
#' The `display()` function adjusts how a tag element and its contents are
#' rendered.
#'
#' @param x `r param_subject()`
#'
#' @param ... Name-value pairs specifying [breakpoints].
#'
#' @returns `r returns_same("x")`
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     display("flex") %>%
#'     flex_justify("center"),
#'   "Powerful stuff"
#' )
#'
display <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "d",
      display_type_values,
      ...
    )
  )
}
