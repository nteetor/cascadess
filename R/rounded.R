rounded_all_radius_values <- chr(
  "0" = "0",
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5",
  "circle" = "circle",
  "pill" = "pill"
)

#' Rounding element corners
#'
#' Description of "rounded()".
#'
#' @param x "r param_subject()"
#'
#' @param radius Radius param.
#'
#' @export
rounded_all <- function(x, radius = 1) {
  add_class(
    x,
    compose_class(
      "rounded",
      rounded_all_radius_values
    )
  )
}

rounded_top_radius_values <- chr(
  "0" = "top-0",
  "1" = "top-1",
  "2" = "top-2",
  "3" = "top-3",
  "4" = "top-4",
  "5" = "top-5",
  "circle" = "top-circle",
  "pill" = "top-pill"
)

#' @rdname rounded_all
#' @export
rounded_top <- function(x, radius = 1) {
  add_class(
    x,
    compose_class(
      "rounded",
      rounded_top_radius_values,
      radius
    )
  )
}

rounded_right_radius_values <- chr(
  "0" = "right-0",
  "1" = "right-1",
  "2" = "right-2",
  "3" = "right-3",
  "4" = "right-4",
  "5" = "right-5",
  "circle" = "right-circle",
  "pill" = "right-pill"
)

#' @rdname rounded_all
#' @export
rounded_right <- function(x, radius = 1) {
  add_class(
    x,
    compose_class(
      "rounded",
      rounded_right_radius_values,
      radius
    )
  )
}

rounded_bottom_radius_values <- chr(
  "0" = "bottom-0",
  "1" = "bottom-1",
  "2" = "bottom-2",
  "3" = "bottom-3",
  "4" = "bottom-4",
  "5" = "bottom-5",
  "circle" = "bottom-circle",
  "pill" = "bottom-pill"
)


#' @rdname rounded_all
#' @export
rounded_bottom <- function(x, radius = 1) {
  add_class(
    x,
    compose_class(
      "rounded",
      rounded_bottom_radius_values,
      radius
    )
  )
}

rounded_left_radius_values <- chr(
  "0" = "left-0",
  "1" = "left-1",
  "2" = "left-2",
  "3" = "left-3",
  "4" = "left-4",
  "5" = "left-5",
  "circle" = "left-circle",
  "pill" = "left-pill"
)

#' @rdname rounded_all
#' @export
rounded_left <- function(x, radius = 1) {
  add_class(
    x,
    compose_class(
      "rounded",
      rounded_left_radius_values,
      radius
    )
  )
}
