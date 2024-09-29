test_that("adds classes", {
  x <- div(.style %>% rounded_left(1))
  y <- div(.style %>% rounded_left(3))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "rounded-left-1")
  expect_html_class(y, "rounded-left-3")
})
