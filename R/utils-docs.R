## nocov start

rd_quote <- function(x) {
  paste0("\"", x, "\"")
}

rd_code <- function(x) {
  paste0("\\code{", x, "}")
}

rd_list <- function(x, last = "or") {
  x <- vapply(x, function(i) {
    if (is_na(suppressWarnings(as.numeric(i)))) {
      rd_code(rd_quote(i))
    } else {
      rd_code(i)
    }
  }, character(1))

  if (!is_truthy(last)) {
    return(paste(x, collapse = ", "))
  }

  if (length(x) == 1) {
    x
  } else if (length(x) == 2) {
    paste(x[[1]], last, x[[2]])
  } else {
    len <- length(x)

    sprintf(
      "%s, %s %s",
      paste(x[seq_len(len - 1)], collapse = ", "), last, x[[len]]
    )
  }
}

## nocov end
