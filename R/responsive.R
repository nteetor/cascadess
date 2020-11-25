responsive_breakpoints <- function() {
  c("", "sm", "md", "lg", "xl", "xxl")
}

responsive_rename <- function(x) {
  n <- names2(x)
  i <- n == "default" | n == "xs"
  possible <- responsive_breakpoints()

  if (any(i)) {
    n[i] <- ""
    names(x) <- n
  }

  if (!all(n %in% possible)) {
    incorrect <- n[!(n %in% possible)]
    abortf("invalid responsive breakpoints %s", incorrect)
  }

  x
}

responsive_sort <- function(x) {
  n <- names2(x)
  breakpoints <- responsive_breakpoints()
  order <- match(breakpoints[breakpoints %in% n], n)
  x[order]
}

responsive_concat <- function(x) {
  n <- names2(x)
  non_empty <- n != ""
  n[non_empty] <- sprintf("%s-", n[non_empty])
  paste0(n, x)
}

responsive <- function(x) {
  if (length(x) == 0) {
    return(NULL)
  }

  responsive_concat(responsive_sort(responsive_rename(x)))
}

#' Understanding responsive arguments
#'
#' @description
#'
#' Responsive arguments allow you to apply styles to tag elements based on the
#' size of the viewport (e.g. browser screen). This is important when developing
#' applications for both web and mobile.  Specifying a single unnamed value the
#' style will be applied for all viewport sizes. Use the names below to apply a
#' style for viewports of that size and larger. For example, specifying
#' `c(default = "center", md = "left")` will apply `"center"` on extra small and
#' small viewports, but for medium, large, and extra large viewports `"left"` is
#' applied. Styles for larger viewports take precedence.
#'
#' A responsive argument may be a single value or a named list. Specifying a
#' single unnamed value is equivalent to specifying `default` or `xs`. The
#' possible values will be described in the specific help page. Most responsive
#' arguments default to `NULL` in which case the argument is ignored.
#'
#' ## Breakpoints
#'
#' **extra small**
#'
#' Use the breakpoint with `default =` or `xs = `.
#'
#' The style is always applied, unless supplanted by a style for any other
#' breakpoint.
#'
#' **small**
#'
#' Use the breakpoint with `sm =`.
#'
#' The style is applied when the viewport is at least 576px wide, think
#' landscape phones.
#'
#' **medium**
#'
#' Use the breakpoint with `md =`.
#'
#' The style is applied when the viewport is at least 768px wide, think tablets.
#'
#' **large**
#'
#' Use the breakpoint with `lg =`.
#'
#' The style is applied when the viewport is at least 992px wide, think laptop
#' or smaller desktops.
#'
#' **extra large**
#'
#' Use the breakpoint with `xl =`.
#'
#' The style is applied when the viewport is at least 1200px wide, think large
#' desktops.
#'
#' **extra extra large**
#'
#' Use the breakpoint with `xxl =`.
#'
#' The style is applied when the viewport is at least 1400px wide, think large
#' desktops.
#'
#' @name responsive
NULL
