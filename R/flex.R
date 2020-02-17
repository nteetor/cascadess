flexbox_direction <- c(
  row = "row",
  column = "column"
)

flexbox_justify <- c(
  start = "start",
  end = "end",
  center = "center",
  around = "around",
  between = "between"
)

flexbox_align <- c(
  start = "start",
  end = "end",
  center = "center",
  baseline = "baseline",
  stretch = "stretch"
)

html_class_flexbox <- function(direction, justify, align, wrap) {
  direction <- responsive(direction)
  justify <- responsive(justify)
  align <- responsive(align)
  wrap <- responsive(wrap)

  c(html_class("flex", pick(flexbox_direction, direction)),
    html_class("justify-content", pick(flexbox_justify, justify)),
    html_class("align-items", pick(flexbox_align, align)),
    html_class("flex", ifelse(wrap, "wrap", "nowrap")))
}

flex_align <- c(
  auto = "auto",
  start = "start",
  end = "end",
  center = "center",
  baseline = "baseline",
  stretch = "stretch"
)

flex_order <- c(
  `0` = 0,
  `1` = 1,
  `2` = 2,
  `3` = 3,
  `4` = 4,
  `5` = 5,
  `6` = 6,
  `7` = 7
)

flex_grow <- c(

)

flex_shrink <- c(

)

html_class_flex <- function(align, order, grow, shrink) {
  align <- responsive(align)
  order <- responsive(order)
  grow <- responsive(grow)
  shrink <- responsive(shrink)

  c(html_class("align-self", pick(flex_align, align)),
    html_class("order", pick(flex_order, order)),
    html_class("flex-grow", ifelse(grow, 1, 0)),
    html_class("flex-shrink", ifelse(shrink, 1, 0)))
}

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
#'   One of `r rd_chr_lst(names(flexbox_direction))` specifying the main axis of
#'   flex items, defaults to `"row"`.
#'
#'   If `"row"`, the main axis is horizontal and items are arranged from left to
#'   right. The cross axis is the vertical.
#'
#'   If `"column"`, the main axis is vertical and items are arranged from top to
#'   bottom. The cross axis is the horizontal.
#'
#' @param justify A [responsive] argument.
#'
#'   One of `r rd_chr_lst(names(flexbox_justify))` specifying how items are
#'   arranged on the main axis, defaults to `"start"`.
#'
#'   If `"between"` or `"around"`, items are arranged by evenly sharing the
#'   space between or around the items.
#'
#' @param align A [responsive] argument.
#'
#'   One of `r rd_chr_lst(names(flexbox_align))` specifying how items are
#'   arranged on the cross axis, defaults to `"stretch"`.
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
  pronoun_class_add(x, html_class_flexbox(direction, justify, align, wrap))
}

#' @export
flexbox.rlang_box_splice <- function(x, direction = "row", justify = "start",
                                     align = "stretch", wrap = FALSE) {
  pronoun_box_class_add(x, html_class_flexbox(direction, justify, align, wrap))
}

#' @export
flexbox.shiny.tag <- function(x, direction = "row", justify = "start",
                              align = "stretch", wrap = FALSE) {
  tag_class_add(x, html_class_flexbox(direction, justify, align, wrap))
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
#'   One of `r rd_chr_lst(names(flex_align))` specifying how to align the item on the
#'   cross axis, defaults to `"stretch"`. Overrides the [flexbox()] `align`
#'   argument.
#'
#' @param order A [responsive] argument.
#'
#'   One of `r rd_num_lst(0:7)` specifying the order of the item, defaults to
#'   `1`. Items of the same order are then sorted by their source code order.
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
  pronoun_class_add(x, html_class_flex(align, order, grow, shrink))
}

#' @export
flex.rlang_box_splice <- function(x, align = "stretch", order = 1,
                                       grow = NULL, shrink = NULL) {
  pronoun_box_class_add(x, html_class_flex(align, order, grow, shrink))
}

#' @export
flex.shiny.tag <- function(x, align = "stretch", order = 1, grow = NULL,
                           shrink = NULL) {
  tag_class_add(x, html_class_flex(align, order, grow, shrink))
}

#' @export
flex.default <- function(x, align = "stretch", order = 1, grow = NULL,
                         shrink = NULL) {

}
