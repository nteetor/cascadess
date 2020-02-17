display_types <- c(
  inline = "inline",
  `inline-block` = "inline-block",
  block = "block",
  table = "table",
  `table-row` = "table-row",
  `table-cell` = "table-cell",
  flex = "flex",
  `inline-flex` = "inline-flex",
  none = "none"
)

html_class_display <- function(type) {
  type <- responsive(type)

  html_class("d", pick(display_types, type))
}

#' Display
#'
#' The `display()` function adjusts how a tag element is rendered. For example,
#' to use the flex box layout the display must be `"flex"`.
#'
#' @inheritParams background
#'
#' @param type A [responsive] argument.
#'
#'   One of `r rd_chr_lst(names(display_types))`.
#'
#' @export
display <- function(x, type) {
  UseMethod("display", x)
}

#' @export
display.cascadess_style_pronoun <- function(x, type) {
  pronoun_class_add(x, html_class_display(type))
}

#' @export
display.rlang_box_splice <- function(x, type) {
  pronoun_box_class_add(x, html_class_display(type))
}

#' @export
display.shiny.tag <- function(x, type) {
  tag_class_add(x, html_class_display(type))
}

#' @export
display.default <- function(x, type) {

}
