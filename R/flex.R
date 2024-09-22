flex_direction_values <- chr(
  row = "row",
  column = "column"
)

flex_justify_values <- chr(
  start = "start",
  end = "end",
  center = "center",
  between = "between",
  around = "around",
  evenly = "evenly"
)

flex_align_values <- chr(
  start = "start",
  end = "end",
  center = "center",
  baseline = "baseline",
  stretch = "stretch"
)

flex_gap_values <- chr(
  `0` = "0",
  `1` = "1",
  `2` = "2",
  `3` = "3",
  `4` = "4",
  `5` = "5"
)

flex_wrap_values <- chr(
  "TRUE" = "wrap",
  "FALSE" = "nowrap"
)

flex_content_values <- chr(
  start = "start",
  end = "end",
  center = "center",
  between = "between",
  around = "around",
  stretch = "stretch"
)

#' Flex
#'
#' @description
#'
#' The `flex_*()` functions adjust the flexbox layout of an element. The flexbox
#' layout is incredibly powerful and allows centering of elements vertically and
#' horizontally, automatic adjustment of space between and around child
#' elements, and more.  To use flexbox make sure to include `flex_display()`
#' when styling an element. For finer control over an element's display see
#' [display()].
#'
#' Direct child elements of a flex box container are automatically considered
#' flex items and may be adjusted with the `item_*()` functions, see
#' [item_align()].
#'
#' @param x `r param_subject()`
#'
#' @param ... Name-value pairs.
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     flex_display() %>%
#'     flex_justify("end"),
#'   div("Item 1"),
#'   div("Item 2"),
#'   div("Item 3")
#' )
#'
flex_display <- function(x) {
  add_class(
    x,
    compose_class(
      "d",
      display_type_values,
      "flex"
    )
  )
}

#' @rdname flex_display
#' @export
flex_direction <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "flex",
      flex_direction_values,
      ...
    )
  )
}

#' @rdname flex_display
#' @export
flex_justify <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "justify-content",
      flex_justify_values,
      ...
    )
  )
}

#' @rdname flex_display
#' @export
flex_align <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "align-items",
      flex_align_values,
      ...
    )
  )
}

#' @rdname flex_display
#' @export
flex_gap <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "gap",
      flex_gap_values,
      ...
    )
  )
}

#' @rdname flex_display
#' @export
flex_wrap <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "flex",
      flex_wrap_values,
      ...
    )
  )
}

#' @rdname flex_display
#' @export
flex_content <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "align-content",
      flex_content_values,
      ...
    )
  )
}

item_align_values <- chr(
  start = "start",
  end = "end",
  center = "center",
  baseline = "baseline",
  stretch = "stretch"
)

item_order_values <- chr(
  "0" = "0",
  "1" = "1",
  "2" = "2",
  "3" = "3",
  "4" = "4",
  "5" = "5",
  "first" = "first",
  "last" = "last"
)

item_fill_values <- chr(
  "TRUE" = "fill"
)

item_grow_values <- chr(
  "TRUE" = "grow-1",
  "FALSE" = "grow-0"
)

item_shrink_values <- chr(
  "TRUE" = "shrink-1",
  "FALSE" = "shrink-0"
)

#' Flex items
#'
#' The `item_*()` functions adjust a flex item element. Unlike the `flex_*()`
#' utilities, which adjust the flexbox layout of a parent flexbox container, the
#' `item_*()` functions are applied to individual flex items, child elements of
#' a flexbox container. A flex item may be realigned, reordered, expanded, or
#' shrunk.
#'
#' @param x `r param_subject()`
#'
#' @param ... Name-value pairs.
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     flex_display(),
#'   div(
#'     .style %>%
#'       item_order("last"),
#'     "First"
#'   ),
#'   div(
#'     "Second"
#'   ),
#'   div(
#'     "Third"
#'   )
#' )
#'
item_align <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "align-self",
      item_align_values,
      ...
    )
  )
}

#' @rdname item_align
#' @export
item_fill <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "flex",
      item_fill_values,
      ...
    )
  )
}

#' @rdname item_align
#' @export
item_grow <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "flex",
      item_grow_values,
      ...
    )
  )
}

#' @rdname item_align
#' @export
item_shrink <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "flex",
      item_shrink_values,
      ...
    )
  )
}

#' @rdname item_align
#' @export
item_order <- function(x, ...) {
  add_class(
    x,
    compose_class(
      "order",
      item_order_values,
      ...
    )
  )
}
