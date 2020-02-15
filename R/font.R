font_weights <- c(
  "light",
  "lighter",
  "normal",
  "bolder",
  "bold"
)

font_aligns <- c(
  "left",
  "right",
  "center"
)

cases <- function(x) {
  if (is_null(x)) {
    return(NULL)
  }

  if (x == "upper")
    "uppercase"
  else if (x == "lower") {
    "lowercase"
  } else {
    "capitalize"
  }
}

#' Font
#'
#' The `font()` function adjusts the color, size, weight, case, or alignment of
#' a tag element's text.
#'
#' @inheritParams background
#'
#' @param color One of \Sexpr[results=rd,stage=render]{rd_chr_lst(theme_colors)}
#'   specifying the font color, defaults to `NULL`, in which case the argument is
#'   ignored.
#'
#' @param weight One of
#'   \Sexpr[results=rd,stage=render]{rd_chr_lst(font_weights)} specifying the
#'   font weight of the element's text, defaults to `NULL`.
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
#'   One of \Sexpr[results=rd,stage=render]{rd_chr_lst(font_aligns)} specifying
#'   the alignment of the tag element's text, defaults to `NULL`, in which case
#'   the argument is ignored.
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
  pronoun_class_add(
    x,
    dash("text", color),
    dash("font-weight", weight),
    dash("text", cases(case)),
    dash("text", responsive(align))
  )
}

#' @export
font.cascadess_pronoun_box <- function(x, color = NULL, weight = NULL,
                                       case = NULL, align = NULL) {
  font(unbox(x), color, size, weight, case, align)
}

#' @export
font.shiny.tag <- function(x, color = NULL, weight = NULL, case = NULL,
                           align = NULL) {
  tag_class_add(
    x,
    dash("text", color),
    dash("font-weight", weight),
    dash("text", cases(case)),
    dash("text", responsive(align))
  )
}

#' @export
font.default <- function(x, color = NULL, weight = NULL, case = NULL,
                         align = NULL) {

}
