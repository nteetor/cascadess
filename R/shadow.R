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
#' The `shadow()` function adjusts the box shadow of a tag element. Shadows help
#' distinguish elements or indicate interactivity.
#'
#' @param x `r param_subject()`
#'
#' @param size One of the following,
#'
#'   `r rd_bullets(names(shadow_size_values))`
#'
#' @export
#'
#' @examples
#'
#' .style %>%
#'   shadow("small")
#'
#' .style %>%
#'   border_color(theme_warning()) %>%
#'   background_color(theme_warning()) %>%
#'   shadow("medium")
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
