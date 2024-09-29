text_break_values <- chr(
  "TRUE" = "break"
)

#' Break long text
#'
#' The `text_break()` function is used to break long strings of text within a
#' tag element.
#'
#' @param x `r param_subject()`
#'
#' @returns `r returns_same("x")`
#'
#' @family text utilities
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     text_break(),
#'   "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
#' )
#'
text_break <- function(x) {
  add_class(
    x,
    compose_class(
      "text",
      text_break_values,
      TRUE
    )
  )
}
