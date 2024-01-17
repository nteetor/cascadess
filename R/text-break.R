text_break_values <- chr(
  "TRUE" = "break"
)

#' Text break
#'
#' Text break.
#'
#' @param x `r param_subject()`
#'
#' @family text utilities
#' @export
#'
#' @examples
#'
#' .style %>%
#'   text_break()
#'
text_break <- function(x) {
  add_class(
    x,
    compose_class(
      "text",
      text_break_values,
      TRUE
    )
  )
}
