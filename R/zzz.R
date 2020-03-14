.onLoad <- function(lib, pkg) {
  if (requireNamespace("shiny", quietly = TRUE)) {
    shiny::addResourcePath("cascadess", system.file("www", package = "cascadess"))
  }
}
