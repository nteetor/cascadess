#' Theme colors
#'
#' Theme color functions.
#'
#' @returns A character string.
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     background_color("primary")
#' )
#'
#' div(
#'   .style %>%
#'     background_color(theme_primary())
#' )
#'
theme_primary <- function() {
  "primary"
}

#' @rdname theme_primary
#' @export
theme_secondary <- function() {
  "secondary"
}

#' @rdname theme_primary
#' @export
theme_success <- function() {
  "success"
}

#' @rdname theme_primary
#' @export
theme_danger <- function() {
  "danger"
}

#' @rdname theme_primary
#' @export
theme_warning <- function() {
  "warning"
}

#' @rdname theme_primary
#' @export
theme_info <- function() {
  "info"
}

#' @rdname theme_primary
#' @export
theme_light <- function() {
  "light"
}

#' @rdname theme_primary
#' @export
theme_dark <- function() {
  "dark"
}
