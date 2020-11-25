border_color_ <- c(
  theme_colors,
  white = "white"
)

border_color <- function(color) {
  pick(color, from = border_color_)
}

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

border_width_ <- c(
  `1` = 1,
  `2` = 2,
  `3` = 3,
  `4` = 4,
  `5` = 5
)

border_width <- function(width) {
  if (width == 1) {
    return(NULL)
  }

  pick(as.character(width), from = border_width_)
}

border_round_ <- c(
  small = "sm",
  sm = "sm",
  medium = "md",
  md = "md",
  large = "lg",
  lg = "lg",
  none = "none"
)

border_round <- function(round) {
  compose("round", pick(round, from = border_round_))
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
#' @param sides One or more of `r rd_list(names(border_sides_))` specifying
#'   which sides to add borders to, defaults to `TRUE`. `TRUE` and `FALSE` may
#'   be used as shorthand for all sides or no sides, respectively.
#'
#' @param width One or more of `r rd_list(border_width_)` specifying the width
#'   of the element's border, defaults to `1`.
#'
#' @param round One of `r rd_list(names(border_round_))` specifying how to round
#'   the corners of the element, defaults to `"medium"`.
#'
#' @includeRmd man/roxygen/border.Rmd
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' h3(
#'   .style %>%
#'     border("red", "bottom") %>%
#'     text("red"),
#'   "A bright, underlined heading!"
#' )
#'
border <- function(x, color, sides = TRUE, width = 1, round = "medium") {
  assert_subject(x)

  classes <- prefix(
    "border",
    border_color(color),
    border_sides(sides),
    border_width(width),
    border_round(round)
  )

  add_class(x, classes)
}
