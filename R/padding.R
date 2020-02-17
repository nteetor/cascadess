html_class_padding <- function(all, top, right, bottom, left) {
  all <- responsive(all)
  top <- responsive(top)
  right <- responsive(right)
  bottom <- responsive(bottom)
  left <- responsive(left)

  classes <- c(
    html_class("p", all),
    html_class("pt", top),
    html_class("pr", right),
    html_class("pb", bottom),
    html_class("pl", left))

  gsub("--(\\d)", "-n\\1", classes)
}

#' Padding
#'
#' The `padding()` function adjusts the inner spacing of a tag element. The
#' padding of a tag element is the space between the tag element's border and
#' its content or child elements.
#'
#' @inheritParams background
#'
#' @param all A [responsive] argument.
#'
#'   One of `1:5` specifying a padding for all sides of the tag element,
#'   defaults to `NULL`, in which case the argument is ignored. 0 removes all
#'   inner space and 5 adds the most space.
#'
#' @param top,right,bottom,left A [responsive] argument.
#'
#'   One of `1:5` specifying a padding for the element's respective side,
#'   defaults to `NULL`, in which case the argument is ignored. 0 removes all
#'   inner space and 5 adds the most space.
#'
# @includeRmd man/roxygen/margin.Rmd
#'
#' @export
padding <- function(x, all = NULL, top = NULL, right = NULL, bottom = NULL,
                    left = NULL) {
  UseMethod("padding", x)
}

#' @export
padding.cascadess_style_pronoun <- function(x, all = NULL, top = NULL,
                                            right = NULL, bottom = NULL,
                                            left = NULL) {
  pronoun_class_add(x, html_class_padding(all, top, right, bottom, left))
}

#' @export
padding.rlang_box_splice <- function(x, all = NULL, top = NULL, right = NULL,
                                     bottom = NULL, left = NULL) {
  pronoun_box_class_add(x, html_class_padding(all, top, right, bottom, left))
}

#' @export
padding.shiny.tag <- function(x, all = NULL, top = NULL, right = NULL,
                              bottom = NULL, left = NULL) {
  tag_class_add(x, html_class_padding(all, top, right, bottom, left))
}

#' @export
padding.default <- function(x, all = NULL, top = NULL, right = NULL,
                            bottom = NULL, left = NULL) {

}
