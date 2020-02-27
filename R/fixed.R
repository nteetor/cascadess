fixed_position_ <- c(
  top = "top",
  bottom = "bottom"
)

fixed_position <- function(position) {
  pick(position, from = fixed_position_)
}

#' Fixed position elements
#'
#' The `fixed()` function affixes an element to the top or bottom of the
#' page. Because of their nature fixed elements may cover up other elements on
#' the page. Use [padding()] or [margin()] to adjust any covered elements.
#'
#' @inheritParams background
#'
#' @param position One of `r rd_list(names(fixed_position_))` specifying the
#'   where to fix the element on the page.
#'
#' @export
fixed <- function(x, position) {
  assert_subject(x)

  cls <- prefix(
    "fixed",
    fixed_position(position)
  )

  add_class(x, cls)
}
