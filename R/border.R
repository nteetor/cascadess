#' Border colors
#'
#' Use `border()` to add or modify tag element borders.
#'
#' @inheritParams affix
#'
# @eval param_color("border")
#'
#' @param sides One or more of `"top"`, `"right"`, `"bottom"`, `"left"`, or
#'   `"all"` or `"none"` specifying which sides to add a border to, defaults to
#'   `"all"`. Specifying `"none"` will remove the element's borders.
#'
#' @param round One or more of `"top"`, `"right"`, `"bottom"`, `"left"`,
#'   `"all"`, or `"none"` specifying how to round the border(s) of a tag
#'   element, defaults to `NULL`, in which case the argument is ignored.
#'
# @includeRmd man/roxygen/border.Rmd
#'
#' @family design utilities
#' @export
border <- function(x, color = NULL, sides = "all", round = NULL) {
  UseMethod("border", x)
}

#' @export
border.cascadess_style_pronoun <- function(x, color = NULL, sides = "all",
                                           round = NULL) {
  style_class_add(x, c(
    border_sides(sides),
    border_color(color),
    border_round(round)
  ))
}

#' @export
border.rlang_box_splice <- function(x, color = NULL, sides = "all",
                                    round = NULL) {
  border(unbox(x), color, sides, round)
}

#' @export
border.shiny.tag <- function(x, color = NULL, sides = "all", round = NULL) {
  tag_class_add(x, c(
    border_sides(sides),
    border_color(color),
    border_round(round)
  ))
}

#' @export
border.default <- function(x, color = NULL, sides = "all", round = NULL) {
  tag_class_add(x, c(
    border_sides(sides),
    border_color(color),
    border_round(round)
  ))
}

border_sides <- function(sides) {
  if (is.null(sides)) {
    return(NULL)
  }

  if ("all" %in% sides) {
    "border"
  } else if ("none" %in% sides) {
    "border-0"
  } else {
    sprintf("border-%s", sides)
  }
}

border_color <- function(color) {
  if (is.null(color)) {
    return(NULL)
  }

  sprintf("border-%s", color)
}

border_round <- function(round) {
  if (is.null(round)) {
    return(NULL)
  }

  if ("all" %in% round) {
    "rounded"
  } else if ("none" %in% round) {
    "rounded-0"
  } else {
    sprintf("rounded-%s", round)
  }
}
