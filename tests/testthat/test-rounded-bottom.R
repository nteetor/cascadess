test_that("adds classes", {
  x <- div(.style %>% rounded_bottom())
  y <- div(.style %>% rounded_bottom(3))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "rounded-bottom-1")
  expect_html_class(y, "rounded-bottom-3")
})
