border_include_values <- chr(
  "TRUE" = "",
  "FALSE" = "0"
)

#' Borders
#'
#' The `border_all()` and `border_<side>()` functions adjust a tag element's
#' borders.
#'
#' @param x `r param_subject()`
#'
#' @param include One of `r rd_list(names(border_include_values))`, defaults to
#'   `r rd_default(border_all, include)`.
#'
#' @family border
#' @export
#'
#' @include theme.R
#' @examples
#'
#' library(htmltools)
#'
#' h3(
#'   .style %>%
#'     border_bottom() %>%
#'     border_color(theme_warning()) %>%
#'     text_color(theme_warning()),
#'   "Warning"
#' )
#'
border_all <- function(x, include = TRUE) {
  add_class(
    x,
    compose_class(
      "border",
      border_include_values,
      include
    )
  )
}

#' @rdname border_all
#' @export
border_top <- function(x, include = TRUE) {
  add_class(
    x,
    compose_class(
      "border-top",
      border_include_values,
      include
    )
  )
}

#' @rdname border_all
#' @export
border_right <- function(x, include = TRUE) {
  add_class(
    x,
    compose_class(
      "border-right",
      border_include_values,
      include
    )
  )
}

#' @rdname border_all
#' @export
border_bottom <- function(x, include = TRUE) {
  add_class(
    x,
    compose_class(
      "border-bottom",
      border_include_values,
      include
    )
  )
}

#' @rdname border_all
#' @export
border_left <- function(x, include = TRUE) {
  add_class(
    x,
    compose_class(
      "border-left",
      border_include_values,
      include
    )
  )
}
