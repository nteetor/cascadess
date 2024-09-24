test_that("adds classes", {
  x <- div(.style %>% rounded_right())
  y <- div(.style %>% rounded_right(3))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "rounded-right-1")
  expect_html_class(y, "rounded-right-3")
})
