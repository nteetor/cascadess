font_colors <- c(
  theme_colors,
  body = "body",
  muted = "muted",
  reset = "reset"
)

font_weights <- c(
  "light",
  "lighter",
  "normal",
  "bolder",
  "bold"
)

font_align <- c(
  "left",
  "right",
  "center"
)

font_cases <- c(
  upper = "uppercase",
  lower = "lowercase",
  captialize = "captialize"
)

html_class_font <- function(color, weight, case, align) {
  align <- responsive(align)

  c(html_class("text", pick(font_colors, color)),
    html_class("font-weight", pick(font_weights, weight)),
    html_class("text", pick(font_cases, case)),
    html_class("text", pick(font_align, align)))
}

#' Font
#'
#' The `font()` function adjusts the color, size, weight, case, or alignment of
#' a tag element's text.
#'
#' @inheritParams background
#'
#' @param color One of `r rd_chr_lst(names(theme_colors))` specifying the font
#'   color, defaults to `NULL`, in which case the argument is ignored.
#'
#' @param weight One of `r rd_chr_lst(names(font_weights))` specifying the font
#'   weight of the element's text, defaults to `NULL`.
#'
#'   If `"bolder"` or `"lighter"`, the font weight is changed relative to the
#'   current font weight.
#'
#' @param case One of `"upper"`, `"lower"`, or `"title"` specifying a
#'   transformation of the tag element's text, default to `NULL`, in which case
#'   the argument is ignored.
#'
#' @param align A [responsive] argument.
#'
#'   One of `r rd_chr_lst(names(font_align))` specifying the alignment of the
#'   tag element's text, defaults to `NULL`, in which case the argument is
#'   ignored.
#'
# @includeRmd man/roxygen/font.Rmd
#'
#' @export
font <- function(x, color = NULL, weight = NULL, case = NULL, align = NULL) {
  UseMethod("font", x)
}

#' @export
font.cascadess_style_pronoun <- function(x, color = NULL, weight = NULL,
                                         case = NULL, align = NULL) {
  pronoun_class_add(x, html_class_font(color, weight, case, align))
}

#' @export
font.rlang_box_splice <- function(x, color = NULL, weight = NULL, case = NULL,
                                  align = NULL) {
  pronoun_box_class_add(x, html_class_font(color, weight, case, align))
}

#' @export
font.shiny.tag <- function(x, color = NULL, weight = NULL, case = NULL,
                           align = NULL) {
  tag_class_add(x, html_class_font(color, weight, case, align))
}

#' @export
font.default <- function(x, color = NULL, weight = NULL, case = NULL,
                         align = NULL) {

}
