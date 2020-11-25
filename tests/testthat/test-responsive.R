context("responsive args")

test_that("rename 'default' and 'xs'", {
  expect_named(responsive_rename(c(default = NA)), "")
  expect_named(responsive_rename(c(default = NA, xl = 1)), c("", "xl"))
  expect_named(responsive_rename(c(xs = NA)), "")
})

test_that("errors on invalid breakpoints", {
  expect_error(responsive(c(zz = 1, xxl = 2)))
})
