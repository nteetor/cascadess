align_values <- c(
  "baseline",
  "top",
  "middle",
  "bottom",
  "text-bottom",
  "text-top"
)

#' Inline alignment
#'
#' @description
#'
#' The `align()` function adjusts the CSS `vertical-align` property of an
#' element. This property applies to **inline** elements and may be used to
#' adjust the alignment of an image in a line of text or the contents of a table
#' cell.
#'
#' For broader alignment purposes you may want to consider flex `display()` and
#' `flex()`.
#'
#' @param .tag A tag element or `.style` pronoun.
#'
#' @param align One of `r dQuote(align_values, q = FALSE)`
#'
#' @param ... Other arguments passed on to methods.
#'
#' @export
align <- function(.tag, align, ...) {

}

#' @export
align.shiny.tag <- function(.tag, align) {

}

#' @export
align.cascadess_style_pronoun <- function(.tag, align) {
  eval_style(align, prefix = "align", context = .tag)

  add_class(.tag, new_align_class)
}

align_align <- function() {
}
