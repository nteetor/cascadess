display_type_ <- c(
  inline = "inline",
  `inline-block` = "inline-block",
  block = "block",
  grid = "grid",
  table = "table",
  `table-cell` = "table-cell",
  `table-row` = "table-row",
  flex = "flex",
  `inline-flex` = "inline-flex",
  none = "none"
)

display_type <- function(type) {
  responsive(pick(type, from = display_type_))
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
#'   One of `r rd_list(names(display_type_))`.
#'
#' @includeRmd man/roxygen/display.Rmd
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' # When using flex make sure you specify the flex display.
#' div(
#'   .style %>%
#'     display("flex") %>%
#'     flex(justify = "center"),
#'   "Powerful stuff"
#' )
#'
display <- function(x, type) {
  assert_subject(x)

  class <- prefix(
    display = "d",
    display_type(type)
  )

  add_class(x, class)
}
