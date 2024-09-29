possible_breakpoints <- chr("", "xs", "sm", "md", "lg", "xl", "xxl")

assert_breakpoints <- function(values, call = caller_env()) {
  breakpoints <- names2(values)

  if (!all(breakpoints %in% possible_breakpoints)) {
    invalid_breakpoints <- setdiff(breakpoints, possible_breakpoints)
    quoted_breakpoints <- paste0("`", invalid_breakpoints, "`")

    pluralize <- length(invalid_breakpoints) > 1

    msg_fmt <- if (pluralize) {
      "invalid breakpoint names %s"
    } else {
      "invalid breakpoint name %s"
    }

    msg <- sprintf(msg_fmt, collapse(quoted_breakpoints, ", "))

    abort(msg, call = call)
  }
}

sort_breakpoints <- function(values) {
  breakpoints <- names2(values)
  sorted_breakpoints <- intersect(possible_breakpoints, breakpoints)
  values[sorted_breakpoints]
}

rename_breakpoints <- function(values) {
  names2(values)[names2(values) == "xs"] <- ""
  values
}

prepend_breakpoints <- function(values) {
  if (length(values) == 0) {
    return(NULL)
  }

  if (all(names2(values) == "")) {
    return(values)
  }

  values <- rename_breakpoints(sort_breakpoints(values))

  if (is_logical(values)) {
    return(values)
  }

  breakpoints <- names2(values)

  paste0(breakpoints, ifelse(breakpoints != "", "-", ""), values)
}

#' Different values for different browser sizes
#'
#' @description
#'
#' Many functions in cascadess accept multiple name-value pairs via `...`. Each
#' argument's name specifies a breakpoint, a browser width. At this breakpoint,
#' at this browser width, the argument value will supercede any values specified
#' for smaller breakpoints, smaller browser widths.
#'
#' Breakpoints are browser or device widths and enable developing responsive web
#' applications. A responsive web application will adjust its layout and style
#' to accomodate the size of a user's browser or device. A web application with
#' a responsive design allows users to constructively interact from a browser,
#' phone, tablet, or other device.
#'
#' ## Available breakpoints
#'
#' **extra small (unnamed or xs)**
#'
#' Specify an unnamed value for this breakpoint or use the name `xs`. This is
#' the only breakpoint which may be unnamed. However, when specifying multiple
#' breakpoints the best practice is to use the `xs` name.
#'
#' The value and style are always applied unless superceded by a larger
#' breakpoint.
#'
#' **small (sm)**
#'
#' Specify a value for this breakpoint using the name `sm`.
#'
#' The value and style are applied when the viewport is at least 576px wide,
#' think landscape phone.
#'
#' **medium (md)**
#'
#' Specify a value for this breakpoint using the name `md`.
#'
#' The value and style are applied when the viewport is at least 768px wide,
#' think tablet.
#'
#' **large (lg)**
#'
#' Specify a value for this breakpoint using the name `lg`.
#'
#' The value and style are applied when the viewport is at least 992px wide,
#' think laptop or smaller desktops.
#'
#' **extra large (xl)**
#'
#' Specify a value for this breakpoint using the name `xl`.
#'
#' The value and style are applied when the viewport is at least 1200px wide,
#' think large desktops.
#'
#' **extra extra large (xxl)**
#'
#' Specify a value for this breakpoint using the name `xxl`.
#'
#' The value and style are applied when the viewport is at least 1400px wide,
#' think larger desktops.
#'
#' ## Further reading
#'
#' These breakpoints are chosen by and are a part of the Bootstrap library
#' cascadess is built upon. The Bootstrap website goes into greater detail on
#' their design, construction, and usage, see
#' <https://getbootstrap.com/docs/5.3/layout/breakpoints/>.
#'
#' @name breakpoints
#' @examples
#'
#' .style %>%
#'   flex_display() %>%
#'   flex_direction(xs = "column", lg = "row")
#'
#' .style %>%
#'   flex_display() %>%
#'   flex_gap(xs = 0, md = 2, xl = 4)
#'
NULL
