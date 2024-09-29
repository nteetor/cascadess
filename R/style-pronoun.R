new_pronoun <- function() {
  structure(
    class = "cascadess_style_pronoun",
    list()
  )
}

#' @export
print.cascadess_style_pronoun <- function(x, ...) {
  cat("<pronoun>\n")
  invisible(x)
}

#' @export
str.cascadess_style_pronoun <- function(object, ...) {
  cat("<pronoun>\n")
  invisible(NULL)
}

#' Style pronoun
#'
#' @description
#'
#' The `.style` pronoun allows defining styles within the function call of a tag
#' element. Without the `.style` pronoun tag element styles are applied outside
#' and after constructing a tag element.
#'
#' ```R
#' div() %>%
#'   background_color("primary") %>%
#'   display("flex") %>%
#'   flex_justify("between")
#' ```
#'
#' Once the content of a tag element grows to more than a few lines, associating
#' the element's styles with the element becomes less and less intuitive. In
#' these situations, make use of the `.style` pronoun.
#'
#' ```R
#' div(
#'   .style %>%
#'     border_color(theme_primary()) %>%
#'     text_color(theme_primary()),
#'   p("Paragraph"),
#'   p("Paragraph"),
#'   p("Paragraph")
#' )
#' ```
#'
#' @name style-pronoun
#'
#' @format NULL
#'
#' @export
.style <- new_pronoun()
