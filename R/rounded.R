rounded_size_values <- chr(
  "0" = "0",
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5",
  "circle" = "circle",
  "pill" = "pill"
)

#' Element corners
#'
#' The `rounded_*()` functions adjust the corners of a tag element.
#'
#' @param x `r param_subject()`
#'
#' @param size A number or character string specifying a corner size. One of,
#'
#'   `r rd_bullets(names(rounded_size_values))`
#'
#'   Use `0` to remove rounded corners.
#'
#' @returns `r returns_same("x")`
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     rounded_all(3)
#' )
#'
#' div(
#'   .style %>%
#'     rounded_left("pill")
#' )
#'
rounded_all <- function(x, size) {
  add_class(
    x,
    compose_class(
      "rounded",
      rounded_size_values,
      size
    )
  )
}

#' @rdname rounded_all
#' @export
rounded_top <- function(x, size) {
  add_class(
    x,
    compose_class(
      "rounded-top",
      rounded_size_values,
      size
    )
  )
}

#' @rdname rounded_all
#' @export
rounded_right <- function(x, size) {
  add_class(
    x,
    compose_class(
      "rounded-right",
      rounded_size_values,
      size
    )
  )
}

#' @rdname rounded_all
#' @export
rounded_bottom <- function(x, size) {
  add_class(
    x,
    compose_class(
      "rounded-bottom",
      rounded_size_values,
      size
    )
  )
}

#' @rdname rounded_all
#' @export
rounded_left <- function(x, size) {
  add_class(
    x,
    compose_class(
      "rounded-left",
      rounded_size_values,
      size
    )
  )
}
