test_that("adds classes", {
  x <- div(.style %>% padding_bottom(3))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "pb-3")
})
