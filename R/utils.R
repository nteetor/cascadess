named_list <- function(...) {
  lapply(quos(..., .named = TRUE), eval_tidy, env = caller_env())
}

is_truthy <- function(x) {
  !(!nzchar(x) || is_na(x) || is_null(x) || is_false(x))
}

are_truthy <- function(x) {
  vapply(x, is_truthy, logical(1))
}

are_null <- function(x) {
  vapply(x, is_null, logical(1))
}

compact <- function(x) {
  x[!are_null(x)]
}

dash <- function(...) {
  args <- list(...)

  if (any(are_null(args))) {
    return(NULL)
  }

  args <- compact(args)
  pieces <- args[are_truthy(args)]

  pieces <- c("cas", pieces)

  exec(paste, !!!pieces, sep = "-")
}

html_class <- dash

pick <- function(from, x) {
  if (is_null(x)) {
    return(NULL)
  }

  x <- as.character(x)

  picked <- from[x]

  if (any(are_na(picked))) {
    invalid <- setdiff(x, names(from))[1]
    abortf("invalid value %s", invalid)
  }

  if (is_named(x)) {
    names(picked) <- names(x)
  }

  picked
}

caller_trace <- function(n = 1) {
  trace_back(bottom = caller_env(n + 1))
}

abortf <- function(s, ..., trace = caller_trace(2)) {
  args <- lapply(c(...), function(x) bold$red(x))

  msg <- exec(sprintf, s, !!!args)

  abort(msg, trace = trace)
}
