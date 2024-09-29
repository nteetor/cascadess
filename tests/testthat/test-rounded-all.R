test_that("adds classes", {
  x <- div(.style %>% rounded_all(1))
  y <- div(.style %>% rounded_all(3))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "rounded-1")
  expect_html_class(y, "rounded-3")
})
