dash <- function(...) {
  args <- compact(list(...))

  if (length(args) != dots_n(...)) {
    return(NULL)
  }

  exec(paste, !!!args, sep = "-")
}

named_list <- function(...) {
  lapply(quos(..., .named = TRUE), eval_tidy, env = caller_env())
}

which_true <- function(x) {
  vapply(x, is_true, logical(1))
}

which_null <- function(x) {
  vapply(x, is_null, logical(1))
}

compact <- function(x) {
  x[!vapply(x, is_null, logical(1))]
}
