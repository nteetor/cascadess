text_style_values <- chr(
  italic = "italic",
  normal = "normal"
)

#' Text style
#'
#' The `text_style()` function adjusts the style of text in a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param style A character string specifying the text style. One of,
#'
#'   `r rd_bullets(names(text_style_values))`
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
#' p(
#'   .style %>%
#'     text_style("italic"),
#'   "Italic text"
#' )
#'
#' p(
#'   .style %>%
#'     text_style("normal"),
#'   "Normal text"
#' )
#'
text_style <- function(x, style) {
  add_class(
    x,
    compose_class(
      "fst",
      text_style_values,
      style
    )
  )
}
