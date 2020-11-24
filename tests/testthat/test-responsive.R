context("responsive args")

test_that("shortcuts", {
  expect_named(responsive_rename(c(md = NA)), "md")
  expect_named(responsive_rename(c(lg = NA)), "lg")
})

test_that("full names", {
  expect_named(responsive_rename(c(default = NA)), "")
  expect_named(responsive_rename(c(xs = NA)), "")

  expect_named(responsive_rename(c(sm = NA)), "sm")

  expect_named(responsive_rename(c(md = NA)), "md")

  expect_named(responsive_rename(c(lg = NA)), "lg")

  expect_named(responsive_rename(c(xl = NA)), "xl")

  expect_named(responsive_rename(c(xxl = NA)), "xxl")
})
