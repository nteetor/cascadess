padding_values <- chr(
  "0" = "0",
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5"
)

#' Add space into elements
#'
#' The `padding_*()` functions adjust the inner spacing of a tag element. The
#' padding of a tag element is the space between the element's border and its
#' content or child elements.
#'
#' @param x `r param_subject()`
#'
#' @param ... One of the following,
#'
#'   `r rd_bullets(names(padding_values))`
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
#'     margin_all(2) %>%
#'     padding_all(2) %>%
#'     border_color("primary") %>%
#'     background_color("light"),
#'   "This element has padding"
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
