margin_values <- chr(
  "-5" = "n5",
  "-4" = "n4",
  "-3" = "n3",
  "-2" = "n2",
  "-1" = "n1",
  "0" = "0",
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5",
  "auto" = "auto"
)

#' Margins
#'
#' The `margin()` function adjusts the outer spacing of a tag element. The
#' margin of a tag element is the space outside and around the tag element, its
#' border, and its content.
#'
#' @param x `r param_subject()`
#'
#' @param ... One of `r rd_list(names(margin_values))` specifying the margin
#'   for one or all sides.
#'
#'   Use [breakpoints] to specify responsive values.
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     margin_left(3) %>%
#'     margin_right(3),
#'   "Mauris mollis tincidunt felis."
#' )
#'
#' div(
#'   .style %>%
#'     margin_horizontal(3),
#'   "Nulla posuere."
#' )
#'
#' div(
#'   .style %>%
#'     margin_right("auto"),
#'   "Sed id ligula quis est convallis tempor."
#' )
#'
margin_all <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "m",
      margin_values,
      ...
    )
  )
}

#' @rdname margin_all
#' @export
margin_top <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "mt",
      margin_values,
      ...
    )
  )
}

#' @rdname margin_all
#' @export
margin_right <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "me",
      margin_values,
      ...
    )
  )
}

#' @rdname margin_all
#' @export
margin_bottom <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "mb",
      margin_values,
      ...
    )
  )
}

#' @rdname margin_all
#' @export
margin_left <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "ms",
      margin_values,
      ...
    )
  )
}

#' @rdname margin_all
#' @export
margin_horizontal <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "mx",
      margin_values,
      ...
    )
  )
}

#' @rdname margin_all
#' @export
margin_vertical <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "my",
      margin_values,
      ...
    )
  )
}
