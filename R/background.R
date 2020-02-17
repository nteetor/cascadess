theme_colors <- c(
  red = "red",
  purple = "purple",
  indigo = "indigo",
  blue = "blue",
  cyan = "cyan",
  teal = "teal",
  green = "green",
  yellow = "yellow",
  amber = "amber",
  orange = "orange"
)

background_colors <- c(
  theme_colors,
  body = "body",
  white = "white",
  transparent = "transparent"
)

html_class_background <- function(prefix, color) {
  prefix <- prefix %||% "bg"

  html_class(prefix, pick(background_colors, color))
}

#' Backgrounds
#'
#' The `background()` function adjusts the background color of a tag element.
#'
#' @param x A tag element or [.style] pronoun.
#'
#' @param color One of `r rd_chr_lst(names(background_colors))`.
#'
#' @export
background <- function(x, color) {
  UseMethod("background", x)
}

#' @export
background.cascadess_style_pronoun <- function(x, color) {
  pronoun_class_add(x, html_class_background(style_prefix(x), color))
}

#' @export
background.rlang_box_splice <- function(x, color) {
  pronoun_box_class_add(x, html_class_background(style_prefix(x), color))
}

#' @export
background.shiny.tag <- function(x, color) {
  tag_class_add(x, html_class_background(style_prefix(x), color))
}

#' @export
background.default <- function(x, color) {

}
