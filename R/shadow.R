shadow_size <- c(
  none = "none",
  small = "sm",
  medium = "",
  large = "lg"
)

html_class_shadow <- function(size) {
  html_class("shadow", pick(shadow_size, size))
}

#' Shadows
#'
#' The `shadow()` function adjusts the box shadow of a tag element. By default,
#' many elements include a shadow to help distinguish them or indicate
#' interactivity. [card()]s are element without a default shadow, but in some
#' cases popping out the element from the page may be useful.
#'
#' @inheritParams background
#'
#' @param size One of `r rd_chr_lst(names(shadow_size))` specifying the amount
#'   of shadow added.
#'
# @includeRmd man/roxygen/shadow.Rmd
#'
#' @export
shadow <- function(x, size) {
  UseMethod("shadow", x)
}

#' @export
shadow.cascadess_style_pronoun <- function(x, size) {
  pronoun_add_class(x, html_class_shadow(size))
}

#' @export
shadow.rlang_box_splice <- function(x, size) {
  pronoun_box_add_class(x, html_class_shadow(size))
}

#' @export
shadow.shiny.tag <- function(x, size) {
  tag_add_class(x, html_class_shadow(size))
}

#' @export
shadow.default <- function(x, size) {

}
