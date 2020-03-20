context("assert_subject()")

test_that("tag elements are allowed", {
  expect_silent(assert_subject(div()))
})

test_that("style pronoun is allowed", {
  expect_silent(assert_subject(.style))
})

test_that("spliced pronoun is allowed", {
  expect_silent(assert_subject(rlang::splice(.style)))
})

test_that("length zero argument", {
  expect_error(assert_subject(NULL), "cannot apply style")
  expect_error(assert_subject(numeric(0)), "cannot apply style")
})

test_that("NA argument", {
  expect_error(assert_subject(NA), "cannot apply style")
})
