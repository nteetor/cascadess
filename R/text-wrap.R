text_wrap_values <- chr(
  "TRUE" = "wrap",
  "FALSE" = "nowrap"
)

#' Text wrap
#'
#' The `text_wrap()` adjusts how text is wrapped, or not wrapped, in a tag
#' element.
#'
#' @param x `r param_subject()`
#'
#' @param wrap A boolean. One of,
#'
#'   `r rd_bullets(names(text_wrap_values))`
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
#'   style = "width: 5rem;",
#'   .style %>%
#'     background_color(theme_primary()) %>%
#'     text_wrap(TRUE),
#'   "Wrap text to fit the element"
#' )
#'
#' div(
#'   style = "width: rem;",
#'   .style %>%
#'     background_color(theme_secondary()) %>%
#'     text_wrap(FALSE),
#'   "This text won't wrap onto a new line."
#' )
#'
text_wrap <- function(x, wrap) {
  add_class(
    x,
    compose_class(
      "text",
      text_wrap_values,
      wrap
    )
  )
}
