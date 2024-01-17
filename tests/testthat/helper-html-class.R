expect_html_class <- function(tag, class) {
  # 1. Capture object and label
  act <- quasi_label(rlang::enquo(tag), arg = "tag")

  reg <- paste0("(?:^|\\s)", class, "(?:$|\\s)")

  # 2. Call expect()
  act$class <- act$val$attribs$class
  expect(
    grepl(reg, act$class),
    sprintf(
      '%s has class "%s", could not find "%s".',
      act$lab, act$class, class
    )
  )

  # 3. Invisibly return the value
  invisible(act$val)
}
