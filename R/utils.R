dash <- function(...) {
  paste(..., sep = "-", collapse = "-")
}

list3 <- function(...) {
  lapply(quos(..., .named = TRUE), eval_tidy, env = caller_env())
}
