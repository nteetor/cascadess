rd_quote <- function(x) {
  paste0("\"", x, "\"")
}

rd_code <- function(x) {
  paste0("\\code{", x, "}")
}

rd_list <- function(x, last = "or") {
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

rd_chr_lst <- function(x) {
  rd_list(rd_code(rd_quote(x)))
}

rd_num_lst <- function(x) {
  rd_list(rd_code(x))
}
