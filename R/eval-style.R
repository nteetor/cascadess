style_peek_pronoun <- function(env) {
  env[[".__cascadess__style_pronoun__."]]
}

style_poke_pronoun <- function(env, pronoun) {
  env_bind(env, ".__cascadess__style_pronoun__." = pronoun)
}

style_del_pronoun <- function(env) {
  env_unbind(env, ".__cascadess__style_pronoun__.")
}

style_get_pronoun <- function() {
  frames <- lapply(seq_len(sys.nframe()), caller_env)
  envs <- frames[!duplicated(frames)]
  pronouns <- compact(lapply(envs, style_peek_pronoun))

  if (length(pronouns) == 0) {
    return(NULL)
  }

  pronouns[[1]]
}

style_get_prefix <- function(pronoun, ns) {
  default <- sprintf("cas-%s", ns)

  if (is_scalar_atomic(pronoun[[ns]])) {
    return(pronoun[[ns]])
  }

  default
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
.style <- structure(list(), class = "cascadess_style_pronoun")

#' Style pronoun contexts
#'
#' The `with_style()` function allows overloading the `.style` pronoun.
#'
#' @param pronoun A call to `style_pronoun()`.
#'
#' @param expr An expression.
#'
#' @keywords internal
#' @export
local_style <- function(..., .env = caller_env()) {
  pronoun <- child_env(empty_env(), ...)
  prev <- style_peek_pronoun(.env)

  style_poke_pronoun(.env, pronoun)

  unbind <- call2(style_del_pronoun, .env)
  local_exit(!!unbind, .env)

  invisible(prev)
}

#' @rdname local_style
#' @export
with_style <- function(.expr, ...) {
  env <- env(caller_env())
  local_style(..., .env = env)

  eval_bare(enexpr(.expr), env)
}
