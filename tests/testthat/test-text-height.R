test_that("adds classes", {
  x <- div() %>% text_height("large")
  y <- div() %>% text_height("sm")

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "lh-lg")

  expect_s3_class(y, "shiny.tag")
  expect_html_class(y, "lh-sm")
})
