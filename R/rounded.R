rounded_radius_values <- chr(
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
#' Round element corners or remove rounded corners.
#'
#' @param x `r param_subject()`
#'
#' @param radius One of `r rd_list(names(rounded_radius_values))`, defaults to
#'   `1`. `0` will remove rounded corners.
#'
#' @export
rounded_all <- function(x, radius = 1) {
  add_class(
    x,
    compose_class(
      "rounded",
      rounded_radius_values,
      radius
    )
  )
}

#' @rdname rounded_all
#' @export
rounded_top <- function(x, radius = 1) {
  add_class(
    x,
    compose_class(
      "rounded-top",
      rounded_radius_values,
      radius
    )
  )
}

#' @rdname rounded_all
#' @export
rounded_right <- function(x, radius = 1) {
  add_class(
    x,
    compose_class(
      "rounded-right",
      rounded_radius_values,
      radius
    )
  )
}

#' @rdname rounded_all
#' @export
rounded_bottom <- function(x, radius = 1) {
  add_class(
    x,
    compose_class(
      "rounded-bottom",
      rounded_radius_values,
      radius
    )
  )
}

#' @rdname rounded_all
#' @export
rounded_left <- function(x, radius = 1) {
  add_class(
    x,
    compose_class(
      "rounded-left",
      rounded_radius_values,
      radius
    )
  )
}
