#' Borders and border colors
#'
#' The `border()` functions adds or modifies tag element borders.
#'
#' @inheritParams background
#'
#' @param color One of the theme colors, defaults to `NULL`.
#'
#' @param all One or more of `"top"`, `"t"`, `"right"`, `"r"`, `"bottom"`,
#'   `"b"`, or `"left"`, `"l"`, specifying which sides to add borders to,
#'   defaults to `!is.null(color)`. `TRUE` and `FALSE` may be used as shorthands
#'   for all sides or no sides, respectively.
#'
#' @param top,right,bottom,left One of `TRUE` or `FALSE` specifying if a border
#'   is added or removed to the tag element side, defaults to `NULL`, in which
#'   case the argument is ignored.
#'
# @includeRmd man/roxygen/border.Rmd
#'
#' @export
border <- function(x, color = NULL, all = !is.null(color), top = NULL,
                   right = NULL, bottom = NULL, left = NULL) {
  UseMethod("border", x)
}

#' @export
border.cascadess_style_pronoun <- function(x, color = NULL,
                                           all = !is.null(color),
                                           top = NULL, right = NULL, bottom =
                                           NULL, left = NULL) {
  s <- sides(all, top, right, bottom, left)

  pronoun_class_add(x, dash("border", s), dash("border", color) %||% "border")
}

#' @export
border.cascadess_pronoun_box <- function(x, color = NULL,
                                         all = !is.null(color),
                                         top = NULL, right = NULL,
                                         bottom = NULL, left = NULL) {
  border(unbox(x), color, all, top, right, bottom, left)
}

#' @export
border.shiny.tag <- function(x, color = NULL, all = !is.null(color), top = NULL,
                             right = NULL, bottom = NULL, left = NULL) {
  s <- sides(all, top, right, bottom, left)

  tag_class_add(x, dash("border", s), dash("border", color) %||% "border")
}

#' @export
border.default <- function(x, color = NULL, all = !is.null(color), top = NULL,
                           right = NULL, bottom = NULL, left = NULL) {

}
