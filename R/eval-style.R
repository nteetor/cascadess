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

pronoun_class_add <- function(x, ...) {
  x$class <- paste(c(x$class, ...), collapse = " ")
  splice(x)
}

pronoun_box_class_add <- function(x, ...) {
  x <- unbox(x)

  if (!is_style_pronoun(x)) {
    abort(
      "expecting style pronoun",
      trace = trace_back(bottom = caller_env())
    )
  }

  pronoun_class_add(x, ...)
}

tag_class_add <- function(x, ...) {
  x$attribs$class <- paste(c(x$attribs$class, ...), collapse = " ")
  x
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

#' Style pronoun contexts
#'
#' The `with_style_pronoun()` allows overloading the `.style` pronoun.
#'
#' @param pronoun A call to `style_pronoun()`.
#'
#' @param expr An expression.
#'
#' @keywords internal
#' @export
with_style_pronoun <- function(pronoun, expr) {
  force(pronoun)

  caller <- caller_env()
  quo <- enquo(expr)

  e <- new_environment(list(.style = pronoun), parent = caller)
  mask <- new_data_mask(e)

  eval_tidy(quo, mask, e)
}
