test_that("rename 'xs' breakpoint", {
  expect_named(rename_breakpoints(c(xs = NA)), "")
  expect_named(rename_breakpoints(c(xs = NA, xl = 1)), c("", "xl"))
  expect_named(rename_breakpoints(c(xs = NA)), "")
})
