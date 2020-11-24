gap_size_ <- c(
  `0` = 0,
  `1` = 1,
  `2` = 2,
  `3` = 3,
  `4` = 4,
  `5` = 5
)

gap_size <- function(size) {
  responsive(pick(size, from = gap_size_))
}

#' Grid element spacing
#'
#' The `gap()` function is used to space child elements of a parent tag element
#' with `display("grid")`. Instead of specifying a margin for each child element
#' a gap may be specified for the parent element. This function will have no
#' effect on element's without display set to `"grid"`.
#'
#' @inheritParams background
#'
#' @param size A [responsive] argument.
#'
#'   One of `r rd_list(gap_size_)` specifying the amount of gap space.
#'
#' @details
#'
#' Internet Explorer does not support the grid display layout.
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     display("grid") %>%
#'     gap(2),
#'   div("Child 1"),
#'   div("Child 2"),
#'   div("Child 3")
#' )
#'
gap <- function(x, size) {
  assert_subject(x)

  classes <- prefix(
    "gap",
    gap_size(size)
  )

  add_class(x, classes)
}
