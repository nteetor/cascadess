test_that("adds classes", {
  x <- div(.style %>% padding_vertical(3))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "py-3")
})
