font_size_values <- chr(
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5",
  "6" = "6"
)

font_weight_values <- chr(
  bold = "bold",
  bolder = "bolder",
  semibold = "semibold",
  medium = "medium",
  normal = "normal",
  light = "light",
  lighter = "lighter"
)

font_style_values <- chr(
  italic = "italic",
  normal = "normal"
)

#' Font
#'
#' The `font_*()` functions adjust the size, weight, and style of a tag
#' element's font.
#'
#' @param x `r param_subject()`
#'
#' @param size One of `r rd_list(names(font_size_values))` specifying a font
#'   size, defaults to `NULL`, in which case the argument is ignored. The sizes
#'   follow the conventions of heading tags, so `1` is the largest font and `6`
#'   the smallest.
#'
#' @param weight One of `r rd_list(names(font_weight_values))` specifying the font
#'   weight, defaults to `NULL`, in which case the argument is ignored.
#'
#'   If `"bolder"` or `"lighter"`, the font weight is changed relative to the
#'   current font weight.
#'
#' @param style One of `r rd_list(names(font_style_values))` specifying the font
#'   style, defaults to `NULL`, in which case the argument is ignored.
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' p(
#'   .style %>%
#'     text_color("info") %>%
#'     font_weight("bold"),
#'   "The values above will include more value in v2.0"
#' )
#'
font_size <- function(x, size) {
  add_class(
    x,
    compose_class(
      "fs",
      font_size_values,
      size
    )
  )
}

#' @rdname font_size
#' @export
font_weight <- function(x, weight) {
  add_class(
    x,
    compose_class(
      "fw",
      font_weight_values,
      weight
    )
  )
}

#' @rdname font_size
#' @export
font_style <- function(x, style) {
  add_class(
    x,
    compose_class(
      "fst",
      font_style_values,
      style
    )
  )
}
