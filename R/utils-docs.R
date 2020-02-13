rd_quoted <- function(x) {
  paste0("\\code{\"", x, "\"}", collapse = ", ")
}
