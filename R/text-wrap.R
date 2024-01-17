text_wrap_values <- chr(
  "TRUE" = "wrap",
  "FALSE" = "nowrap"
)

#' Text wrap
#'
#' Text wrap
#'
#' @param x `r param_subject()`
#'
#' @param wrap One of `r rd_list(names(text_wrap_values))`.
#'
#' @family text utilities
#' @export
#'
#' @examples
#'
#' .style %>%
#'   text_wrap(TRUE)
#'
#' .style %>%
#'   text_wrap(FALSE)
#'
text_wrap <- function(x, wrap) {
  add_class(
    x,
    compose_class(
      "text",
      text_wrap_values,
      wrap
    )
  )
}
