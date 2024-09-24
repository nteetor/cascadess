test_that("adds classes", {
  x <- div(.style %>% margin_bottom(3))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "mb-3")
})
