position_values <- chr(
  static = "static",
  relative = "relative",
  absolute = "absolute",
  fixed = "fixed",
  sticky = "sticky"
)

position_helper <- function(x, value, env = caller_env()) {
  add_class(
    x,
    compose_class(
      "position",
      position_values,
      value,
      env = env
    )
  )
}

#' Positioning elements
#'
#' The `position_*()` functions adjust set the position of an element.
#'
#' @param x `r param_subject()`
#'
#' @family position
#' @export
#'
#' @examples
#'
#' .style %>%
#'   position_absolute() %>%
#'   position_top(50)
#'
#' .style %>%
#'   position_relative() %>%
#'   position_left(50) %>%
#'   position_translate()
#'
position_absolute <- function(x) {
  position_helper(x, "absolute")
}

#' @rdname position_absolute
#' @export
position_static <- function(x) {
  position_helper(x, "static")
}

#' @rdname position_absolute
#' @export
position_relative <- function(x) {
  position_helper(x, "relative")
}

#' @rdname position_absolute
#' @export
position_fixed <- function(x) {
  position_helper(x, "fixed")
}

#' @rdname position_absolute
#' @export
position_sticky <- function(x) {
  position_helper(x, "sticky")
}

position_at_values <- chr(
  "0" = "0",
  "50" = "50",
  "100" = "100"
)

#' Arranging positioned elements
#'
#' Arrange elemnents when positioning then.
#'
#' @param x `r param_subject()`
#'
#' @param at One of the following character strings,
#'
#'   `r rd_list(names(position_at_values))`
#'
#' @family position
#' @export
position_top <- function(x, at) {
  add_class(
    x,
    compose_class(
      "top",
      position_at_values,
      at
    )
  )
}

#' @rdname position_top
#' @export
position_left <- function(x, at) {
  add_class(
    x,
    compose_class(
      "left",
      position_at_values,
      at
    )
  )
}

#' @rdname position_top
#' @export
position_bottom <- function(x, at) {
  add_class(
    x,
    compose_class(
      "bottom",
      position_at_values,
      at
    )
  )
}

#' @rdname position_top
#' @export
position_right <- function(x, at) {
  add_class(
    x,
    compose_class(
      "right",
      position_at_values,
      at
    )
  )
}

position_translate_values <- chr(
  middle = "middle"
)

#' Centering positioned elements
#'
#' `position_translate()`
#'
#' @param x `r param_subject()`
#'
#' @family position
#' @export
position_translate <- function(x) {
  add_class(
    x,
    compose_class(
      "translate",
      position_translate_values,
      "middle"
    )
  )
}
