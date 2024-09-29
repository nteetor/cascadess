text_transform_values <- chr(
  uppercase = "uppercase",
  lowercase = "lowercase",
  capitalize = "capitalize"
)

#' Text transformation
#'
#' The `text_transform()` function adjusts the case of text in a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param transform A character string specifying the transform. One of,
#'
#'   `r rd_bullets(names(text_transform_values))`
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
#'     text_transform("lowercase"),
#'   "TRANSFORMED TO LOWERCASE"
#' )
#'
#' div(
#'   .style %>%
#'     text_color(theme_warning()) %>%
#'     text_transform("uppercase"),
#'   "transformed to uppercase"
#' )
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
