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
  style_class_add(x, background_color("bg", color))
}

#' @export
background.rlang_box_splice <- function(x, color) {
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
