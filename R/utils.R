collapse <- function(x, with = " ") {
  paste(x, collapse = with)
}

named_match <- function(choices, values) {
  if (length(values) < 1) {
    return(NULL)
  }

  choices_names <- names(choices)
  values_names <- names(values)

  chr_values <- as.character(values)
  matched_choices <- choices[chr_values]

  names(matched_choices) <- values_names

  matched_choices
}

compose_class <- function(class_prefix, class_values, ...,
                          prefix_values = NULL, env = caller_env()) {
  local_error_call(env)
  breakpoint_pairs <- c(...)

  assert_breakpoints(breakpoint_pairs)
  assert_values(breakpoint_pairs, class_values)
  assert_values(class_prefix, prefix_values)

  matched_pairs <- named_match(class_values, breakpoint_pairs)

  class_suffix <- prepend_breakpoints(matched_pairs)
  prefix <- pronoun_get_prefix(class_prefix)

  message(class_prefix)

  classes <- {
    if (prefix == "") {
      class_suffix
    } else {
      ifelse(
        class_suffix == "",
        prefix,
        paste(prefix, class_suffix, sep = "-")
      )
    }
  }

  collapse(classes)
}

assert_subject <- function(subject, call = caller_env()) {
  if (!(is_style_pronoun(subject) ||
          is_pronoun_box(subject) ||
          is_tag(subject))) {

    abort(
      "subject must be the `.style` pronoun or tag element",
      call = call
    )
  }
}

assert_values <- function(passed_values, values_map, call = caller_env()) {
  if (length(values_map) < 1) {
    return()
  }

  if (is.null(passed_values)) {
    abort("no values specified", call = call)
  }

  passed_values <- unname(passed_values)
  allowed_values <- names2(values_map)

  if (!all(passed_values %in% allowed_values)) {
    invalid_values <- setdiff(passed_values, allowed_values)
    quoted_values <- dQuote(invalid_values, FALSE)

    pluralize <- length(invalid_values) > 1
    msg_fmt <- if (pluralize) "invalid values %s" else "invalid value %s"

    msg <- sprintf(msg_fmt, collapse(quoted_values, ", "))

    abort(msg, call = call)
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
  assert_subject(x)

  if (is_style_pronoun(x)) {
    pronoun_add_class(x, ...)
  } else if (is_pronoun_box(x)) {
    pronoun_box_add_class(x, ...)
  } else if (is_tag(x)) {
    tag_add_class(x, ...)
  }
}

pronoun_add_class <- function(x, ...) {
  x$class <- collapse(c(x$class, ...))
  splice(x)
}

pronoun_box_add_class <- function(x, ...) {
  x <- unbox(x)

  if (!is_style_pronoun(x)) {
    abort("unexpected pronoun box contents")
  }

  pronoun_add_class(x, ...)
}

tag_add_class <- function(x, ...) {
  x$attribs$class <- collapse(c(x$attribs$class, ...))
  x
}
