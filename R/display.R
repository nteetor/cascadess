display_type_ <- c(
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
#' @export
display <- function(x, type) {
  assert_subject(x)

  cls <- prefix(
    "display",
    display_type(type)
  )

  add_class(x, cls)
}
