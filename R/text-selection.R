text_selection_values <- chr(
  all = "all",
  auto = "auto",
  none = "none"
)

#' Text selection
#'
#' Text selection
#'
#' @param x `r param_subject()`
#'
#' @param select A character string.
#'
#' @family text utilities
#' @export
#'
#' @examples
#'
#' .style %>%
#'   text_selection("all")
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
