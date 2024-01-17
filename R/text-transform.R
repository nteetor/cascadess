text_transform_values <- chr(
  uppercase = "uppercase",
  lowercase = "lowercase",
  capitalize = "capitalize"
)

#' Text transformations
#'
#' Text transformation
#'
#' @param x `r param_subject()`
#'
#' @param transform A character string.
#'
#' @family text utilities
#' @export
#'
#' @examples
#'
#' .style %>%
#'   text_transform("lowercase")
#'
#' .style %>%
#'   text_color("warning") %>%
#'   text_transform("uppercase")
#'
text_transform <- function(x, transform) {
  add_class(
    x,
    compose_class(
      "text",
      text_transform_values,
      transform
    )
  )
}
