is_splice_box <- function(x) {
  is_box(x, "rlang_box_splice")
}

expect_is_splice_box <- function(object) {
  # 1. Capture object and label
  act <- quasi_label(enquo(object), arg = "object")

  # 2. Call expect()
  expect(
    is_splice_box(act$val),
    sprintf("%s is not a splice box.", act$lab)
  )

  # 3. Invisibly return the value
  invisible(act$val)
}

expect_is_spliced <- function(object) {
  act <- quasi_label(enquo(object), arg = "object")

  expect(
    is_spliced(act$val),
    sprintf("%s is not spliced.", act$lab)
  )

  invisible(act$val)
}
