dash <- function(...) {
  args <- compact(list(...))

  if (length(args) != dots_n(...)) {
    return(NULL)
  }

  exec(paste, !!!args, sep = "-")
}

sides <- function(all, top, right, bottom, left) {
  s <- list(top, right, bottom, left)
  true <- which_true(s)
  null <- which_null(s)

  if (all(null | !true)) {
    return(NULL)
  }

  possible <- c("top", "right", "bottom", "left")

  if (is_false(all)) {
    possible[true]
  } else if (is_true(all)) {
    possible[null | true]
  } else {
    all <- grep(paste0("^", all, collapse = "|"), possible, value = TRUE)

    unique(if (any(true)) c(all, possible[true]) else all)
  }
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
