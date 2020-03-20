context("print(.style)")

test_that("masked print", {
  expect_output(print(.style), "^<pronoun>$")

  # strange covr problem
  ## skip_if(!exists("print.cascadess_style_pronoun"))
  ## expect_output(
  ##   print(.style %>% display("block")),
  ##   "^<spliced>\\n<pronoun>$"
  ## )
})

test_that("masked str", {
  expect_output(str(.style), "^<pronoun>$")
})
