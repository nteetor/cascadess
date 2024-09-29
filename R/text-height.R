text_height_values <- chr(
  sm = "sm",
  small = "sm",
  base = "base",
  lg = "lg",
  large = "lg"
)

#' Text height
#'
#' The `text_height()` function adjusts the line height of text within a tag
#' element.
#'
#' @param x `r param_subject()`
#'
#' @param height A character string specifying a line height. One of,
#'
#'   `r rd_bullets(names(text_height_values))`
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
#'     text_height("base"),
#'   "This is the browser's default line height spacing.",
#'   "Make sure there are multiple lines of text in a paragraph.",
#'   "Otherwise, the changes applied by these utilities are not visible."
#' )
#'
text_height <- function(x, height) {
  add_class(
    x,
    compose_class(
      "lh",
      text_height_values,
      height
    )
  )
}
