#' @import rlang
#' @importFrom crayon
#'   red bold
NULL

#' Cascadess
#'
#' Use cascadess in your shiny app.
#'
#' @export
#' @examples
#'
#' \\dontrun{
#' library(shiny)
#'
#' shinyApp(
#'   ui = list(
#'     cascadess(),
#'     div(
#'       .style %>%
#'         padding(3) %>%
#'         background("indigo") %>%
#'         font("light"),
#'       "Etiam laoreet quam sed arcu."
#'     )
#'   ),
#'   server = function(input, output) {
#'
#'   }
#' )
#' }
#'
cascadess <- function() {
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
