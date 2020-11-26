font_size_ <- c(
  `1` = 1,
  `2` = 2,
  `3` = 3,
  `4` = 4,
  `5` = 5,
  `6` = 6
)

font_size <- function(size) {
  compose("size", pick(size, from = font_size_))
}

font_weight_ <- c(
  light = "light",
  lighter = "lighter",
  normal = "normal",
  bolder = "bolder",
  bold = "bold"
)

font_weight <- function(weight) {
  pick(weight, from = font_weight_)
}

font_style_ <- c(
  italic = "italic",
  normal = "normal"
)

font_style <- function(style) {
  pick(style, from = font_style_)
}

font_case_ <- c(
  upper = "upper",
  lower = "lower",
  title = "title"
)

font_case <- function(case) {
  pick(case, from = font_case_)
}

font_family_ <- c(
  `sans-serif` = "sans-serif",
  monospace = "monospace"
)

font_family <- function(family) {
  pick(family, from = font_family_)
}

#' Font
#'
#' The `font()` function adjusts the size, weight, style, case, and family of
#' the font of a tag element.
#'
#' @inheritParams background
#'
#' @param size One of `r rd_list(font_size_)` specifying a font size, defaults
#'   to `NULL`, in which case the argument is ignored. The sizes follow the
#'   conventions of heading tags, so `1` is the largest font and `6` the
#'   smallest.
#'
#' @param weight One of `r rd_list(names(font_weight_))` specifying the font
#'   weight, defaults to `NULL`, in which case the argument is ignored.
#'
#'   If `"bolder"` or `"lighter"`, the font weight is changed relative to the
#'   current font weight.
#'
#' @param style One of `r rd_list(names(font_style_))` specifying the font
#'   style, defaults to `NULL`, in which case the argument is ignored.
#'
#' @param case One of `r rd_list(names(font_case_))` specifying the font case,
#'   default to `NULL`, in which case the argument is ignored.
#'
#' @param family One of `r rd_list(names(font_family_))` specifying the font
#'   family, defaults to `NULL`, in which case the argument is ignored.
#'
#' @includeRmd man/roxygen/font.Rmd
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' p(
#'   .style %>%
#'     text("indigo") %>%
#'     font(weight = "bold"),
#'   "Phasellus at dui in ligula mollis ultricies."
#' )
#'
font <- function(x, size = NULL, weight = NULL, style = NULL, case = NULL,
                 family = NULL) {
  assert_subject(x)

  classes <- prefix(
    "font",
    font_size(size),
    font_weight(weight),
    font_style(style),
    font_case(case),
    font_family(family)
  )

  add_class(x, classes)
}
