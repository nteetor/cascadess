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
#' The `.style` pronoun allows you to define styles for a tag element within the
#' context of the element. Without the `.style` pronoun tag styles are applied
#' outside and after constructing a tag element.
#'
#' ```R
#' div("") %>%
#'   background_color("primary") %>%
#'   display("flex") %>%
#'   flex_justify("between")
#' ```
#'
#' However, once the content of a tag element grows to more than a few lines,
#' associating the element's styles with the element becomes less and less
#' intuitive. In these situations, make use of the `.style` pronoun.
#'
#' ```R
#' div(
#'   .style %>%
#'     border_color("primary") %>%
#'     text_color("primary"),
#'   p("First paragraph"),
#'   p("Second paragraph")
#' )
#' ```
#'
#' @section Prefixing:
#'
#' Complex components such as `shiny::radioButtons()` or
#' `yonder::listGroupInput()` may need a non-standard prefix for the CSS
#' classes applied by cascadess' functions.
#'
#' @name style-pronoun
#' @format NULL
#' @export
.style <- new_pronoun()
