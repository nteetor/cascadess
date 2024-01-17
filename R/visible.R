visible_show_values <- chr(
  "TRUE" = "visible",
  "FALSE" = "invisible"
)

#' Element visibility
#'
#' The `visible()` function changes the visibility of a tag element. An
#' invisible element is both visually hidden and is also hidden from screen
#' readers.
#'
#' @param x `r param_subject()`
#'
#' @param show `r rd_list(names(visible_show_values))`.
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div("I am hidden") %>%
#'   visible(FALSE)
#'
visible <- function(x, show) {
  add_class(
    x,
    compose_class(
      "",
      visible_show_values,
      show
    )
  )
}
