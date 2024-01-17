## nocov start

param_subject <- function() {
  "A tag element or [.style] pronoun."
}

rd_dquote <- function(x) {
  paste0("\"", x, "\"")
}

rd_code <- function(x) {
  paste0("`", x, "`")
}

rd_format <- function(values) {
  vapply(values, function(v) {
    if (grepl("^[0-9]+$", v)) {
      rd_code(v)
    } else if (grepl("^(TRUE|FALSE)$", v)) {
      rd_code(v)
    } else {
      rd_code(rd_dquote(v))
    }
  }, character(1))
}

rd_list <- function(values, sep = "or") {
  n_vals <- length(values)
  formatted_vals <- rd_format(values)

  if (n_vals == 1) {
    formatted_vals
  } else if (n_vals == 2) {
    paste(formatted_vals[[1]], sep, formatted_vals[[2]])
  } else {
    end <- paste(sep, formatted_vals[n_vals])

    collapse(c(formatted_vals[-n_vals], end), ", ")
  }
}

rd_bullets <- function(values) {
  formatted_vals <- rd_format(values)

  collapse(paste("*", formatted_vals), "\n")
}

rd_default <- function(func, arg) {
  arg_name <- as_string(enexpr(arg))
  func_fmls <- fn_fmls(func)

  stopifnot(arg_name %in% names(func_fmls))

  rd_format(func_fmls[[arg_name]])
}

## nocov end
