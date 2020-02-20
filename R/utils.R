named_list <- function(...) {
  lapply(quos(..., .named = TRUE), eval_tidy, env = caller_env())
}

is_truthy <- function(x) {
  !(!nzchar(x) || is_na(x) || is_null(x) || is_false(x))
}

are_truthy <- function(x) {
  vapply(x, is_truthy, logical(1))
}

are_null <- function(x) {
  vapply(x, is_null, logical(1))
}

compact <- function(x) {
  x[!are_null(x)]
}

html_class <- function(...) {
  args <- list(...)

  if (any(are_null(args))) {
    return(NULL)
  }

  args <- compact(args)
  pieces <- args[are_truthy(args)]

  exec(paste, !!!pieces, sep = "-")
}

pick <- function(from, x) {
  if (is_null(x)) {
    return(NULL)
  }

  x <- as.character(x)

  picked <- from[x]

  if (any(are_na(picked))) {
    invalid <- setdiff(x, names(from))[1]
    abortf("invalid value %s", invalid)
  }

  if (is_named(x)) {
    names(picked) <- names(x)
  }

  picked
}

caller_trace <- function(n = 1) {
  trace_back(bottom = caller_env(n + 1))
}

abortf <- function(s, ..., trace = caller_trace(2)) {
  args <- lapply(c(...), function(x) bold$red(x))

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

is_style_pronoun <- function(x) {
  inherits_only(x, "cascadess_style_pronoun")
}

is_pronoun_box <- function(x) {
  is_box(x) && is_spliced(x) && is_style_pronoun(unbox(x))
}

is_tag <- function(x) {
  inherits_any(x, "shiny.tag")
}

pronoun_add_class <- function(x, ...) {
  x$class <- paste(c(x$class, ...), collapse = " ")
  splice(x)
}

pronoun_box_add_class <- function(x, ...) {
  x <- unbox(x)

  if (!is_style_pronoun(x)) {
    abort(
      "expecting style pronoun",
      trace = trace_back(bottom = caller_env())
    )
  }

  pronoun_add_class(x, ...)
}

tag_add_class <- function(x, ...) {
  x$attribs$class <- paste(c(x$attribs$class, ...), collapse = " ")
  x
}

html_class_fn <- function(generic, default, ...) {
  args <- enexprs(...)

  formals <- rep_along(args, list(missing_arg()))
  names(formals) <- names(args)

  formals <- pairlist2(x = , !!!formals)

  classes <- lapply(names(args), function(nm) {
    call2("pick", args[[nm]], sym(nm))
  })

  html <- call2("html_class", quote(prefix), !!!classes)

  new_function(formals, bquote({
    pronoun <- style_get_pronoun()
    prefix <- style_get_prefix(pronoun, .(generic), .(default))

    class <- .(html)

    if (is_style_pronoun(x)) {
      pronoun_add_class(x, class)
    } else if (is_pronoun_box(x)) {
      pronoun_box_add_class(x, class)
    } else if (is_tag(x)) {
      tag_add_class(x, class)
    }
  }), caller_env())
}
