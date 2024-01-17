border_width_values <- chr(
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5"
)

#' Border width
#'
#' Border width description.
#'
#' @param x `r param_subject()`
#'
#' @param width A number between `r rd_code(min(border_width_values))` and
#'   `r rd_code(max(border_width_values))`.
#'
#' @family border
#' @export
#'
#' @examples
#'
#' .style %>%
#'   border_all() %>%
#'   border_width(3)
#'
border_width <- function(x, width) {
  add_class(
    x,
    compose_class(
      "border",
      border_width_values,
      width
    )
  )
}
