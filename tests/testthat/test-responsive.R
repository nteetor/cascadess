context("responsive args")

test_that("shortcuts", {
  expect_named(responsive_rename(c(md = NA)), "md")
  expect_named(responsive_rename(c(lg = NA)), "lg")
})

test_that("full names", {
  expect_named(responsive_rename(c(default = NA)), "")
  expect_named(responsive_rename(c(xs = NA)), "")

  expect_named(responsive_rename(c(small = NA)), "sm")
  expect_named(responsive_rename(c(sm = NA)), "sm")

  expect_named(responsive_rename(c(medium = NA)), "md")
  expect_named(responsive_rename(c(md = NA)), "md")

  expect_named(responsive_rename(c(large = NA)), "lg")
  expect_named(responsive_rename(c(lg = NA)), "lg")

  expect_named(responsive_rename(c(`extra-large` = NA)), "xl")
  expect_named(responsive_rename(c(xl = NA)), "xl")
})
