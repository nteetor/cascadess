test_that("adds classes", {
  x <- div(.style %>% rounded_top(1))
  y <- div(.style %>% rounded_top(3))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "rounded-top-1")
  expect_html_class(y, "rounded-top-3")
})
