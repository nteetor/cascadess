html_class_margin <- function(all, top, right, bottom, left) {
  all <- responsive(all)
  top <- responsive(top)
  right <- responsive(right)
  bottom <- responsive(bottom)
  left <- responsive(left)

  classes <- c(
    html_class("m", all),
    html_class("mt", top),
    html_class("mr", right),
    html_class("mb", bottom),
    html_class("ml", left))

  gsub("--(\\d)", "-n\\1", classes)
}

#' Margins
#'
#' The `margin()` function adjusts the outer spacing of a tag element. The
#' margin of a tag element is the space outside and around the tag element, its
#' border, and its content.
#'
#' @inheritParams background
#'
#' @param all A [responsive] argument.
#'
#'   One of `-5:5` or `"auto"` specifying a margin for all sides of the tag
#'   element, defaults to `NULL`, in which case the argument is ignored. 0
#'   removes all outer space, 5 adds the most space, and negative values will
#'   consume space and pull the element in that direction.
#'
#' @param top,right,bottom,left A [responsive] argument.
#'
#'   One of `-5:5` or `"auto"` specifying a margin for the respective side of
#'   the tag element. 0 removes all outer space, 5 adds the most space, and
#'   negative values will consume space and pull the element in that direction.
#'
# @includeRmd man/roxygen/margin.Rmd
#'
#' @export
margin <- function(x, all = NULL, top = NULL, right = NULL, bottom = NULL,
                   left = NULL) {
  UseMethod("margin", x)
}

#' @export
margin.cascadess_style_pronoun <- function(x, all = NULL, top = NULL,
                                           right = NULL, bottom = NULL,
                                           left = NULL) {
  pronoun_add_class(x, html_class_margin(all, top, right, bottom, left))
}

#' @export
margin.rlang_box_splice <- function(x, all = NULL, top = NULL, right = NULL,
                                    bottom = NULL, left = NULL) {
  pronoun_box_add_class(x, html_class_margin(all, top, right, bottom, left))
}

#' @export
margin.shiny.tag <- function(x, all = NULL, top = NULL, right = NULL,
                             bottom = NULL, left = NULL) {
  tag_add_class(x, html_class_margin(all, top, right, bottom, left))
}

#' @export
margin.default <- function(x, all = NULL, top = NULL, right = NULL,
                           bottom = NULL, left = NULL) {

}
