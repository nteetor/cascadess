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

border_radius_ <- c(
  small = "sm",
  sm = "sm",
  medium = "md",
  md = "md",
  large = "lg",
  lg = "lg",
  circle = "circle",
  pill = "pill",
  none = "0"
)

border_radius <- function(radius) {
  compose("radius", pick(radius, from = border_radius_))
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
#' @param color One of `r rd_list(names(border_color_))` specifying the border
#'   color.
#'
#' @param radius One of `rd rd_list(names(border_radius_))` specifying the
#'   border radius, defaults to `"medium"`.
#'
#' @param sides One or more of `r rd_list(names(border_sides_))` specifying
#'   which sides to add borders to, defaults to `TRUE`. `TRUE` and `FALSE` may
#'   be used as shorthands for all sides or no sides, respectively.
#'
# @includeRmd man/roxygen/border.Rmd
#'
#' @export
border <- function(x, color, radius = "medium", sides = TRUE) {
  assert_subject(x)

  cls <- prefix(
    "border",
    border_color(color),
    border_sides(sides),
    border_radius(radius)
  )

  add_class(x, cls)
}
