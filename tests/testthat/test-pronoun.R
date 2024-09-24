test_that("constructor", {
  x <- new_pronoun()

  expect_s3_class(x, "cascadess_style_pronoun")
})

test_that("print", {
  x <- new_pronoun()

  expect_output(print(x), "<pronoun>")
})

test_that("str", {
  x <- new_pronoun()

  expect_output(str(x), "<pronoun>")
})
