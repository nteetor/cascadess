#' Flexbox
#'
#' @description
#'
#' The `flexbox()` function adjusts the flex box layout of an element. To use
#' the flex box layout the element must also use the flex display, see
#' [display()]. The flex box layout is incredibly powerful and allows centering
#' of elements vertically or horizontally, automatic adjustment of space between
#' or around child elements, and more.
#'
#' Direct child elements of a flex box container are automatically considered
#' flex items and may be adjusted with [flex()].
#'
#' @inheritParams background
#'
#' @param direction A [responsive] argument.
#'
#'   One of `"row"` or `"column"` specifying the main axis of flex items,
#'   defaults to `"row"`.
#'
#'   If `"row"`, the main axis is horizontal and items are arranged from left to
#'   right. The cross axis is the vertical.
#'
#'   If `"column"`, the main axis is vertical and items are arranged from top to
#'   bottom. The cross axis is the horizontal.
#'
#' @param justify A [responsive] argument.
#'
#'   One of `"start"`, `"end"`, `"center"`, `"between"`, or `"around"`
#'   specifying how items are arranged on the main axis, defaults to `"start"`.
#'
#'   If `"between"` or `"around"`, items are arranged by evenly sharing the
#'   space between or around the items.
#'
#' @param align A [responsive] argument.
#'
#'   One of `"start"`, `"end"`, `"center"`, `"baseline"`, or `"stretch"`
#'   specifying how items are arranged on the cross axis, defaults to
#'   `"stretch"`.
#'
#' @param wrap A [responsive] argument.
#'
#'   One of `TRUE` or `FALSE` specifying if items are forced onto one line
#'   or allowed to wrap onto multiple lines, defaults to `FALSE`.
#'
# @includeRmd man/roxygen/flex.Rmd
#'
#' @export
flexbox <- function(x, direction = "row", justify = "start", align = "stretch",
                    wrap = FALSE) {
  UseMethod("flexbox", x)
}

#' @export
flexbox.cascadess_style_pronoun <- function(x, direction = "row",
                                            justify = "start",
                                            align = "stretch", wrap = FALSE) {
  d <- dash("flex", responsive(direction))
  j <- dash("justify-content", responsive(justify))
  a <- dash("align-items", responsive(align))
  w <- dash("flex", responsive(ifelse(wrap, "wrap", "nowrap")))

  pronoun_class_add(x, d, j, a, w)
}

#' @export
flexbox.cascadess_pronoun_box <- function(x, direction = "row",
                                          justify = "start",
                                          align = "stretch", wrap = FALSE) {
  flexbox(unbox(x), direction, justify, align, wrap)
}

#' @export
flexbox.shiny.tag <- function(x, direction = "row", justify = "start",
                              align = "stretch", wrap = FALSE) {
  d <- dash("flex", responsive(direction))
  j <- dash("justify-content", responsive(justify))
  a <- dash("align-items", responsive(align))
  w <- dash("flex", responsive(ifelse(wrap, "wrap", "nowrap")))

  tag_class_add(x, d, j, a, w)
}

#' @export
flexbox.default <- function(x, direction = "row", justify = "start",
                            align = NULL, wrap = NULL) {

}

#' Flex items
#'
#' The `flex()` function adjusts a flex item. Unlike [flexbox()], which adjusts
#' the flex box layout through the flex container element, `flex()` is used to
#' change specific flex items. A flex item may be reordered, expanded, or
#' shrunk.
#'
#' @inheritParams background
#'
#' @param align A [responsive] argument.
#'
#'   One of `"auto"`, `"start"`, `"end"`, `"center"`, `"baseline"`, or
#'   `"stretch"` specifying how to align the item on the cross axis, defaults
#'   to `"stretch"`. Overrides the [flexbox()] `align` argument.
#'
#' @param order A [responsive] argument.
#'
#'   One of \Sexpr[results=rd,stage=render]{rd_num_lst(0:7)} specifying the
#'   order of the item, defaults to `1`. Items of the same order are then sorted
#'   by their source code order.
#'
#' @param grow A [responsive] argument.
#'
#'   One of `TRUE` or `FALSE`, defaults to `NULL`, in which case the argument
#'   is ignored.
#'
#' @param shrink A [responsive] argument.
#'
#'   One of `TRUE` or `FALSE`, defaults to `NULL`, in which case the argument
#'   is ignored.
#'
#' @export
flex <- function(x, align = "stretch", order = 1, grow = NULL, shrink = NULL) {
  UseMethod("flex", x)
}

#' @export
flex.cascadess_style_pronoun <- function(x, align = "stretch", order = 1,
                                         grow = NULL, shrink = NULL) {
  a <- dash("align-self", responsive(align))
  o <- dash("order", responsive(order))
  g <- dash("flex-grow", responsive(grow))
  s <- dash("flex-shrink", responsive(shrink))

  pronoun_class_add(x, a, o, g, s)
}

#' @export
flex.cascadess_pronoun_box <- function(x, align = "stretch", order = 1,
                                       grow = NULL, shrink = NULL) {
  flex(unbox(x), align, order, grow, shrink)
}

#' @export
flex.shiny.tag <- function(x, align = "stretch", order = 1, grow = NULL,
                           shrink = NULL) {
  a <- dash("align-self", responsive(align))
  o <- dash("order", responsive(order))
  g <- dash("flex-grow", responsive(grow))
  s <- dash("flex-shrink", responsive(shrink))

  tag_class_add(x, a, o, g, s)
}

#' @export
flex.default <- function(x, align = "stretch", order = 1, grow = NULL,
                         shrink = NULL) {

}
