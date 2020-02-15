theme_colors <- c(
  "red", "purple", "indigo", "blue", "cyan", "teal", "green",
  "yellow", "amber", "orange", "grey", "black", "white"
)

#' Backgrounds
#'
#' Use `background()` to modify the background color of a tag element.
#'
#' @param x A tag element or [.style] pronoun.
#'
#' @param color One of
#'   \Sexpr[results=rd,stage=render]{rd_chr_lst(theme_colors)}.
#'
#' @export
background <- function(x, color) {
  UseMethod("background", x)
}

#' @export
background.cascadess_style_pronoun <- function(x, color) {
  pronoun_class_add(x, dash(style_prefix(x, "bg"), color))
}

#' @export
background.cascadess_pronoun_box <- function(x, color) {
  background(unbox(x), color)
}

#' @export
background.shiny.tag <- function(x, color) {
  tag_class_add(x, dash("bg", color))
}

#' @export
background.default <- function(x, color) {

}
