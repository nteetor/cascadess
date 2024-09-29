shadow_size_values <- chr(
  "small" = "sm",
  "sm" = "sm",
  "medium" = "md",
  "md" = "md",
  "large" = "lg",
  "lg" = "lg",
  "none" = "none"
)

#' Visual depth
#'
#' The `shadow()` function adjusts the box shadow of a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param size A character string specifying the shadow size. One of,
#'
#'   `r rd_bullets(names(shadow_size_values))`
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     shadow("small")
#' )
#'
#' div(
#'   .style %>%
#'     border_color(theme_warning()) %>%
#'     background_color(theme_warning()) %>%
#'     shadow("medium")
#' )
#'
shadow <- function(x, size) {
  add_class(
    x,
    compose_class(
      "shadow",
      shadow_size_values,
      size
    )
  )
}
