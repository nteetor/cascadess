#' Padding
#'
#' The `padding` utility changes the inner spacing of a tag element. The padding
#' of a tag element is the space between the tag element's border and its
#' content or child elements. All arguments default to `NULL`, in which case
#' they are ignored.
#'
#' @inheritParams affix
#'
#' @param all,top,right,bottom,left A [responsive] argument. One of `0:5` or
#'   `"auto"` specifying padding for one or more sides of the tag element. 0
#'   removes all inner space and 5 adds the most space.
#'
# @includeRmd man/roxygen/margin.Rmd
#'
#' @family design utilities
#' @export
padding <- function(x, all = NULL, top = NULL, right = NULL, bottom = NULL,
                    left = NULL) {
  UseMethod("padding", x)
}

#' @export
padding.cascadess_style_pronoun <- function(x, all = NULL, top = NULL,
                                            right = NULL, bottom = NULL,
                                            left = NULL) {
  NextMethod("padding", x)
}

#' @export
padding.rlang_box_splice <- function(x, all = NULL, top = NULL, right = NULL,
                                     bottom = NULL, left = NULL) {
  NextMethod("padding", unbox(x))
}

#' @export
padding.shiny.tag <- function(x, all = NULL, top = NULL, right = NULL,
                              bottom = NULL, left = NULL) {
  tag_class_add(x, c(
    padding_all(all),
    padding_top(top),
    padding_right(right),
    padding_bottom(bottom),
    padding_left(left)
  ))
}

#' @export
padding.default <- function(x, all = NULL, top = NULL, right = NULL,
                            bottom = NULL, left = NULL) {
  tag_class_add(x, c(
    padding_all(all),
    padding_top(top),
    padding_right(right),
    padding_bottom(bottom),
    padding_left(left)
  ))
}

padding_top <- function(top) {
  if (is.null(top)) {
    return(NULL)
  }

  top <- resp_construct(top, c(0:5, "auto"))

  sprintf("p%s", resp_classes(top, "t"))
}

padding_right <- function(right) {
  if (is.null(right)) {
    return(NULL)
  }

  right <- resp_construct(right, c(0:5, "auto"))

  sprintf("p%s", resp_classes(right, "r"))
}

padding_bottom <- function(bottom) {
  if (is.null(bottom)) {
    return(NULL)
  }

  bottom <- resp_construct(bottom, c(0:5, "auto"))

  sprintf("p%s", resp_classes(bottom, "b"))
}

padding_left <- function(left) {
  if (is.null(left)) {
    return(NULL)
  }

  left <- resp_construct(left, c(0:5, "auto"))

  sprintf("p%s", resp_classes(left, "l"))
}

padding_all <- function(all) {
  if (is.null(all)) {
    return(NULL)
  }

  all <- resp_construct(all, c(0:5, "auto"))

  resp_classes(all, "p")
}
