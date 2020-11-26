.global <- new_environment()

pronoun_peek <- function() {
  .global$pronoun
}

pronoun_set <- function(new) {
  env_poke(.global, "pronoun", new)
}

pronoun_get_prefix <- function(ns) {
  pronoun_peek()[[ns]]
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
#' div(". . .") %>% background("primary") %>% display("flex")
#' ```
#'
#' However, once the content of a tag element grows to more than a few lines,
#' associating the element's styles with the element becomes less and less
#' intuitive. In these situations, make use of the `.style` pronoun.
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
.style <- structure(list(), class = "cascadess_style_pronoun")

#' Style pronoun contexts
#'
#' The `local_style()` establishes new prefixes and is used to overload the
#' `.style` pronoun's defaults. The `with_style()` function provides a different
#' approach to achieve the same utility.
#'
#' @param pronoun A call to `style_pronoun()`.
#'
#' @param expr An expression.
#'
#' @keywords internal
#' @export
local_style <- function(..., .env = caller_env()) {
  new_pronoun <- new_environment(list(...))
  prev_pronoun <- pronoun_peek()

  pronoun_set(new_pronoun)

  pronoun_restore <- call2(pronoun_set, prev_pronoun)
  local_exit(!!pronoun_restore, .env)

  invisible(prev_pronoun)
}

#' @rdname local_style
#' @export
with_style <- function(.expr, ...) {
  local_style(..., .env = current_env())

  .expr
}
