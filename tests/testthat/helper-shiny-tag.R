is_shiny_tag <- function(x) {
  inherits_any(x, "shiny.tag")
}

expect_shiny_tag <- function(object) {
  # 1. Capture object and label
  act <- quasi_label(rlang::enquo(object), arg = "object")

  # 2. Call expect()
  found <- class(act$val)[1]

  expect(
    is_shiny_tag(act$val),
    sprintf('%s is %s, not shiny tag.', act$lab, found)
  )

  # 3. Invisibly return the value
  invisible(act$val)
}
