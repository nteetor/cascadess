flex_direction_ <- c(
  row = "row",
  column = "column"
)

flex_direction <- function(direction) {
  compose(responsive(pick(direction, from = flex_direction_)))
}

flex_justify_ <- c(
  start = "start",
  end = "end",
  center = "center",
  around = "around",
  between = "between"
)

flex_justify <- function(justify) {
  compose("content", responsive(pick(justify, from = flex_justify_)))
}

flex_align_ <- c(
  start = "start",
  end = "end",
  center = "center",
  baseline = "baseline",
  stretch = "stretch"
)

flex_align <- function(align) {
  compose("items", responsive(pick(align, from = flex_align_)))
}

flex_wrap <- function(wrap) {
  responsive(ifelse(wrap, "wrap", "nowrap"))
}

#' Flex
#'
#' @description
#'
#' The `flex()` function adjusts the flex box layout of an element. To use
#' the flex box layout the element must also use the flex display, see
#' [display()]. The flex box layout is incredibly powerful and allows centering
#' of elements vertically or horizontally, automatic adjustment of space between
#' or around child elements, and more.
#'
#' Direct child elements of a flex box container are automatically considered
#' flex items and may be adjusted with [item()].
#'
#' @inheritParams background
#'
#' @param direction A [responsive] argument.
#'
#'   One of `r rd_list(names(flex_direction_))` specifying the main axis of
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
#'   One of `r rd_list(names(flex_justify_))` specifying how items are
#'   arranged on the main axis, defaults to `"start"`.
#'
#'   If `"between"` or `"around"`, items are arranged by evenly sharing the
#'   space between or around the items.
#'
#' @param align A [responsive] argument.
#'
#'   One of `r rd_list(names(flex_align_))` specifying how items are
#'   arranged on the cross axis, defaults to `"stretch"`.
#'
#' @param wrap A [responsive] argument.
#'
#'   One of `TRUE` or `FALSE` specifying if items are forced onto one line
#'   or allowed to wrap onto multiple lines, defaults to `FALSE`.
#'
#' @includeRmd man/roxygen/flex.Rmd
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     display("flex") %>%
#'     flex(justify = "end"),
#'   div("Aliquam posuere."),
#'   div("Lorem ipsum dolor sit amet, consectetuer adipiscing elit.")
#' )
#'
flex <- function(x, direction = "row", justify = "start", align = "stretch",
                 wrap = FALSE) {
  assert_subject(x)

  cls <- prefix(
    "flex",
    flex_direction(direction),
    flex_justify(justify),
    flex_align(align),
    flex_wrap(wrap)
  )

  add_class(x, cls)
}

item_align_ <- c(
  auto = "auto",
  start = "start",
  end = "end",
  center = "center",
  baseline = "baseline",
  stretch = "stretch"
)

item_align <- function(align) {
  compose("self", responsive(pick(align, from = item_align_)))
}

item_order_ <- c(
  `0` = 0,
  `1` = 1,
  `2` = 2,
  `3` = 3,
  `4` = 4,
  `5` = 5,
  `6` = 6,
  `7` = 7
)

item_order <- function(order) {
  compose("order", responsive(pick(order, from = item_order_)))
}

item_grow <- function(grow) {
  responsive(ifelse(grow, 1, 0))
}

item_shrink <- function(shrink) {
  responsive(ifelse(shrink, 1, 0))
}

#' Flex items
#'
#' The `item()` function adjusts a flex item. Unlike [flex()], which adjusts
#' the flex box layout through the flex container element, `item()` is used to
#' change specific flex items. A flex item may be reordered, expanded, or
#' shrunk.
#'
#' @inheritParams background
#'
#' @param align A [responsive] argument.
#'
#'   One of `r rd_list(names(item_align_))` specifying how to align the item
#'   on the cross axis, defaults to `"stretch"`. Overrides the [flex()] `align`
#'   argument.
#'
#' @param order A [responsive] argument.
#'
#'   One of `r rd_list(0:7)` specifying the order of the item, defaults to
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
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     display("flex"),
#'   div(
#'     .style %>%
#'       item(order = 2),
#'     "Second"
#'   ),
#'   div(
#'     "First"
#'   )
#' )
#'
item <- function(x, align = "stretch", order = 1, grow = NULL, shrink = NULL) {
  assert_subject(x)

  cls <- prefix(
    "item",
    item_align(align),
    item_order(order),
    item_grow(grow),
    item_shrink(shrink)
  )

  add_class(x, cls)
}
