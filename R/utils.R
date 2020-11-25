is_empty_string <- function(x) {
  is_scalar_character(x) && x == ""
}

is_truthy <- function(x) {
  !(is_empty_string(x) ||
      is_na(x) ||
      is_null(x) ||
      is_false(x))
}

are_truthy <- function(x) {
  vapply(x, is_truthy, logical(1))
}

available <- function(x) {
  x[are_truthy(x)]
}

compose <- function(..., .sep = "-") {
  args <- list(...)

  if (is_empty(args) || !all(are_truthy(args))) {
    return(NULL)
  }

  paste(..., sep = .sep)
}

endash <- function(...) {
  paste(..., sep = "-", collapse = " ")
}

prefix <- function(default, ...) {
  args <- available(list(...))
  prefix <- pronoun_get_prefix(default)

  vapply(args, function(arg) endash(prefix, arg), character(1))
}

pick <- function(from, x) {
  if (is_null(x)) {
    return(NULL)
  }

  nms <- names(x)
  x <- as.character(x)
  picked <- from[x]

  if (anyNA(picked)) {
    invalid <- setdiff(x, names(from))[1]
    abortf("invalid value %s", invalid)
  }

  names(picked) <- nms

  picked
}

caller_trace <- function(n = 1) {
  trace_back(bottom = caller_env(n + 1))
}

abortf <- function(s, ..., collapse = ", ", trace = caller_trace(2)) {
  args <- lapply(list(...), function(x) paste0(bold$red(x), collapse = collapse))

  msg <- exec(sprintf, s, !!!args)

  abort(msg, trace = trace)
}

# borrowed from rlang
local_exit <- function(expr, frame = caller_env()) {
  expr <- enexpr(expr)

   if (is_reference(frame, global_env())) {
    is_global_frame <- sys.parents() == 0
    if (sum(is_global_frame) == 1) {
      abort("Can't add an exit event at top-level")
    }
  }

  expr <- call2(on.exit, expr, add = TRUE)
  eval_bare(expr, frame)

  invisible(expr)
}

assert_subject <- function(x) {
  if (!(is_style_pronoun(x) || is_pronoun_box(x) || is_tag(x))) {
    abortf("cannot apply style to a %s", class(x))
  }
}

is_style_pronoun <- function(x) {
  inherits_only(x, "cascadess_style_pronoun")
}

is_pronoun_box <- function(x) {
  is_box(x) && is_spliced(x) && is_style_pronoun(unbox(x))
}

is_tag <- function(x) {
  inherits_any(x, "shiny.tag")
}

add_class <- function(x, ...) {
  if (is_style_pronoun(x)) {
    pronoun_add_class(x, ...)
  } else if (is_pronoun_box(x)) {
    pronoun_box_add_class(x, ...)
  } else if (is_tag(x)) {
    tag_add_class(x, ...)
  }
}

pronoun_add_class <- function(x, ...) {
  x$class <- paste(c(x$class, ...), collapse = " ")
  splice(x)
}

pronoun_box_add_class <- function(x, ...) {
  x <- unbox(x)

  if (!is_style_pronoun(x)) {
    abortf("unexpected pronoun box contents %s", class(x))
  }

  pronoun_add_class(x, ...)
}

tag_add_class <- function(x, ...) {
  x$attribs$class <- paste(c(x$attribs$class, ...), collapse = " ")
  x
}
