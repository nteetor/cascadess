text_size_values <- chr(
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5",
  "6" = "6"
)

#' Text size
#'
#' The `text_size()` function adjusts the font size of a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param size A number specifying a font size for the text. One of,
#'
#'   `r rd_bullets(names(text_size_values))`
#'
#'   The sizes follow the conventions of HTML heading tags, so `1` is the largest
#'   font and `6` the smallest.
#'
#' @returns `r returns_same("x")`
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' p(
#'   .style %>%
#'     text_size(1),
#'   "Largest size"
#' )
#'
#' p(
#'   .style %>%
#'     text_size(6),
#'   "Smallest size"
#' )
#'
text_size <- function(x, size) {
  add_class(
    x,
    compose_class(
      "fs",
      text_size_values,
      size
    )
  )
}
