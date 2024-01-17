text_decoration_values <- chr(
  "underline" = "underline",
  "strike" = "line-through",
  "none" = "none"
)

#' Text decoration
#'
#' Text decoration
#'
#' @param x `r param_subject()`
#'
#' @param decoration One of the following character strings,
#'
#'   `r rd_bullets(names(text_decoration_values))`
#'
#' @family text utilities
#' @export
#'
#' @examples
#'
#' .style %>%
#'   text_decoration("strike")
#'
#' .style %>%
#'   text_color("danger") %>%
#'   text_decoration("underline")
#'
text_decoration <- function(x, decoration) {
  add_class(
    x,
    compose_class(
      "text",
      text_decoration_values,
      decoration
    )
  )
}
