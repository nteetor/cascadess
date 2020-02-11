#' Backgrounds
#'
#' Use `background()` to modify the background color of a tag element.
#'
#' @inheritParams affix
#'
# @eval param_color("background")
#'
# @includeRmd man/roxygen/background.Rmd
#'
#' @family design utilities
#' @export
background <- function(x, color) {
  UseMethod("background", x)
}

#' @export
background.cascadess_style_pronoun <- function(x, color) {
  pronoun_class_add(x, background_color(style_prefix(x, "bg"), color))
}

#' @export
background.cascadess_pronoun_box <- function(x, color) {
  background(unbox(x), color)
}

#' @export
background.shiny.tag <- function(x, color) {
  tag_class_add(x, background_color("bg", color))
}

#' @export
background.default <- function(x, color) {
  tag_class_add(x, background_color("bg", color))
}

background_color <- function(prefix, color) {
  sprintf("%s-%s", prefix, color)
}
