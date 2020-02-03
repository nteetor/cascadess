style_pronoun <- function(prefix = NULL) {
  structure(
    class = "cascadess_style_pronoun",
    prefix = prefix,
    list()
  )
}

is_style_pronoun <- function(x) {
  inherits(x, "cascadess_style_pronoun")
}

print.cascadess_style_pronoun <- function(x, ...) {
  cat("<pronoun>\n")
  invisible(x)
}

str.cascadess_style_pronoun <- function(object, ...) {
  cat("<pronoun>\n")
  invisible(NULL)
}

style_prefix <- function(x, default = NULL) {
  (x %@% prefix) %||% default
}

with_style_pronoun <- function(pronoun, expr) {
  qexpr <- enquo(expr)

  mask <- list2(.style = pronoun)

  eval_tidy(qexpr, data = mask)
}

style_dots_eval <- function(..., .style = NULL, .mask = NULL) {
  .style <- .style %||% style_pronoun()
  .mask <- list2(.style = .style, !!!.mask)

  # eval_tidy and with_bindings don't seem to affect ... evaluation
  qargs <- enquos(...)

  flatten_if(lapply(qargs, eval_tidy, data = .mask))
}

css_class_add <- function(x, new) {
  if (is_style_pronoun(x)) {
    if (!is.null(x$class)) {
      new <- paste(x$class, new)
    }

    x$class <- new
  } else {
    if (!is.null(x$attribs$class)) {
      new <- paste(x$attribs$class, new)
    }

    x$attribs$class <- new
  }

  x
}

tag_class_add <- css_class_add

style_class_add <- function(x, new) {
  splice(css_class_add(x, new))
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
#' div(". . .") %>% background("primary") %>% display("flex")
#' ```
#'
#' However, once the content of a tag element grows to more than a few lines,
#' associating the element's styles with the element becomes increasingly
#' unintuitive. In these situations, make use of the `.style` pronoun.
#'
#' ```R
#' div(
#'   .style %>%
#'     border("primary") %>%
#'     font("primary"),
#'   p(". . ."),
#'   p(". . .")
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
.style <- style_pronoun()
