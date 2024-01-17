test_that("tag elements are allowed", {
  expect_silent(assert_subject(div()))
})

test_that("style pronoun is allowed", {
  expect_silent(assert_subject(.style))
})

test_that("spliced pronoun is allowed", {
  expect_silent(assert_subject(rlang::splice(.style)))
})

test_that("length zero argument throws error", {
  msg <- "subject must be the `.style` pronoun or tag element"

  expect_error(assert_subject(NULL), msg)
  expect_error(assert_subject(numeric(0)), msg)
})

test_that("NA argument throws error", {
  msg <- "subject must be the `.style` pronoun or tag element"

  expect_error(assert_subject(NA), msg)
})
