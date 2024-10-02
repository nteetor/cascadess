overflow_behavior_values <- chr(
  "auto" = "auto",
  "hidden" = "hidden",
  "FALSE" = "hidden",
  "visible" = "visible",
  "scroll" = "scroll",
  "TRUE" = "scroll"
)

#' Content overflow
#'
#' The `overflow_*()` functions adjust how an element's content scrolls.
#'
#' @param x `r param_subject()`
#'
#' @param behavior A character string specifying the content overflow behavior. One of,
#'
#'   `r rd_bullets(names(overflow_behavior_values))`
#'
#' @returns `r returns_same("x")`
#'
#' @export
#'
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     width_relative(25) %>%
#'     overflow_horizontal("hidden"),
#'   "We've really got to drag on this sentence because if we don't",
#'   "then the example does not demonstrat the utility of the overflow",
#'   "function"
#' )
#'
overflow_all <- function(x, behavior) {
  add_class(
    x,
    compose_class(
      "overflow",
      overflow_behavior_values,
      behavior
    )
  )
}

#' @rdname overflow_all
#' @export
overflow_horizontal <- function(x, behavior) {
  add_class(
    x,
    compose_class(
      "overflow-x",
      overflow_behavior_values,
      behavior
    )
  )
}

#' @rdname overflow_all
#' @export
overflow_vertical <- function(x, behavior) {
  add_class(
    x,
    compose_class(
      "overflow-y",
      overflow_behavior_values,
      behavior
    )
  )
}
