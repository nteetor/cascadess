#' @import rlang
NULL

## nocov start

#' Cascadess' CSS dependencies
#'
#' For CSS styles to be applied, you must include a call to
#' `cascadess_dependencies()` in your UI or use the bslib package.
#'
#' @export
#' @examples
#'
#' \dontrun{
#' library(shiny)
#'
#' shinyApp(
#'   ui = list(
#'     cascadess_dependencies(),
#'     div(
#'       .style %>%
#'         padding_all(3) %>%
#'         background_color(theme_light()),
#'       "Etiam laoreet quam sed arcu."
#'     )
#'   ),
#'   server = function(input, output) {}
#' )
#' }
#'
#' \dontrun{
#' library(shiny)
#' library(bslib)
#'
#' shinyApp(
#'   ui = page(
#'     .style %>%
#'       background_color(theme_primary()),
#'     card(
#'       .style %>%
#'         margin_all(3) %>%
#'         background_color(theme_light()),
#'       "Hello, world!"
#'     )
#'   ),
#'   server = function(input, output) {}
#' )
#' }
#'
cascadess_dependencies <- function() {
  htmltools::htmlDependency(
    name = "cascadess",
    version = utils::packageVersion("cascadess"),
    src = c(
      file = system.file("www/cascadess", package = "cascadess"),
      href = "cascadess/cascadess"
    ),
    stylesheet = "cascadess.min.css"
  )
}

## nocov end
