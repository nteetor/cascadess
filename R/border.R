border_sides <- c(
  top = "top",
  t = "top",
  right = "right",
  r = "right",
  bottom = "bottom",
  b = "bottom",
  left = "left",
  l = "left"
)

border_colors <- c(
  theme_colors,
  white = "white"
)

html_class_border <- function(pronoun, default, sides) {
  if (is_true(sides)) {
    sides <- c("t", "r", "b", "l")
  } else if (is_false(sides)) {
    sides <- NULL
  }

  nm <- env_get(caller_env(), ".Generic")
  prefix <- style_get_prefix(pronoun, nm, default)

  c(html_class(prefix, pick(border_sides, sides)),
    html_class(prefix, pick(border_colors, color)))
}

#' Borders
#'
#' The `border()` function adjusts a tag element's borders.
#'
#' @inheritParams background
#'
#' @param color One of `r rd_chr_lst(names(border_colors))`.
#'
#' @param sides One or more of `r rd_chr_lst(names(border_sides))` specifying
#'   which sides to add borders to, defaults to `TRUE`. `TRUE` and `FALSE` may
#'   be used as shorthands for all sides or no sides, respectively.
#'
# @includeRmd man/roxygen/border.Rmd
#'
#' @export
border <- function(x, color, sides = TRUE) {
  UseMethod("border", x)
}

#' @export
border.cascadess_style_pronoun <- function(x, color, sides = TRUE) {
  pronoun_add_class(x, html_class_border(color, sides))
}

#' @export
border.rlang_box_splice <- function(x, color, sides = TRUE) {
  pronoun <-
  pronoun_box_add_class(x, html_class_border(color, sides))
}

#' @export
border.shiny.tag <- function(x, color, sides = TRUE) {
  tag_add_class(x, html_class_border(color, sides))
}

#' @export
border.default <- function(x, color, sides = TRUE) {

}
