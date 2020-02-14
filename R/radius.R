#' Border radius
#'
#' The `radius()` function adjusts the border radius of a tag element.
#'
#' @inheritParams background
#'
#' @param round One of `"small"`, `"sm"`, `"medium"`, `"md"`, `"large"`, `"lg"`,
#'   `"circle"`, `"pill"`, or `"none"`, defaults to `"medium"`.
#'
#' @param all One or more of `"top"`, `"t"`, `"right"`, `"r"`, `"bottom"`,
#'   `"b"`, or `"left"`, `"l"`, specifying which sides' corners to round,
#'   defaults to `TRUE`. `TRUE` and `FALSE` may be used as shorthands
#'   for all sides or no sides, respectively.
#'
#' @param top,right,bottom,left One of `TRUE` or `FALSE` specifying if a sides'
#'   radii are adjusted, defaults to `NULL`, in which case the argument is
#'   ignored.
#'
#' @export
radius <- function(x, round = "medium", all = TRUE, top = NULL, right = NULL,
                   bottom = NULL, left = NULL) {
  UseMethod("radius", x)
}

#' @export
radius.cascadess_style_pronoun <- function(x, round = "medium", all = TRUE,
                                           top = NULL, right = NULL,
                                           bottom = NULL, left = NULL) {
  round <- round_rename(round)

  s <- sides(all, top, right, bottom, left)
  s <- if (!is.null(s)) dash("rounded", s)

  pronoun_class_add(x, dash("rounded", round), s)
}

#' @export
radius.cascadess_pronoun_box <- function(x, round = "medium", all = TRUE,
                                         top = NULL, right = NULL,
                                         bottom = NULL, left = NULL) {
  radius(unbox(x), round, all, top, right, bottom, left)
}

#' @export
radius.shiny.tag <- function(x, round = "medium", all = TRUE, top = NULL,
                             right = NULL, bottom = NULL, left = NULL) {
  round <- round_rename(round)

  s <- sides(all, top, right, bottom, left)
  s <- if (!is.null(s)) dash("rounded", s)

  tag_class_add(x, dash("rounded", round), s)
}

#' @export
radius.default <- function(x, round = "medium", all = TRUE, top = NULL,
                           right = NULL, bottom = NULL, left = NULL) {

}

round_rename <- function(x) {
  switch(
    x,
    sm = "sm",
    small = "sm",
    md = "md",
    medium = "md",
    lg = "lg",
    large = "lg",
    circle = "circle",
    pill = "pill",
    none = "0"
  )
}
