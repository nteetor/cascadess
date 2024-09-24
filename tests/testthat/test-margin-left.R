test_that("adds classes", {
  x <- div(.style %>% margin_left(3))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "ms-3")
})
