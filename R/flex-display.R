#' Flex display
#'
#' @description
#'
#' The `flex_*()` functions adjust the flexbox layout of an element. The flexbox
#' layout is incredibly powerful and allows centering of elements vertically and
#' horizontally, automatic adjustment of space between and around child
#' elements, and more. To use flexbox make sure to include `flex_display()` when
#' styling an element. To adjust an element's display at [breakpoints] see
#' [display()].
#'
#' Direct child elements of a flex box container are automatically considered
#' flex items and may be adjusted with the `item_*()` functions, see
#' [item_align()].
#'
#' @details
#'
#' Using flexbox, `flex_display()`, a tag element's child elements are
#' considered **flex items**. The `item_*()` functions are used to modify the
#' bahvior of these flex items. So, while `flex_*()` functions are applied to
#' the parent element, all the `item_*()` functions are applied to the
#' individual child flex item elements.
#'
#' @param x `r param_subject()`
#'
#' @returns `r returns_same("x")`
#'
#' @family flex utilities
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
#'   div("Flex item"),
#'   div("Flex item"),
#'   div("Flex item")
#' )
#'
flex_display <- function(x) {
  add_class(
    x,
    compose_class(
      "d",
      display_values,
      "flex"
    )
  )
}
