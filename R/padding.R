padding_values <- chr(
  "0" = "0",
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5"
)

#' Padding
#'
#' The `padding_*()` functions adjust a tag element's padding, the space between
#' the element's border and its content or child elements.
#'
#' @param x `r param_subject()`
#'
#' @param ... A number specifying the amount of padding. One of,
#'
#'   `r rd_bullets(names(padding_values))`
#'
#'   Use name-value pairs to specify [breakpoints].
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
#'     border_color(theme_primary()) %>%
#'     padding_all(2),
#'   "A padded element"
#' )
#'
padding_all <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "p",
      padding_values,
      ...
    )
  )
}

#' @rdname padding_all
#' @export
padding_top <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "pt",
      padding_values,
      ...
    )
  )
}

#' @rdname padding_all
#' @export
padding_right <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "pe",
      padding_values,
      ...
    )
  )
}

#' @rdname padding_all
#' @export
padding_bottom <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "pb",
      padding_values,
      ...
    )
  )
}

#' @rdname padding_all
#' @export
padding_left <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "ps",
      padding_values,
      ...
    )
  )
}

#' @rdname padding_all
#' @export
padding_horizontal <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "px",
      padding_values,
      ...
    )
  )
}

#' @rdname padding_all
#' @export
padding_vertical <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "py",
      padding_values,
      ...
    )
  )
}
