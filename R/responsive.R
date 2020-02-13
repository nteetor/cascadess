responsive_rename <- function(x) {
  names(x) <- vapply(names2(x), function(n) {
    switch(
      n,
      sm = "sm",
      small = "sm",
      md = "md",
      medium = "md",
      lg = "lg",
      large = "lg",
      xl = "xl",
      `extra-large` = "xl",
      default = "",
      ""
    )
  }, character(1))
  x
}

responsive_prefix <- function(x) {
  names <- names2(x)
  non_empty <- names != ""
  names[non_empty] <- sprintf("%s-", names[non_empty])
  names
}

responsive_concat <- function(x) {
  paste0(responsive_prefix(x), x)
}

responsive <- function(x) {
  responsive_concat(responsive_rename(x))
}
