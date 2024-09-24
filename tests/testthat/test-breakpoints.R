test_that("assert_breakpoints", {
  expect_error(assert_breakpoints(c(large = 1)), "invalid breakpoint name `large`")
})

test_that("prepend_breakpoints", {
  expect_null(prepend_breakpoints(c()))
  expect_equal(1:4, prepend_breakpoints(1:4))
  expect_equal(c(sm = TRUE), prepend_breakpoints(c(sm = TRUE)))
})
