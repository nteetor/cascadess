text_selection_values <- chr(
  all = "all",
  auto = "auto",
  none = "none"
)

#' Text selection
#'
#' The `text_selection()` function adjusts how text is selected within a tag
#' element when the user clicks on the element.
#'
#' @param x `r param_subject()`
#'
#' @param select A character string specifying how text is selected. One of,
#'
#'   `r rd_bullets(names(text_selection_values))`
#'
#' @returns `r returns_same("x")`
#'
#' @family text utilities
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     text_selection("all"),
#'   "Click to select all the text"
#' )
#'
text_selection <- function(x, select) {
  add_class(
    x,
    compose_class(
      "user-select",
      text_selection_values,
      select
    )
  )
}
