text_color_ <- c(
  theme_colors,
  `black-50` = "black-50",
  `white-50` = "white-50",
  white = "white",
  muted = "muted",
  body = "body",
  reset = "reset"
)

text_color <- function(color) {
  compose("color", pick(color, from = text_color_))
}

text_align_ <- c(
  left = "left",
  right = "right",
  center = "center"
)

text_align <- function(align) {
  compose("align", responsive(pick(align, from = text_align_)))
}

text_spacing_ <- c(
  small = "sm",
  sm = "sm",
  large = "lg",
  lg = "lg"
)

text_spacing <- function(spacing) {
  compose("spacing", pick(spacing, from = text_spacing_))
}

text_decoration_ <- c(
  none = "none",
  underline = "underline",
  strikethrough = "strikethrough"
)

text_decoration <- function(decoration) {
  compose("decoration", pick(decoration, from = text_decoration_))
}

text_wrap <- function(wrap) {
  if (is.null(wrap)) {
    return(NULL)
  }

  ifelse(wrap, "wrap", "nowrap")
}

#' Text
#'
#' The `text()` function adjusts the text color, alignment, line spacing, line
#' wrapping, and decoration of a tag element.
#'
#' @inheritParams background
#'
#' @param color One of `r rd_list(names(text_color_))` specifying the text
#'   color, defaults to `NULL`, in which case the argument is ignored.
#'
#' @param align One of `r rd_list(names(text_align_))` specifying the
#'
#' @param spacing One of `r rd_list(names(text_spacing_))` specifying the text
#'   line spacing, defaults to `NULL`, in which case the argument is ignored.
#'
#' @param decoration One of `r rd_list(names(text_decoration_))` specifying how
#'   the text is decorated, defaults to `NULL`, in which case the argument is
#'   ignored.
#'
#' @param wrap One of `TRUE` or `FALSE` specifying if an element's text should
#'   wrap onto new lines, defaults to `NULL`, in which case the argument
#'   is ignored.
#'
#' @includeRmd man/roxygen/text.Rmd
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     text(spacing = "small"),
#'   "Nam vestibulum accumsan nisl.",
#'   "Fusce commodo."
#' )
#'
#' div(
#'   .style %>%
#'     text(spacing = "large"),
#'   "Suspendisse potenti.",
#'   "Pellentesque tristique imperdiet tortor."
#' )
#'
#' tags$button(
#'   .style %>%
#'     text(wrap = FALSE),
#'   "Aliquam feugiat tellus ut neque."
#' )
#'
text <- function(x, color = NULL, align = NULL, spacing = NULL,
                 decoration = NULL, wrap = NULL) {
  assert_subject(x)

  cls <- prefix(
    "text",
    text_color(color),
    text_align(align),
    text_spacing(spacing),
    text_decoration(decoration),
    text_wrap(wrap)
  )

  add_class(x, cls)
}
