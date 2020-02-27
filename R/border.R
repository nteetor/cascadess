border_sides_ <- c(
  top = "top",
  t = "top",
  right = "right",
  r = "right",
  bottom = "bottom",
  b = "bottom",
  left = "left",
  l = "left",
  all = "all",
  none = "none"
)

border_sides <- function(sides) {
  if (is_true(sides)) {
    sides <- "all"
  }

  if (is_false(sides)) {
    sides <- "none"
  }

  pick(sides, from = border_sides_)
}

border_color_ <- c(
  theme_colors,
  white = "white"
)

border_color <- function(color) {
  pick(color, from = border_color_)
}

#' Borders
#'
#' The `border()` function adjusts a tag element's borders.
#'
#' @inheritParams background
#'
#' @param color One of `r rd_chr_lst(names(border_color_))`.
#'
#' @param sides One or more of `r rd_chr_lst(names(border_sides_))` specifying
#'   which sides to add borders to, defaults to `TRUE`. `TRUE` and `FALSE` may
#'   be used as shorthands for all sides or no sides, respectively.
#'
# @includeRmd man/roxygen/border.Rmd
#'
#' @export
border <- function(x, color, sides = TRUE) {
  assert_subject(x)

  cls <- prefix(
    "border",
    border_color(color),
    border_sides(sides)
  )

  add_class(x, cls)
}
