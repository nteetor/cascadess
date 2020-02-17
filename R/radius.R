radius_round <- c(
  small = "sm",
  sm = "sm",
  medium = "",
  md = "",
  large = "lg",
  lg = "lg",
  circle = "circle",
  pill = "pill",
  none = "0"
)

radius_sides <- c(
  top = "top",
  t = "top",
  right = "right",
  r = "right",
  bottom = "bottom",
  b = "bottom",
  left = "left",
  l = "left",
  all = ""
)

html_class_radius <- function(round, sides)  {
  if (is_true(sides)) {
    sides <- ""
  } else if (is_false(sides)) {
    sides <- NULL
  } else {
    sides <- pick(radius_sides, sides)
  }

  c(html_class("rounded", sides),
    html_class("rounded", pick(radius_round, round)))
}

#' Border radius
#'
#' The `radius()` function adjusts the border radius of a tag element.
#'
#' @inheritParams background
#'
#' @param round One of `r rd_chr_lst(names(radius_round))`.
#'
#' @param sides One or more of `r rd_chr_lst(names(radius_sides))` specifying
#'   which sides' corners to round, defaults to `TRUE`. `TRUE` and `FALSE` may
#'   be used as shorthands for all sides or no sides, respectively.
#'
#' @export
radius <- function(x, round, sides = TRUE) {
  UseMethod("radius", x)
}

#' @export
radius.cascadess_style_pronoun <- function(x, round, sides = TRUE) {
  pronoun_class_add(x, html_class_radius(round, sides))
}

#' @export
radius.rlang_box_splice <- function(x, round, sides = TRUE) {
  pronoun_box_class_add(x, html_class_radius(round, sides))
}

#' @export
radius.shiny.tag <- function(x, round, sides = TRUE) {
  tag_class_add(x, html_class_radius(round, sides))
}

#' @export
radius.default <- function(x, round, sides = TRUE) {

}
