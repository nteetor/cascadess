text_decoration_values <- chr(
  "underline" = "underline",
  "strike" = "line-through",
  "none" = "none"
)

#' Text decoration
#'
#' The `text_dectoration()` function adjusts how text is decorated within a tag
#' element.
#'
#' @param x `r param_subject()`
#'
#' @param decoration A character string specifying a decoration. One of,
#'
#'   `r rd_bullets(names(text_decoration_values))`
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
#'     text_decoration("strike"),
#'   "TODO: buy milk"
#' )
#'
#' div(
#'   .style %>%
#'     text_emphasis(theme_danger()) %>%
#'     text_decoration("underline"),
#'   "Red AND underlined!"
#' )
#'
text_decoration <- function(x, decoration) {
  add_class(
    x,
    compose_class(
      "text",
      text_decoration_values,
      decoration
    )
  )
}
