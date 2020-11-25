context("gap()")

test_that("`size` argument throws error", {
  expect_error(gap(div(), size = 100))
  expect_error(gap(div(), size = "hello"))
})

test_that("`size` argument adds class", {
  expect_html_class(gap(div(), size = 2), "cas-gap-2")
})

test_that("gap prefix may be overloaded", {
  local_style(gap = "hair")
  expect_html_class(gap(div(), size = 4), "hair-4")
})
