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
#' The `margin_*()` functions adjust a tag element's margin, the space outside
#' and around the element, its border, and its content.
#'
#' @param x `r param_subject()`
#'
#' @param ... A number or character string specifying a margin. One or more of,
#'
#'   `r rd_bullets(names(margin_values))`
#'
#'   Use name-value pairs to specify [breakpoints].
#'
#' @returns `r returns_same("x")`
#'
#' @seealso [gap_all()] for flex spacing.
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
#'   "Left margin, right margin"
#' )
#'
#' div(
#'   .style %>%
#'     margin_horizontal(3),
#'   "Shorthand for left and right margins"
#' )
#'
#' div(
#'   .style %>%
#'     margin_horizontal("auto"),
#'   "A centered element."
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
