theme_colors <- c(
  blue = "blue",
  indigo = "indigo",
  purple = "purple",
  red = "red",
  orange = "orange",
  yellow = "yellow",
  green = "green",
  teal = "teal",
  cyan = "cyan"
)

background_colors <- c(
  theme_colors,
  body = "body",
  white = "white",
  transparent = "transparent"
)

#' Backgrounds
#'
#' The `background()` function adjusts the background color of a tag element.
#'
#' @param x A tag element or [.style] pronoun.
#'
#' @param color One of `r rd_chr_lst(names(background_colors))`.
#'
#' @include utils.R
#' @export
background <- html_class_fn("background", "bg",
                            color = background_colors)

##   function(x, color) {
##   UseMethod("background", x)
## }

## #' @export
## background.cascadess_style_pronoun <- class_("background", "bg",
##                                              color = background_colors)

## ##   function(x, color) {
## ##   pronoun <- style_get_pronoun()
## ##   class <- html_class_background(pronoun, "bg", color)

## ##   pronoun_add_class(x, class)
## ## }

## #' @export
## background.rlang_box_splice <- function(x, color) {
##   pronoun_box_add_class(x, html_class_background(color))
## }

## #' @export
## background.shiny.tag <- function(x, color) {
##   tag_add_class(x, html_class_background(color))
## }

## #' @export
## background.default <- function(x, color) {

## }
