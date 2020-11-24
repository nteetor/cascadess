shadow_size_ <- c(
  small = "sm",
  sm = "sm",
  medium = "md",
  md = "md",
  large = "lg",
  lg = "lg",
  none = "none"
)

shadow_size <- function(size) {
  pick(size, from = shadow_size_)
}

#' Shadows
#'
#' The `shadow()` function adjusts the box shadow of a tag element. Shadows help
#' distinguish elements or indicate interactivity.
#'
#' @inheritParams background
#'
#' @param size One of `r rd_list(names(shadow_size_))` specifying the amount
#'   of shadow added.
#'
#' @includeRmd man/roxygen/shadow.Rmd
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     shadow("md"),
#'   "Donec posuere augue in quam."
#' )
#'
#' div(
#'   .style %>%
#'     border("red") %>%
#'     shadow("small"),
#'   "Praesent augue."
#' )
#'
shadow <- function(x, size) {
  assert_subject(x)

  class <- prefix(
    "shadow",
    shadow_size(size)
  )

  add_class(x, class)
}
